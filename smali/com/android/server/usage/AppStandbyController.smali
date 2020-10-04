.class public Lcom/android/server/usage/AppStandbyController;
.super Ljava/lang/Object;
.source "AppStandbyController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/AppStandbyController$SettingsObserver;,
        Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;,
        Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;,
        Lcom/android/server/usage/AppStandbyController$Injector;,
        Lcom/android/server/usage/AppStandbyController$PackageReceiver;,
        Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;,
        Lcom/android/server/usage/AppStandbyController$Lock;
    }
.end annotation


# static fields
.field static final COMPRESS_TIME:Z = false

.field static final DEBUG:Z

.field private static final DEFAULT_PREDICTION_TIMEOUT:J = 0x2932e00L

.field static final ELAPSED_TIME_THRESHOLDS:[J

.field static final MSG_CHECK_IDLE_STATES:I = 0x5

.field static final MSG_CHECK_PACKAGE_IDLE_STATE:I = 0xb

.field static final MSG_CHECK_PAROLE_TIMEOUT:I = 0x6

.field static final MSG_FORCE_IDLE_STATE:I = 0x4

.field static final MSG_INFORM_LISTENERS:I = 0x3

.field static final MSG_ONE_TIME_CHECK_IDLE_STATES:I = 0xa

.field static final MSG_PAROLE_END_TIMEOUT:I = 0x7

.field static final MSG_PAROLE_STATE_CHANGED:I = 0x9

.field static final MSG_REPORT_CONTENT_PROVIDER_USAGE:I = 0x8

.field static final MSG_REPORT_EXEMPTED_SYNC_START:I = 0xd

.field static final MSG_REPORT_SYNC_SCHEDULED:I = 0xc

.field static final MSG_UPDATE_STABLE_CHARGING:I = 0xe

.field private static final ONE_DAY:J = 0x5265c00L

.field private static final ONE_HOUR:J = 0x36ee80L

.field private static final ONE_MINUTE:J = 0xea60L

.field static final SCREEN_TIME_THRESHOLDS:[J

.field private static final TAG:Ljava/lang/String; = "AppStandbyController"

.field static final THRESHOLD_BUCKETS:[I

.field private static final WAIT_FOR_ADMIN_DATA_TIMEOUT_MS:J = 0x2710L

.field static final sStandbyUpdatePool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActiveAdminApps:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mActiveAdminApps"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

.field volatile mAppIdleEnabled:Z

.field private mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppIdleLock"
        }
    .end annotation
.end field

.field private final mAppIdleLock:Ljava/lang/Object;

.field mAppIdleParoleDurationMillis:J

.field mAppIdleParoleIntervalMillis:J

.field mAppIdleParoleWindowMillis:J

.field mAppIdleTempParoled:Z

.field mAppStandbyElapsedThresholds:[J

.field mAppStandbyScreenThresholds:[J

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mCarrierPrivilegedApps:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppIdleLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCharging:Z

.field mChargingStable:Z

.field mCheckIdleIntervalMillis:J

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceStateReceiver:Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field mExemptedSyncScheduledDozeTimeoutMillis:J

.field mExemptedSyncScheduledNonDozeTimeoutMillis:J

.field mExemptedSyncStartTimeoutMillis:J

.field private final mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

.field private mHaveCarrierPrivilegedApps:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppIdleLock"
        }
    .end annotation
.end field

.field mInitialForegroundServiceStartTimeoutMillis:J

.field mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

.field private mLastAppIdleParoledTime:J

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;

.field mNotificationSeenTimeoutMillis:J

.field private mPackageAccessListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPackageAccessListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPendingInitializeDefaults:Z

.field private volatile mPendingOneTimeCheckIdleStates:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field mPredictionTimeoutMillis:J

.field mStableChargingThresholdMillis:J

.field mStrongUsageTimeoutMillis:J

.field mSyncAdapterTimeoutMillis:J

.field mSystemInteractionTimeoutMillis:J

.field private mSystemServicesReady:Z

.field mSystemUpdateUsageTimeoutMillis:J

.field mUnexemptedSyncScheduledTimeoutMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 135
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    .line 143
    const/4 v0, 0x4

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->SCREEN_TIME_THRESHOLDS:[J

    .line 150
    new-array v1, v0, [J

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->ELAPSED_TIME_THRESHOLDS:[J

    .line 157
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    .line 282
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->sStandbyUpdatePool:Ljava/util/ArrayList;

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        0x36ee80
        0x6ddd00
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x2932e00
        0x5265c00
        0xa4cb800
    .end array-data

    :array_2
    .array-data 4
        0xa
        0x14
        0x1e
        0x28
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 332
    new-instance v0, Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-direct {v0, p1, p2}, Lcom/android/server/usage/AppStandbyController$Injector;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Lcom/android/server/usage/AppStandbyController;-><init>(Lcom/android/server/usage/AppStandbyController$Injector;)V

    .line 333
    return-void
.end method

.method constructor <init>(Lcom/android/server/usage/AppStandbyController$Injector;)V
    .locals 9
    .param p1, "injector"    # Lcom/android/server/usage/AppStandbyController$Injector;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Lcom/android/server/usage/AppStandbyController$Lock;

    invoke-direct {v0}, Lcom/android/server/usage/AppStandbyController$Lock;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    .line 194
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    .line 197
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    .line 218
    sget-object v0, Lcom/android/server/usage/AppStandbyController;->SCREEN_TIME_THRESHOLDS:[J

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    .line 219
    sget-object v0, Lcom/android/server/usage/AppStandbyController;->ELAPSED_TIME_THRESHOLDS:[J

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    .line 1812
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 1814
    new-instance v0, Lcom/android/server/usage/AppStandbyController$1;

    invoke-direct {v0, p0}, Lcom/android/server/usage/AppStandbyController$1;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1823
    new-instance v0, Lcom/android/server/usage/AppStandbyController$2;

    invoke-direct {v0, p0}, Lcom/android/server/usage/AppStandbyController$2;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 336
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 337
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    .line 338
    new-instance v0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;-><init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 339
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 340
    new-instance v0, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;-><init>(Lcom/android/server/usage/AppStandbyController;Lcom/android/server/usage/AppStandbyController$1;)V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mDeviceStateReceiver:Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;

    .line 342
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.os.action.CHARGING"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, "deviceStates":Landroid/content/IntentFilter;
    const-string v2, "android.os.action.DISCHARGING"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 344
    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mDeviceStateReceiver:Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 347
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 348
    :try_start_0
    new-instance v3, Lcom/android/server/usage/AppIdleHistory;

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v4}, Lcom/android/server/usage/AppStandbyController$Injector;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 349
    invoke-virtual {v5}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v5

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/usage/AppIdleHistory;-><init>(Ljava/io/File;J)V

    iput-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 350
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 353
    .local v2, "packageFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    const-string/jumbo v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 358
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/usage/AppStandbyController$PackageReceiver;

    invoke-direct {v4, p0, v1}, Lcom/android/server/usage/AppStandbyController$PackageReceiver;-><init>(Lcom/android/server/usage/AppStandbyController;Lcom/android/server/usage/AppStandbyController$1;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 360
    return-void

    .line 350
    .end local v2    # "packageFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic access$200(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usage/AppStandbyController;

    .line 126
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/usage/AppStandbyController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usage/AppStandbyController;

    .line 126
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->waitForAdminData()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;IIJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usage/AppStandbyController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # J

    .line 126
    invoke-direct/range {p0 .. p5}, Lcom/android/server/usage/AppStandbyController;->checkAndUpdateStandbyState(Ljava/lang/String;IIJ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/usage/AppStandbyController;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usage/AppStandbyController;

    .line 126
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/usage/AppStandbyController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usage/AppStandbyController;

    .line 126
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppIdleHistory;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usage/AppStandbyController;

    .line 126
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/usage/AppStandbyController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usage/AppStandbyController;

    .line 126
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkAndUpdateStandbyState(Ljava/lang/String;IIJ)V
    .locals 25
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I
    .param p4, "elapsedRealtime"    # J

    .line 662
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-wide/from16 v12, p4

    if-gtz p3, :cond_0

    .line 664
    :try_start_0
    iget-object v0, v9, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v10, v11}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    .end local p3    # "uid":I
    .local v0, "uid":I
    move v14, v0

    goto :goto_0

    .line 665
    .end local v0    # "uid":I
    .restart local p3    # "uid":I
    :catch_0
    move-exception v0

    .line 668
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-void

    .line 662
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move/from16 v14, p3

    .line 671
    .end local p3    # "uid":I
    .local v14, "uid":I
    :goto_0
    nop

    .line 672
    invoke-static {v14}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 671
    invoke-virtual {v9, v10, v0, v11}, Lcom/android/server/usage/AppStandbyController;->isAppSpecial(Ljava/lang/String;II)Z

    move-result v15

    .line 674
    .local v15, "isSpecial":Z
    sget-boolean v0, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   Checking idle state for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " special="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStandbyController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_1
    if-eqz v15, :cond_2

    .line 679
    iget-object v8, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v8

    .line 680
    :try_start_1
    iget-object v1, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/4 v6, 0x5

    const/16 v7, 0x100

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJII)V

    .line 682
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 683
    const/4 v6, 0x5

    const/16 v7, 0x100

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    goto/16 :goto_7

    .line 682
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 686
    :cond_2
    iget-object v8, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v8

    .line 687
    :try_start_3
    iget-object v0, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 688
    invoke-virtual {v0, v10, v11, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 690
    .local v0, "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    iget v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 691
    .local v1, "reason":I
    const v2, 0xff00

    and-int v7, v1, v2

    .line 695
    .local v7, "oldMainReason":I
    const/16 v2, 0x400

    if-ne v7, v2, :cond_3

    .line 696
    monitor-exit v8

    return-void

    .line 698
    :cond_3
    iget v2, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    move v6, v2

    .line 699
    .local v6, "oldBucket":I
    const/16 v2, 0xa

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 700
    .local v3, "newBucket":I
    invoke-direct {v9, v0, v12, v13}, Lcom/android/server/usage/AppStandbyController;->predictionTimedOut(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;J)Z

    move-result v4

    move/from16 v16, v4

    .line 702
    .local v16, "predictionLate":Z
    const/16 v4, 0x100

    if-eq v7, v4, :cond_4

    const/16 v4, 0x300

    if-eq v7, v4, :cond_4

    const/16 v4, 0x200

    if-eq v7, v4, :cond_4

    if-eqz v16, :cond_7

    .line 707
    :cond_4
    if-nez v16, :cond_5

    iget v4, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    if-lt v4, v2, :cond_5

    iget v4, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    const/16 v5, 0x28

    if-gt v4, v5, :cond_5

    .line 709
    iget v4, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    move v3, v4

    .line 710
    const/16 v1, 0x501

    .line 711
    sget-boolean v4, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v4, :cond_7

    .line 712
    const-string v4, "AppStandbyController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restored predicted newBucket = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 715
    :cond_5
    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/android/server/usage/AppStandbyController;->getBucketForLocked(Ljava/lang/String;IJ)I

    move-result v2

    move v3, v2

    .line 717
    sget-boolean v2, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v2, :cond_6

    .line 718
    const-string v2, "AppStandbyController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Evaluated AOSP newBucket = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_6
    const/16 v1, 0x200

    .line 725
    :cond_7
    :goto_1
    iget-object v2, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v2, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v4

    move-wide/from16 v17, v4

    .line 726
    .local v17, "elapsedTimeAdjusted":J
    const/16 v2, 0xa

    if-lt v3, v2, :cond_9

    iget-wide v4, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    cmp-long v2, v4, v17

    if-lez v2, :cond_9

    .line 728
    const/16 v2, 0xa

    .line 729
    .end local v3    # "newBucket":I
    .local v2, "newBucket":I
    iget v3, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    move v1, v3

    .line 730
    sget-boolean v3, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v3, :cond_8

    .line 731
    const-string v3, "AppStandbyController"

    const-string v4, "    Keeping at ACTIVE due to min timeout"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_8
    :goto_2
    move/from16 v19, v1

    move v4, v2

    goto :goto_4

    .line 733
    .end local v2    # "newBucket":I
    .restart local v3    # "newBucket":I
    :cond_9
    const/16 v2, 0x14

    if-lt v3, v2, :cond_b

    iget-wide v4, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    cmp-long v2, v4, v17

    if-lez v2, :cond_b

    .line 735
    const/16 v2, 0x14

    .line 737
    .end local v3    # "newBucket":I
    .restart local v2    # "newBucket":I
    if-ne v2, v6, :cond_a

    .line 738
    iget v3, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    goto :goto_3

    .line 739
    :cond_a
    const/16 v3, 0x307

    :goto_3
    move v1, v3

    .line 740
    sget-boolean v3, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v3, :cond_8

    .line 741
    const-string v3, "AppStandbyController"

    const-string v4, "    Keeping at WORKING_SET due to min timeout"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 744
    .end local v2    # "newBucket":I
    .restart local v3    # "newBucket":I
    :cond_b
    move/from16 v19, v1

    move v4, v3

    .end local v1    # "reason":I
    .end local v3    # "newBucket":I
    .local v4, "newBucket":I
    .local v19, "reason":I
    :goto_4
    sget-boolean v1, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v1, :cond_c

    .line 745
    const-string v1, "AppStandbyController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "     Old bucket="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", newBucket="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_c
    if-lt v6, v4, :cond_e

    if-eqz v16, :cond_d

    goto :goto_5

    :cond_d
    move-object/from16 v24, v8

    goto :goto_6

    .line 749
    :cond_e
    :goto_5
    iget-object v1, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v20, v4

    .end local v4    # "newBucket":I
    .local v20, "newBucket":I
    move-wide/from16 v4, p4

    move/from16 v21, v6

    .end local v6    # "oldBucket":I
    .local v21, "oldBucket":I
    move/from16 v6, v20

    move/from16 v22, v7

    .end local v7    # "oldMainReason":I
    .local v22, "oldMainReason":I
    move/from16 v7, v19

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 751
    const/16 v23, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p4

    move/from16 v6, v20

    move/from16 v7, v19

    move-object/from16 v24, v8

    move/from16 v8, v23

    :try_start_4
    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 754
    .end local v0    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .end local v16    # "predictionLate":Z
    .end local v17    # "elapsedTimeAdjusted":J
    .end local v19    # "reason":I
    .end local v20    # "newBucket":I
    .end local v21    # "oldBucket":I
    .end local v22    # "oldMainReason":I
    :goto_6
    monitor-exit v24

    .line 756
    :goto_7
    return-void

    .line 754
    :catchall_1
    move-exception v0

    move-object/from16 v24, v8

    :goto_8
    monitor-exit v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_8
.end method

.method private fetchCarrierPrivilegedAppsLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppIdleLock"
        }
    .end annotation

    .line 1365
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    .line 1366
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1367
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPackagesWithCarrierPrivilegesForAllPhones()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    .line 1368
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    .line 1369
    sget-boolean v1, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apps with carrier privilege "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppStandbyController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    :cond_0
    return-void
.end method

.method private isActiveNetworkScorer(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1375
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->getActiveNetworkScorer()Ljava/lang/String;

    move-result-object v0

    .line 1376
    .local v0, "activeScorer":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isAppIdleUnfiltered(Ljava/lang/String;IJ)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .line 1017
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1018
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->isIdle(Ljava/lang/String;IJ)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1019
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isCarrierApp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1342
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1343
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    if-nez v1, :cond_0

    .line 1344
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->fetchCarrierPrivilegedAppsLocked()V

    .line 1346
    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 1347
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1349
    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1350
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isDeviceProvisioningPackage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1336
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040170

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1338
    .local v0, "deviceProvisioningPackage":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private maybeInformListeners(Ljava/lang/String;IJIIZ)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "bucket"    # I
    .param p6, "reason"    # I
    .param p7, "userStartedInteracting"    # Z

    .line 768
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 769
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppIdleHistory;->shouldInformListeners(Ljava/lang/String;IJI)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 771
    invoke-static {p1, p2, p5, p6, p7}, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->obtain(Ljava/lang/String;IIIZ)Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;

    move-result-object v1

    .line 773
    .local v1, "r":Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;
    sget-boolean v2, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "AppStandbyController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Standby bucket for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_0
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 776
    .end local v1    # "r":Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;
    :cond_1
    monitor-exit v0

    .line 777
    return-void

    .line 776
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyBatteryStats(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z

    .line 843
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v0

    .line 845
    .local v0, "uid":I
    if-eqz p3, :cond_0

    .line 846
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/usage/AppStandbyController$Injector;->noteEvent(ILjava/lang/String;I)V

    goto :goto_0

    .line 849
    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/usage/AppStandbyController$Injector;->noteEvent(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    .end local v0    # "uid":I
    :goto_0
    goto :goto_1

    .line 852
    :catch_0
    move-exception v0

    .line 854
    :goto_1
    return-void
.end method

.method private postNextParoleTimeout(JZ)V
    .locals 6
    .param p1, "now"    # J
    .param p3, "forced"    # Z

    .line 565
    sget-boolean v0, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AppStandbyController"

    const-string v1, "Posting MSG_CHECK_PAROLE_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->removeMessages(I)V

    .line 570
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mLastAppIdleParoledTime:J

    iget-wide v4, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleIntervalMillis:J

    add-long/2addr v2, v4

    sub-long/2addr v2, p1

    .line 571
    .local v2, "timeLeft":J
    if-eqz p3, :cond_1

    .line 574
    iget-wide v4, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleWindowMillis:J

    add-long/2addr v2, v4

    .line 576
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 577
    const-wide/16 v2, 0x0

    .line 579
    :cond_2
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 580
    return-void
.end method

.method private postParoleEndTimeout()V
    .locals 4

    .line 583
    sget-boolean v0, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AppStandbyController"

    const-string v1, "Posting MSG_PAROLE_END_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->removeMessages(I)V

    .line 585
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleDurationMillis:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 586
    return-void
.end method

.method private postParoleStateChanged()V
    .locals 2

    .line 589
    sget-boolean v0, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AppStandbyController"

    const-string v1, "Posting MSG_PAROLE_STATE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->removeMessages(I)V

    .line 591
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendEmptyMessage(I)Z

    .line 592
    return-void
.end method

.method private predictionTimedOut(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;J)Z
    .locals 4
    .param p1, "app"    # Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .param p2, "elapsedRealtime"    # J

    .line 760
    iget-wide v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 761
    invoke-virtual {v0, p2, p3}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mPredictionTimeoutMillis:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 760
    :goto_0
    return v0
.end method

.method private usageEventToSubReason(I)I
    .locals 3
    .param p1, "eventType"    # I

    .line 947
    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v1, 0x2

    if-eq p1, v1, :cond_6

    const/4 v2, 0x6

    if-eq p1, v2, :cond_5

    const/4 v0, 0x7

    if-eq p1, v0, :cond_4

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    const/16 v1, 0x13

    if-eq p1, v1, :cond_2

    const/16 v1, 0xd

    if-eq p1, v1, :cond_1

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    .line 957
    const/4 v0, 0x0

    return v0

    .line 953
    :cond_0
    const/16 v0, 0x9

    return v0

    .line 954
    :cond_1
    return v0

    .line 956
    :cond_2
    const/16 v0, 0xf

    return v0

    .line 952
    :cond_3
    return v1

    .line 951
    :cond_4
    const/4 v0, 0x3

    return v0

    .line 950
    :cond_5
    return v0

    .line 949
    :cond_6
    const/4 v0, 0x5

    return v0

    .line 948
    :cond_7
    const/4 v0, 0x4

    return v0
.end method

.method private waitForAdminData()V
    .locals 4

    .line 1319
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.device_admin"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x2710

    const-string v3, "Wait for admin data"

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/ConcurrentUtils;->waitForCountDownNoInterrupt(Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;)V

    .line 1323
    :cond_0
    return-void
.end method


# virtual methods
.method public addActiveDeviceAdmin(Ljava/lang/String;I)V
    .locals 3
    .param p1, "adminPkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1291
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1292
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 1293
    .local v1, "adminPkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 1294
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 1295
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1297
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1298
    nop

    .end local v1    # "adminPkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-exit v0

    .line 1299
    return-void

    .line 1298
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method addListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .line 1023
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1024
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1025
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    :cond_0
    monitor-exit v0

    .line 1028
    return-void

    .line 1027
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method checkIdleStates(I)Z
    .locals 19
    .param p1, "checkUserId"    # I

    .line 617
    move-object/from16 v7, p0

    move/from16 v8, p1

    iget-boolean v0, v7, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 618
    return v1

    .line 623
    :cond_0
    :try_start_0
    iget-object v0, v7, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->getRunningUserIds()[I

    move-result-object v0

    .line 624
    .local v0, "runningUserIds":[I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 625
    invoke-static {v0, v8}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    .line 626
    return v1

    .line 630
    :cond_1
    nop

    .line 632
    iget-object v1, v7, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v10

    .line 633
    .local v10, "elapsedRealtime":J
    const/4 v1, 0x0

    move v12, v1

    .local v12, "i":I
    :goto_0
    array-length v1, v0

    const-string v2, "AppStandbyController"

    if-ge v12, v1, :cond_5

    .line 634
    aget v13, v0, v12

    .line 635
    .local v13, "userId":I
    if-eq v8, v9, :cond_2

    if-eq v8, v13, :cond_2

    .line 636
    goto :goto_2

    .line 638
    :cond_2
    sget-boolean v1, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checking idle state for user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_3
    iget-object v1, v7, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x200

    invoke-virtual {v1, v2, v13}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v14

    .line 644
    .local v14, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    .line 645
    .local v15, "packageCount":I
    const/4 v1, 0x0

    move v5, v1

    .local v5, "p":I
    :goto_1
    if-ge v5, v15, :cond_4

    .line 646
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 647
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    iget-object v4, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 648
    .local v4, "packageName":Ljava/lang/String;
    iget-object v1, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v1, p0

    move-object v2, v4

    move/from16 v16, v3

    move v3, v13

    move-object/from16 v17, v4

    .end local v4    # "packageName":Ljava/lang/String;
    .local v17, "packageName":Ljava/lang/String;
    move/from16 v4, v16

    move/from16 v16, v5

    move-object/from16 v18, v6

    .end local v5    # "p":I
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    .local v16, "p":I
    .local v18, "pi":Landroid/content/pm/PackageInfo;
    move-wide v5, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->checkAndUpdateStandbyState(Ljava/lang/String;IIJ)V

    .line 645
    .end local v17    # "packageName":Ljava/lang/String;
    .end local v18    # "pi":Landroid/content/pm/PackageInfo;
    add-int/lit8 v5, v16, 0x1

    .end local v16    # "p":I
    .restart local v5    # "p":I
    goto :goto_1

    :cond_4
    move/from16 v16, v5

    .line 633
    .end local v5    # "p":I
    .end local v13    # "userId":I
    .end local v14    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v15    # "packageCount":I
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 652
    .end local v12    # "i":I
    :cond_5
    sget-boolean v1, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIdleStates took "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 654
    invoke-virtual {v3}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v10

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 653
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_6
    const/4 v1, 0x1

    return v1

    .line 628
    .end local v0    # "runningUserIds":[I
    .end local v10    # "elapsedRealtime":J
    :catch_0
    move-exception v0

    .line 629
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method checkParoleTimeout()V
    .locals 15

    .line 800
    const/4 v0, 0x0

    .line 801
    .local v0, "setParoled":Z
    const/4 v1, 0x0

    .line 802
    .local v1, "waitForNetwork":Z
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 803
    .local v2, "activeNetwork":Landroid/net/NetworkInfo;
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 804
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    .line 806
    .local v5, "networkActive":Z
    :goto_0
    iget-object v6, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v6

    .line 807
    :try_start_0
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v7}, Lcom/android/server/usage/AppStandbyController$Injector;->currentTimeMillis()J

    move-result-wide v7

    .line 808
    .local v7, "now":J
    iget-boolean v9, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleTempParoled:Z

    if-nez v9, :cond_8

    .line 809
    iget-wide v9, p0, Lcom/android/server/usage/AppStandbyController;->mLastAppIdleParoledTime:J

    sub-long v9, v7, v9

    .line 810
    .local v9, "timeSinceLastParole":J
    iget-wide v11, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleIntervalMillis:J

    cmp-long v11, v9, v11

    if-lez v11, :cond_6

    .line 811
    sget-boolean v3, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "AppStandbyController"

    const-string v11, "Crossed default parole interval"

    invoke-static {v3, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :cond_1
    if-eqz v5, :cond_2

    .line 814
    const/4 v0, 0x1

    goto :goto_1

    .line 816
    :cond_2
    iget-wide v11, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleIntervalMillis:J

    iget-wide v13, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleWindowMillis:J

    add-long/2addr v11, v13

    cmp-long v3, v9, v11

    if-lez v3, :cond_4

    .line 818
    sget-boolean v3, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "AppStandbyController"

    const-string v11, "Crossed end of parole window, force parole"

    invoke-static {v3, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 821
    :cond_4
    sget-boolean v3, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "AppStandbyController"

    const-string v11, "Network unavailable, delaying parole"

    invoke-static {v3, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :cond_5
    const/4 v1, 0x1

    .line 823
    invoke-direct {p0, v7, v8, v4}, Lcom/android/server/usage/AppStandbyController;->postNextParoleTimeout(JZ)V

    goto :goto_1

    .line 827
    :cond_6
    sget-boolean v11, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v11, :cond_7

    const-string v11, "AppStandbyController"

    const-string v12, "Not long enough to go to parole"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :cond_7
    invoke-direct {p0, v7, v8, v3}, Lcom/android/server/usage/AppStandbyController;->postNextParoleTimeout(JZ)V

    .line 831
    .end local v7    # "now":J
    .end local v9    # "timeSinceLastParole":J
    :cond_8
    :goto_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 832
    if-eqz v1, :cond_9

    .line 833
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v6, p0, Lcom/android/server/usage/AppStandbyController;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v3, v6, v7}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 835
    :cond_9
    if-eqz v0, :cond_a

    .line 837
    invoke-virtual {p0, v4}, Lcom/android/server/usage/AppStandbyController;->setAppIdleParoled(Z)V

    .line 839
    :cond_a
    return-void

    .line 831
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method clearAppIdleForPackage(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1420
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1421
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/AppIdleHistory;->clearUsage(Ljava/lang/String;I)V

    .line 1422
    monitor-exit v0

    .line 1423
    return-void

    .line 1422
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method clearCarrierPrivilegedApps()V
    .locals 2

    .line 1354
    sget-boolean v0, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1355
    const-string v0, "AppStandbyController"

    const-string v1, "Clearing carrier privileged apps list"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1358
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    .line 1359
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    .line 1360
    monitor-exit v0

    .line 1361
    return-void

    .line 1360
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dumpState([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 1498
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1499
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Carrier privileged apps (have="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1501
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1505
    .local v0, "now":J
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1506
    const-string v2, "Settings:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1508
    const-string v2, "  mCheckIdleIntervalMillis="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1509
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mCheckIdleIntervalMillis:J

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1510
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1512
    const-string v2, "  mAppIdleParoleIntervalMillis="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1513
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleIntervalMillis:J

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1514
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1516
    const-string v2, "  mAppIdleParoleWindowMillis="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1517
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleWindowMillis:J

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1518
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1520
    const-string v2, "  mAppIdleParoleDurationMillis="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1521
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleDurationMillis:J

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1522
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1524
    const-string v2, "  mStrongUsageTimeoutMillis="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1525
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1526
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1527
    const-string v2, "  mNotificationSeenTimeoutMillis="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1528
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1529
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1530
    const-string v2, "  mSyncAdapterTimeoutMillis="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1531
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1532
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1533
    const-string v2, "  mSystemInteractionTimeoutMillis="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1534
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1535
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1536
    const-string v2, "  mInitialForegroundServiceStartTimeoutMillis="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1537
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1538
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1540
    const-string v2, "  mPredictionTimeoutMillis="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1541
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mPredictionTimeoutMillis:J

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1542
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1544
    const-string v2, "  mExemptedSyncScheduledNonDozeTimeoutMillis="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1545
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1546
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1547
    const-string v2, "  mExemptedSyncScheduledDozeTimeoutMillis="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1548
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1549
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1550
    const-string v2, "  mExemptedSyncStartTimeoutMillis="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1551
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1552
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1553
    const-string v2, "  mUnexemptedSyncScheduledTimeoutMillis="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1554
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mUnexemptedSyncScheduledTimeoutMillis:J

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1555
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1557
    const-string v2, "  mSystemUpdateUsageTimeoutMillis="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1558
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mSystemUpdateUsageTimeoutMillis:J

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1559
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1561
    const-string v2, "  mStableChargingThresholdMillis="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1562
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mStableChargingThresholdMillis:J

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1563
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1565
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1566
    const-string/jumbo v2, "mAppIdleEnabled="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1567
    const-string v2, " mAppIdleTempParoled="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleTempParoled:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1568
    const-string v2, " mCharging="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mCharging:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1569
    const-string v2, " mChargingStable="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mChargingStable:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1570
    const-string v2, " mLastAppIdleParoledTime="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1571
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mLastAppIdleParoledTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1572
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1573
    const-string/jumbo v2, "mScreenThresholds="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1574
    const-string/jumbo v2, "mElapsedThresholds="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1575
    const-string/jumbo v2, "mStableChargingThresholdMillis="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1576
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mStableChargingThresholdMillis:J

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1577
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1578
    return-void

    .line 1501
    .end local v0    # "now":J
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method dumpUser(Lcom/android/internal/util/IndentingPrintWriter;ILjava/lang/String;)V
    .locals 2
    .param p1, "idpw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "userId"    # I
    .param p3, "pkg"    # Ljava/lang/String;

    .line 1492
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1493
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/usage/AppIdleHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;ILjava/lang/String;)V

    .line 1494
    monitor-exit v0

    .line 1495
    return-void

    .line 1494
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method flushDurationsToDisk()V
    .locals 2

    .line 1410
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1411
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleDurations()V

    .line 1412
    monitor-exit v0

    .line 1413
    return-void

    .line 1412
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method flushToDisk(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 1402
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1403
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleTimes(I)V

    .line 1404
    monitor-exit v0

    .line 1405
    return-void

    .line 1404
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method forceIdleState(Ljava/lang/String;IZ)V
    .locals 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z

    .line 970
    move-object/from16 v15, p0

    iget-boolean v0, v15, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 972
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppStandbyController;->getAppId(Ljava/lang/String;)I

    move-result v16

    .line 973
    .local v16, "appId":I
    if-gez v16, :cond_1

    return-void

    .line 974
    :cond_1
    iget-object v0, v15, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v17

    .line 976
    .local v17, "elapsedRealtime":J
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v16

    move/from16 v4, p2

    move-wide/from16 v5, v17

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v14

    .line 979
    .local v14, "previouslyIdle":Z
    iget-object v7, v15, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v7

    .line 980
    :try_start_0
    iget-object v1, v15, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, v17

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppIdleHistory;->setIdle(Ljava/lang/String;IZJ)I

    move-result v12

    .line 981
    .local v12, "standbyBucket":I
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 982
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v16

    move/from16 v4, p2

    move-wide/from16 v5, v17

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v0

    .line 985
    .local v0, "stillIdle":Z
    if-eq v14, v0, :cond_2

    .line 986
    const/16 v13, 0x400

    const/4 v1, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-wide/from16 v10, v17

    move v2, v14

    .end local v14    # "previouslyIdle":Z
    .local v2, "previouslyIdle":Z
    move v14, v1

    invoke-direct/range {v7 .. v14}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 988
    if-nez v0, :cond_3

    .line 989
    invoke-direct/range {p0 .. p3}, Lcom/android/server/usage/AppStandbyController;->notifyBatteryStats(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 985
    .end local v2    # "previouslyIdle":Z
    .restart local v14    # "previouslyIdle":Z
    :cond_2
    move v2, v14

    .line 992
    .end local v14    # "previouslyIdle":Z
    .restart local v2    # "previouslyIdle":Z
    :cond_3
    :goto_0
    return-void

    .line 981
    .end local v0    # "stillIdle":Z
    .end local v2    # "previouslyIdle":Z
    .end local v12    # "standbyBucket":I
    .restart local v14    # "previouslyIdle":Z
    :catchall_0
    move-exception v0

    move v2, v14

    .end local v14    # "previouslyIdle":Z
    .restart local v2    # "previouslyIdle":Z
    :goto_1
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method getActiveAdminAppsForTest(I)Ljava/util/Set;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1326
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1327
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 1328
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getAppId(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1038
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const v1, 0x400200

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1041
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1042
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 1043
    .local v0, "re":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, -0x1

    return v1
.end method

.method public getAppStandbyBucket(Ljava/lang/String;IJZ)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "shouldObfuscateInstantApps"    # Z

    .line 1201
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-eqz v0, :cond_1

    if-eqz p5, :cond_0

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1202
    invoke-virtual {v0, p2, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1206
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1207
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1208
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1203
    :cond_1
    :goto_0
    const/16 v0, 0xa

    return v0
.end method

.method public getAppStandbyBuckets(I)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/usage/AppStandbyInfo;",
            ">;"
        }
    .end annotation

    .line 1212
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1213
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {v1, p1, v2}, Lcom/android/server/usage/AppIdleHistory;->getAppStandbyBuckets(IZ)Ljava/util/ArrayList;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1214
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getBucketForLocked(Ljava/lang/String;IJ)I
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppIdleLock"
        }
    .end annotation

    .line 789
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v5, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    iget-object v6, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/AppIdleHistory;->getThresholdIndex(Ljava/lang/String;IJ[J[J)I

    move-result v0

    .line 791
    .local v0, "bucketIndex":I
    sget-object v1, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    aget v1, v1, v0

    return v1
.end method

.method getIdleUidsForUser(I)[I
    .locals 13
    .param p1, "userId"    # I

    .line 1129
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1130
    new-array v0, v1, [I

    return-object v0

    .line 1133
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v8

    .line 1137
    .local v8, "elapsedRealtime":J
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1138
    invoke-interface {v0, v1, p1}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1139
    .local v0, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v0, :cond_1

    .line 1140
    new-array v1, v1, [I

    return-object v1

    .line 1142
    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1145
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    nop

    .line 1149
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    move-object v10, v2

    .line 1153
    .local v10, "uidStates":Landroid/util/SparseIntArray;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v11, v2

    .local v11, "i":I
    :goto_0
    if-ltz v11, :cond_5

    .line 1154
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/content/pm/ApplicationInfo;

    .line 1157
    .local v12, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    move-object v2, p0

    move v5, p1

    move-wide v6, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v2

    .line 1160
    .local v2, "idle":Z
    iget v3, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    .line 1161
    .local v3, "index":I
    const/high16 v4, 0x10000

    if-gez v3, :cond_3

    .line 1162
    iget v5, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v10, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_3

    .line 1164
    :cond_3
    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 1165
    .local v5, "value":I
    add-int/lit8 v6, v5, 0x1

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    add-int/2addr v6, v4

    invoke-virtual {v10, v3, v6}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 1153
    .end local v2    # "idle":Z
    .end local v3    # "index":I
    .end local v5    # "value":I
    .end local v12    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_3
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 1168
    .end local v11    # "i":I
    :cond_5
    sget-boolean v1, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 1169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIdleUids took "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppStandbyController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    :cond_6
    const/4 v1, 0x0

    .line 1172
    .local v1, "numIdle":I
    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_4
    if-ltz v2, :cond_8

    .line 1173
    invoke-virtual {v10, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 1174
    .local v3, "value":I
    and-int/lit16 v4, v3, 0x7fff

    shr-int/lit8 v5, v3, 0x10

    if-ne v4, v5, :cond_7

    .line 1175
    add-int/lit8 v1, v1, 0x1

    .line 1172
    .end local v3    # "value":I
    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 1179
    .end local v2    # "i":I
    :cond_8
    new-array v2, v1, [I

    .line 1180
    .local v2, "res":[I
    const/4 v1, 0x0

    .line 1181
    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_5
    if-ltz v3, :cond_a

    .line 1182
    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 1183
    .local v4, "value":I
    and-int/lit16 v5, v4, 0x7fff

    shr-int/lit8 v6, v4, 0x10

    if-ne v5, v6, :cond_9

    .line 1184
    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    aput v5, v2, v1

    .line 1185
    add-int/lit8 v1, v1, 0x1

    .line 1181
    .end local v4    # "value":I
    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 1189
    .end local v3    # "i":I
    :cond_a
    return-object v2

    .line 1143
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v1    # "numIdle":I
    .end local v2    # "res":[I
    .end local v10    # "uidStates":Landroid/util/SparseIntArray;
    :catch_0
    move-exception v0

    .line 1144
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTimeSinceLastJobRun(Ljava/lang/String;I)J
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1001
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v0

    .line 1002
    .local v0, "elapsedRealtime":J
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1003
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v3, p1, p2, v0, v1}, Lcom/android/server/usage/AppIdleHistory;->getTimeSinceLastJobRun(Ljava/lang/String;IJ)J

    move-result-wide v3

    monitor-exit v2

    return-wide v3

    .line 1004
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method informListeners(Ljava/lang/String;IIIZ)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "bucket"    # I
    .param p4, "reason"    # I
    .param p5, "userInteraction"    # Z

    .line 1381
    const/16 v0, 0x28

    if-lt p3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    .line 1382
    .local v4, "idle":Z
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1383
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    move-object v8, v1

    .line 1384
    .local v8, "listener":Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
    move-object v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;->onAppIdleStateChanged(Ljava/lang/String;IZII)V

    .line 1385
    if-eqz p5, :cond_1

    .line 1386
    invoke-virtual {v8, p1, p2}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;->onUserInteractionStarted(Ljava/lang/String;I)V

    .line 1388
    .end local v8    # "listener":Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
    :cond_1
    goto :goto_1

    .line 1389
    :cond_2
    monitor-exit v0

    .line 1390
    return-void

    .line 1389
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method informParoleStateChanged()V
    .locals 4

    .line 1393
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isParoledOrCharging()Z

    move-result v0

    .line 1394
    .local v0, "paroled":Z
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1395
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .line 1396
    .local v3, "listener":Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
    invoke-virtual {v3, v0}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;->onParoleStateChanged(Z)V

    .line 1397
    .end local v3    # "listener":Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
    goto :goto_0

    .line 1398
    :cond_0
    monitor-exit v1

    .line 1399
    return-void

    .line 1398
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method initializeDefaultsForSystemApps(I)V
    .locals 20
    .param p1, "userId"    # I

    .line 1443
    move-object/from16 v1, p0

    move/from16 v11, p1

    iget-boolean v0, v1, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    if-nez v0, :cond_0

    .line 1445
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/usage/AppStandbyController;->mPendingInitializeDefaults:Z

    .line 1446
    return-void

    .line 1448
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing defaults for system apps on user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", appIdleEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v1, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppStandbyController"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    iget-object v0, v1, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v12

    .line 1451
    .local v12, "elapsedRealtime":J
    iget-object v0, v1, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x200

    invoke-virtual {v0, v2, v11}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v14

    .line 1454
    .local v14, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    .line 1455
    .local v15, "packageCount":I
    iget-object v9, v1, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1456
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v15, :cond_2

    .line 1457
    :try_start_0
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    move-object v10, v2

    .line 1458
    .local v10, "pi":Landroid/content/pm/PackageInfo;
    iget-object v3, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1459
    .local v3, "packageName":Ljava/lang/String;
    iget-object v2, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1

    iget-object v2, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1462
    iget-object v2, v1, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/16 v5, 0xa

    const/4 v6, 0x6

    iget-wide v7, v1, Lcom/android/server/usage/AppStandbyController;->mSystemUpdateUsageTimeoutMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long v18, v12, v7

    move/from16 v4, p1

    const-wide/16 v7, 0x0

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    .end local v10    # "pi":Landroid/content/pm/PackageInfo;
    .local v17, "pi":Landroid/content/pm/PackageInfo;
    move-wide/from16 v9, v18

    :try_start_1
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    goto :goto_1

    .line 1459
    .end local v17    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v10    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    move-object/from16 v16, v9

    move-object/from16 v17, v10

    .line 1456
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v10    # "pi":Landroid/content/pm/PackageInfo;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v9, v16

    goto :goto_0

    .line 1469
    .end local v0    # "i":I
    :catchall_0
    move-exception v0

    move-object/from16 v16, v9

    goto :goto_2

    .line 1456
    .restart local v0    # "i":I
    :cond_2
    move-object/from16 v16, v9

    .line 1468
    .end local v0    # "i":I
    iget-object v0, v1, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v0, v11}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleTimes(I)V

    .line 1469
    monitor-exit v16

    .line 1470
    return-void

    .line 1469
    :catchall_1
    move-exception v0

    :goto_2
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method isActiveDeviceAdmin(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1284
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1285
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 1286
    .local v1, "adminPkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 1287
    .end local v1    # "adminPkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isAppIdleFiltered(Ljava/lang/String;IIJ)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "elapsedRealtime"    # J

    .line 1121
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyController;->isAppSpecial(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1122
    const/4 v0, 0x0

    return v0

    .line 1124
    :cond_0
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/server/usage/AppStandbyController;->isAppIdleUnfiltered(Ljava/lang/String;IJ)Z

    move-result v0

    return v0
.end method

.method isAppIdleFilteredOrParoled(Ljava/lang/String;IJZ)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "shouldObfuscateInstantApps"    # Z

    .line 1049
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isParoledOrCharging()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1050
    return v1

    .line 1052
    :cond_0
    if-eqz p5, :cond_1

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1053
    invoke-virtual {v0, p2, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1054
    return v1

    .line 1056
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->getAppId(Ljava/lang/String;)I

    move-result v4

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move-wide v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v0

    return v0
.end method

.method isAppSpecial(Ljava/lang/String;II)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    .line 1061
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1063
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1064
    return v2

    .line 1066
    :cond_1
    const/16 v1, 0x2710

    if-ge p2, v1, :cond_2

    .line 1068
    return v2

    .line 1070
    :cond_2
    const-string v1, "android"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1073
    return v2

    .line 1075
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    if-eqz v1, :cond_8

    .line 1080
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isPowerSaveWhitelistExceptIdleApp(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_4

    .line 1081
    return v2

    .line 1085
    :cond_4
    nop

    .line 1087
    invoke-virtual {p0, p1, p3}, Lcom/android/server/usage/AppStandbyController;->isActiveDeviceAdmin(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1088
    return v2

    .line 1091
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppStandbyController;->isActiveNetworkScorer(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1092
    return v2

    .line 1095
    :cond_6
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    if-eqz v1, :cond_7

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1096
    invoke-virtual {v3, v1, p1, p3}, Lcom/android/server/usage/AppStandbyController$Injector;->isBoundWidgetPackage(Landroid/appwidget/AppWidgetManager;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1097
    return v2

    .line 1100
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppStandbyController;->isDeviceProvisioningPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1101
    return v2

    .line 1083
    :catch_0
    move-exception v0

    .line 1084
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1106
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppStandbyController;->isCarrierApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1107
    return v2

    .line 1110
    :cond_9
    return v0
.end method

.method isDisplayOn()Z
    .locals 1

    .line 1416
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->isDefaultDisplayOn()Z

    move-result v0

    return v0
.end method

.method isParoledOrCharging()Z
    .locals 3

    .line 557
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 560
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleTempParoled:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mChargingStable:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    monitor-exit v0

    return v1

    .line 561
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAdminDataAvailable()V
    .locals 1

    .line 1312
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1313
    return-void
.end method

.method public onBootPhase(I)V
    .locals 6
    .param p1, "phase"    # I

    .line 375
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->onBootPhase(I)V

    .line 376
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_2

    .line 377
    const-string v0, "AppStandbyController"

    const-string v1, "Setting app idle enabled state"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    new-instance v0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;-><init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Handler;)V

    .line 380
    .local v0, "settingsObserver":Lcom/android/server/usage/AppStandbyController$SettingsObserver;
    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->registerObserver()V

    .line 381
    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->updateSettings()V

    .line 383
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetManager;

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 384
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 385
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPowerManager:Landroid/os/PowerManager;

    .line 387
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/usage/AppStandbyController$Injector;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 388
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 389
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isDisplayOn()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v4}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->updateDisplay(ZJ)V

    .line 390
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 392
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    .line 395
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 396
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/usage/AppIdleHistory;->userFileExists(I)Z

    move-result v1

    .line 397
    .local v1, "userFileExists":Z
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mPendingInitializeDefaults:Z

    if-nez v2, :cond_0

    if-nez v1, :cond_1

    .line 400
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/server/usage/AppStandbyController;->initializeDefaultsForSystemApps(I)V

    .line 403
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mPendingOneTimeCheckIdleStates:Z

    if-eqz v2, :cond_3

    .line 404
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->postOneTimeCheckIdleStates()V

    goto :goto_0

    .line 397
    .end local v1    # "userFileExists":Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 390
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 406
    .end local v0    # "settingsObserver":Lcom/android/server/usage/AppStandbyController$SettingsObserver;
    :cond_2
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_3

    .line 407
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->isCharging()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/usage/AppStandbyController;->setChargingState(Z)V

    goto :goto_1

    .line 406
    :cond_3
    :goto_0
    nop

    .line 409
    :goto_1
    return-void
.end method

.method onDeviceIdleModeChanged()V
    .locals 7

    .line 857
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    .line 858
    .local v0, "deviceIdle":Z
    sget-boolean v1, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceIdleMode changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppStandbyController"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_0
    const/4 v1, 0x0

    .line 860
    .local v1, "paroled":Z
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 861
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 862
    invoke-virtual {v3}, Lcom/android/server/usage/AppStandbyController$Injector;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/usage/AppStandbyController;->mLastAppIdleParoledTime:J

    sub-long/2addr v3, v5

    .line 863
    .local v3, "timeSinceLastParole":J
    if-nez v0, :cond_2

    iget-wide v5, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleIntervalMillis:J

    cmp-long v5, v3, v5

    if-ltz v5, :cond_2

    .line 865
    sget-boolean v5, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 866
    const-string v5, "AppStandbyController"

    const-string v6, "Bringing idle apps out of inactive state due to deviceIdleMode=false"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 870
    :cond_2
    if-eqz v0, :cond_4

    .line 871
    sget-boolean v5, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "AppStandbyController"

    const-string v6, "Device idle, back to prison"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_3
    const/4 v1, 0x0

    .line 876
    .end local v3    # "timeSinceLastParole":J
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 877
    invoke-virtual {p0, v1}, Lcom/android/server/usage/AppStandbyController;->setAppIdleParoled(Z)V

    .line 878
    return-void

    .line 874
    .restart local v3    # "timeSinceLastParole":J
    :cond_4
    :try_start_1
    monitor-exit v2

    return-void

    .line 876
    .end local v3    # "timeSinceLastParole":J
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public onUserRemoved(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1008
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1009
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppIdleHistory;->onUserRemoved(I)V

    .line 1010
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1011
    :try_start_1
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1012
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1013
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1014
    return-void

    .line 1012
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/usage/AppStandbyController;
    .end local p1    # "userId":I
    :try_start_4
    throw v2

    .line 1013
    .restart local p0    # "this":Lcom/android/server/usage/AppStandbyController;
    .restart local p1    # "userId":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method postCheckIdleStates(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 595
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 596
    return-void
.end method

.method postOneTimeCheckIdleStates()V
    .locals 2

    .line 603
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->getBootPhase()I

    move-result v0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    .line 605
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mPendingOneTimeCheckIdleStates:Z

    goto :goto_0

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendEmptyMessage(I)Z

    .line 608
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mPendingOneTimeCheckIdleStates:Z

    .line 610
    :goto_0
    return-void
.end method

.method postReportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1473
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1474
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1475
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1476
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1477
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1478
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1479
    return-void
.end method

.method postReportExemptedSyncStart(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1487
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1488
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1489
    return-void
.end method

.method postReportSyncScheduled(Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "exempted"    # Z

    .line 1482
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1483
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1484
    return-void
.end method

.method removeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .line 1031
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1032
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1033
    monitor-exit v0

    .line 1034
    return-void

    .line 1033
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 24
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "providerPkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 412
    move-object/from16 v9, p0

    move/from16 v8, p3

    iget-boolean v0, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 415
    :cond_0
    move-object/from16 v7, p1

    invoke-static {v7, v8}, Landroid/content/ContentResolver;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 417
    .local v6, "packages":[Ljava/lang/String;
    iget-object v0, v9, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v19

    .line 418
    .local v19, "elapsedRealtime":J
    array-length v4, v6

    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v3, v6, v5

    .line 422
    .local v3, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v0, v9, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v1, 0x100000

    invoke-virtual {v0, v3, v1, v8}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    move-object v2, v0

    .line 424
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_3

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_1

    move-object v13, v2

    move-object v14, v3

    move v15, v4

    move/from16 v16, v5

    move-object/from16 v17, v6

    goto/16 :goto_3

    .line 427
    :cond_1
    move-object/from16 v1, p2

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 428
    iget-object v15, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 429
    :try_start_1
    iget-object v10, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/16 v13, 0xa

    const/16 v14, 0x8

    const-wide/16 v16, 0x0

    iget-wide v11, v9, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-long v21, v19, v11

    move-object v11, v3

    move/from16 v12, p3

    move-object/from16 v23, v15

    move-wide/from16 v15, v16

    move-wide/from16 v17, v21

    :try_start_2
    invoke-virtual/range {v10 .. v18}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 433
    .local v0, "appUsage":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    iget v10, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    iget v11, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v12, 0x0

    move-object/from16 v1, p0

    move-object v13, v2

    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .local v13, "pi":Landroid/content/pm/PackageInfo;
    move-object v2, v3

    move-object v14, v3

    .end local v3    # "packageName":Ljava/lang/String;
    .local v14, "packageName":Ljava/lang/String;
    move/from16 v3, p3

    move v15, v4

    move/from16 v16, v5

    move-wide/from16 v4, v19

    move-object/from16 v17, v6

    .end local v6    # "packages":[Ljava/lang/String;
    .local v17, "packages":[Ljava/lang/String;
    move v6, v10

    move v7, v11

    move v8, v12

    :try_start_3
    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 435
    .end local v0    # "appUsage":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    monitor-exit v23

    goto :goto_2

    .end local v13    # "pi":Landroid/content/pm/PackageInfo;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v17    # "packages":[Ljava/lang/String;
    .restart local v2    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v6    # "packages":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v13, v2

    move-object v14, v3

    move v15, v4

    move/from16 v16, v5

    move-object/from16 v17, v6

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v13, v2

    move-object v14, v3

    move/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v23, v15

    move v15, v4

    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v6    # "packages":[Ljava/lang/String;
    .restart local v13    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v14    # "packageName":Ljava/lang/String;
    .restart local v17    # "packages":[Ljava/lang/String;
    :goto_1
    monitor-exit v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v14    # "packageName":Ljava/lang/String;
    .end local v17    # "packages":[Ljava/lang/String;
    .end local v19    # "elapsedRealtime":J
    .end local p0    # "this":Lcom/android/server/usage/AppStandbyController;
    .end local p1    # "authority":Ljava/lang/String;
    .end local p2    # "providerPkgName":Ljava/lang/String;
    .end local p3    # "userId":I
    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 437
    .end local v13    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v14    # "packageName":Ljava/lang/String;
    .restart local v17    # "packages":[Ljava/lang/String;
    .restart local v19    # "elapsedRealtime":J
    .restart local p0    # "this":Lcom/android/server/usage/AppStandbyController;
    .restart local p1    # "authority":Ljava/lang/String;
    .restart local p2    # "providerPkgName":Ljava/lang/String;
    .restart local p3    # "userId":I
    :catch_0
    move-exception v0

    goto :goto_4

    .line 435
    .restart local v13    # "pi":Landroid/content/pm/PackageInfo;
    :catchall_2
    move-exception v0

    goto :goto_1

    .line 427
    .end local v13    # "pi":Landroid/content/pm/PackageInfo;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v17    # "packages":[Ljava/lang/String;
    .restart local v2    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v6    # "packages":[Ljava/lang/String;
    :cond_2
    move-object v13, v2

    move-object v14, v3

    move v15, v4

    move/from16 v16, v5

    move-object/from16 v17, v6

    .line 439
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v6    # "packages":[Ljava/lang/String;
    .restart local v14    # "packageName":Ljava/lang/String;
    .restart local v17    # "packages":[Ljava/lang/String;
    :goto_2
    goto :goto_4

    .line 424
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v17    # "packages":[Ljava/lang/String;
    .restart local v2    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v6    # "packages":[Ljava/lang/String;
    :cond_3
    move-object v13, v2

    move-object v14, v3

    move v15, v4

    move/from16 v16, v5

    move-object/from16 v17, v6

    .line 425
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v6    # "packages":[Ljava/lang/String;
    .restart local v13    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v14    # "packageName":Ljava/lang/String;
    .restart local v17    # "packages":[Ljava/lang/String;
    :goto_3
    goto :goto_4

    .line 437
    .end local v13    # "pi":Landroid/content/pm/PackageInfo;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v17    # "packages":[Ljava/lang/String;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v6    # "packages":[Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v14, v3

    move v15, v4

    move/from16 v16, v5

    move-object/from16 v17, v6

    .line 418
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v6    # "packages":[Ljava/lang/String;
    .restart local v17    # "packages":[Ljava/lang/String;
    :goto_4
    add-int/lit8 v5, v16, 0x1

    move-object/from16 v7, p1

    move/from16 v8, p3

    move v4, v15

    move-object/from16 v6, v17

    goto/16 :goto_0

    .line 441
    .end local v17    # "packages":[Ljava/lang/String;
    .restart local v6    # "packages":[Ljava/lang/String;
    :cond_4
    return-void
.end method

.method reportEvent(Landroid/app/usage/UsageEvents$Event;JI)V
    .locals 28
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;
    .param p2, "elapsedRealtime"    # J
    .param p4, "userId"    # I

    .line 881
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-wide/from16 v6, p2

    move/from16 v4, p4

    iget-boolean v0, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 882
    :cond_0
    iget-object v5, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v5

    .line 885
    :try_start_0
    iget-object v0, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v1, v10, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v6, v7}, Lcom/android/server/usage/AppIdleHistory;->isIdle(Ljava/lang/String;IJ)Z

    move-result v0

    .line 888
    .local v0, "previouslyIdle":Z
    iget v1, v10, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v2, 0x13

    const/16 v3, 0xe

    const/4 v8, 0x6

    const/4 v15, 0x1

    const/16 v14, 0xa

    if-eq v1, v15, :cond_2

    iget v1, v10, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v11, 0x2

    if-eq v1, v11, :cond_2

    iget v1, v10, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq v1, v8, :cond_2

    iget v1, v10, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v11, 0x7

    if-eq v1, v11, :cond_2

    iget v1, v10, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq v1, v14, :cond_2

    iget v1, v10, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq v1, v3, :cond_2

    iget v1, v10, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v11, 0xd

    if-eq v1, v11, :cond_2

    iget v1, v10, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v13, v4

    move-object/from16 v18, v5

    goto/16 :goto_4

    .line 897
    :cond_2
    :goto_0
    iget-object v1, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v11, v10, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v11, v4, v6, v7}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v1

    .line 899
    .local v1, "appHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    iget v11, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    move v13, v11

    .line 900
    .local v13, "prevBucket":I
    iget v11, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    move/from16 v25, v11

    .line 902
    .local v25, "prevBucketReason":I
    iget v11, v10, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-direct {v9, v11}, Lcom/android/server/usage/AppStandbyController;->usageEventToSubReason(I)I

    move-result v11

    move v12, v11

    .line 903
    .local v12, "subReason":I
    or-int/lit16 v11, v12, 0x300

    .line 904
    .local v11, "reason":I
    iget v15, v10, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq v15, v14, :cond_7

    iget v15, v10, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-ne v15, v3, :cond_3

    move/from16 v26, v11

    move/from16 v27, v12

    move v2, v13

    move v8, v14

    const/4 v3, 0x1

    goto/16 :goto_1

    .line 911
    :cond_3
    iget v3, v10, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-ne v3, v8, :cond_4

    .line 912
    iget-object v2, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v3, v10, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const/16 v19, 0xa

    const-wide/16 v21, 0x0

    iget-wide v14, v9, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    add-long v23, v6, v14

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    move-object/from16 v18, v3

    move/from16 v20, v12

    invoke-virtual/range {v16 .. v24}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 915
    iget-wide v2, v9, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    move/from16 v26, v11

    move/from16 v27, v12

    const/16 v8, 0xa

    move-wide v11, v2

    move v2, v13

    const/4 v3, 0x1

    .local v2, "nextCheckTime":J
    goto/16 :goto_2

    .line 916
    .end local v2    # "nextCheckTime":J
    :cond_4
    iget v3, v10, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-ne v3, v2, :cond_6

    .line 918
    const/16 v2, 0x32

    if-eq v13, v2, :cond_5

    monitor-exit v5

    return-void

    .line 919
    :cond_5
    iget-object v2, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v3, v10, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const/16 v19, 0xa

    const-wide/16 v21, 0x0

    iget-wide v14, v9, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    add-long v23, v6, v14

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    move-object/from16 v18, v3

    move/from16 v20, v12

    invoke-virtual/range {v16 .. v24}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 922
    iget-wide v2, v9, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    move/from16 v26, v11

    move/from16 v27, v12

    const/16 v8, 0xa

    move-wide v11, v2

    move v2, v13

    const/4 v3, 0x1

    .restart local v2    # "nextCheckTime":J
    goto :goto_2

    .line 924
    .end local v2    # "nextCheckTime":J
    :cond_6
    iget-object v2, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v3, v10, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-wide v14, v9, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    add-long v18, v6, v14

    move/from16 v26, v11

    .end local v11    # "reason":I
    .local v26, "reason":I
    move-object v11, v2

    move/from16 v27, v12

    .end local v12    # "subReason":I
    .local v27, "subReason":I
    move-object v12, v1

    move v2, v13

    .end local v13    # "prevBucket":I
    .local v2, "prevBucket":I
    move-object v13, v3

    const/16 v3, 0xa

    const/16 v8, 0xa

    move v14, v3

    const/4 v3, 0x1

    move/from16 v15, v27

    move-wide/from16 v16, p2

    invoke-virtual/range {v11 .. v19}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 927
    iget-wide v11, v9, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    .local v11, "nextCheckTime":J
    goto :goto_2

    .line 904
    .end local v2    # "prevBucket":I
    .end local v26    # "reason":I
    .end local v27    # "subReason":I
    .local v11, "reason":I
    .restart local v12    # "subReason":I
    .restart local v13    # "prevBucket":I
    :cond_7
    move/from16 v26, v11

    move/from16 v27, v12

    move v2, v13

    move v8, v14

    const/4 v3, 0x1

    .line 907
    .end local v11    # "reason":I
    .end local v12    # "subReason":I
    .end local v13    # "prevBucket":I
    .restart local v2    # "prevBucket":I
    .restart local v26    # "reason":I
    .restart local v27    # "subReason":I
    :goto_1
    iget-object v11, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v12, v10, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const/16 v19, 0x14

    const-wide/16 v21, 0x0

    iget-wide v13, v9, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    add-long v23, v6, v13

    move-object/from16 v16, v11

    move-object/from16 v17, v1

    move-object/from16 v18, v12

    move/from16 v20, v27

    invoke-virtual/range {v16 .. v24}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 910
    iget-wide v11, v9, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    .line 929
    .local v11, "nextCheckTime":J
    :goto_2
    iget-object v13, v9, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    iget-object v14, v9, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v15, 0xb

    const/4 v3, -0x1

    iget-object v8, v10, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 930
    invoke-virtual {v14, v15, v4, v3, v8}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 929
    invoke-virtual {v13, v3, v11, v12}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 932
    iget v3, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v8, 0xa

    if-ne v3, v8, :cond_8

    iget v3, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-eq v2, v3, :cond_8

    const v3, 0xff00

    and-int v3, v25, v3

    const/16 v8, 0x300

    if-eq v3, v8, :cond_8

    const/4 v8, 0x1

    goto :goto_3

    :cond_8
    const/4 v8, 0x0

    .line 936
    .local v8, "userStartedInteracting":Z
    :goto_3
    iget-object v3, v10, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget v14, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v15, v1

    .end local v1    # "appHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .local v15, "appHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    move-object/from16 v1, p0

    move/from16 v16, v2

    .end local v2    # "prevBucket":I
    .local v16, "prevBucket":I
    move-object v2, v3

    move/from16 v3, p4

    move v13, v4

    move-object/from16 v18, v5

    move-wide/from16 v4, p2

    move v6, v14

    move/from16 v7, v26

    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 939
    if-eqz v0, :cond_9

    .line 940
    iget-object v1, v10, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v9, v1, v13, v2}, Lcom/android/server/usage/AppStandbyController;->notifyBatteryStats(Ljava/lang/String;IZ)V

    .line 943
    .end local v0    # "previouslyIdle":Z
    .end local v8    # "userStartedInteracting":Z
    .end local v11    # "nextCheckTime":J
    .end local v15    # "appHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .end local v16    # "prevBucket":I
    .end local v25    # "prevBucketReason":I
    .end local v26    # "reason":I
    .end local v27    # "subReason":I
    :cond_9
    :goto_4
    monitor-exit v18

    .line 944
    return-void

    .line 943
    :catchall_0
    move-exception v0

    move v13, v4

    move-object/from16 v18, v5

    :goto_5
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5
.end method

.method reportExemptedSyncScheduled(Ljava/lang/String;I)V
    .locals 25
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 444
    move-object/from16 v9, p0

    iget-boolean v0, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 450
    :cond_0
    iget-object v0, v9, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->isDeviceIdleMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 452
    const/16 v0, 0xa

    .line 453
    .local v0, "bucketToPromote":I
    const/16 v1, 0xb

    .line 454
    .local v1, "usageReason":I
    iget-wide v2, v9, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    move/from16 v19, v0

    move/from16 v20, v1

    move-wide/from16 v21, v2

    .local v2, "durationMillis":J
    goto :goto_0

    .line 457
    .end local v0    # "bucketToPromote":I
    .end local v1    # "usageReason":I
    .end local v2    # "durationMillis":J
    :cond_1
    const/16 v0, 0x14

    .line 458
    .restart local v0    # "bucketToPromote":I
    const/16 v1, 0xc

    .line 459
    .restart local v1    # "usageReason":I
    iget-wide v2, v9, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    move/from16 v19, v0

    move/from16 v20, v1

    move-wide/from16 v21, v2

    .line 462
    .end local v0    # "bucketToPromote":I
    .end local v1    # "usageReason":I
    .local v19, "bucketToPromote":I
    .local v20, "usageReason":I
    .local v21, "durationMillis":J
    :goto_0
    iget-object v0, v9, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v23

    .line 464
    .local v23, "elapsedRealtime":J
    iget-object v8, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v8

    .line 465
    :try_start_0
    iget-object v10, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const-wide/16 v15, 0x0

    add-long v17, v23, v21

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, v19

    move/from16 v14, v20

    invoke-virtual/range {v10 .. v18}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 469
    .local v0, "appUsage":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    iget v6, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    iget v7, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, v23

    move-object v11, v8

    move v8, v10

    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 471
    .end local v0    # "appUsage":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    monitor-exit v11

    .line 472
    return-void

    .line 471
    :catchall_0
    move-exception v0

    move-object v11, v8

    :goto_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method reportExemptedSyncStart(Ljava/lang/String;I)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 494
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v9

    .line 498
    .local v9, "elapsedRealtime":J
    iget-object v11, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v11

    .line 499
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/16 v3, 0xa

    const/16 v4, 0xd

    const-wide/16 v5, 0x0

    iget-wide v1, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    add-long v7, v9, v1

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 503
    .local v0, "appUsage":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    iget v6, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    iget v7, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, v9

    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 505
    .end local v0    # "appUsage":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    monitor-exit v11

    .line 506
    return-void

    .line 505
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method reportUnexemptedSyncScheduled(Ljava/lang/String;I)V
    .locals 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 475
    move-object/from16 v9, p0

    iget-boolean v0, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 477
    :cond_0
    iget-object v0, v9, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v10

    .line 478
    .local v10, "elapsedRealtime":J
    iget-object v12, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v12

    .line 479
    :try_start_0
    iget-object v0, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 480
    move-object/from16 v8, p1

    move/from16 v7, p2

    invoke-virtual {v0, v8, v7, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v0

    .line 481
    .local v0, "currentBucket":I
    const/16 v1, 0x32

    if-ne v0, v1, :cond_1

    .line 483
    iget-object v13, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/16 v16, 0x14

    const/16 v17, 0xe

    const-wide/16 v18, 0x0

    iget-wide v1, v9, Lcom/android/server/usage/AppStandbyController;->mUnexemptedSyncScheduledTimeoutMillis:J

    add-long v20, v10, v1

    move-object/from16 v14, p1

    move/from16 v15, p2

    invoke-virtual/range {v13 .. v21}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v1

    move-object v13, v1

    .line 487
    .local v13, "appUsage":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    iget v6, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    iget v14, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide v4, v10

    move v7, v14

    move v8, v15

    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 490
    .end local v0    # "currentBucket":I
    .end local v13    # "appUsage":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    :cond_1
    monitor-exit v12

    .line 491
    return-void

    .line 490
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setActiveAdminApps(Ljava/util/Set;I)V
    .locals 2
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1302
    .local p1, "adminPkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1303
    if-nez p1, :cond_0

    .line 1304
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 1306
    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1308
    :goto_0
    monitor-exit v0

    .line 1309
    return-void

    .line 1308
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setAppIdleAsync(Ljava/lang/String;ZI)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "idle"    # Z
    .param p3, "userId"    # I

    .line 1193
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1195
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p3, p2, p1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1196
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1197
    return-void

    .line 1193
    :cond_1
    :goto_0
    return-void
.end method

.method setAppIdleEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 363
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 364
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-eq v1, p1, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isParoledOrCharging()Z

    move-result v1

    .line 366
    .local v1, "oldParoleState":Z
    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    .line 367
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isParoledOrCharging()Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 368
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->postParoleStateChanged()V

    .line 371
    .end local v1    # "oldParoleState":Z
    :cond_0
    monitor-exit v0

    .line 372
    return-void

    .line 371
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setAppIdleParoled(Z)V
    .locals 6
    .param p1, "paroled"    # Z

    .line 540
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 541
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->currentTimeMillis()J

    move-result-wide v1

    .line 542
    .local v1, "now":J
    iget-boolean v3, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleTempParoled:Z

    if-eq v3, p1, :cond_2

    .line 543
    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleTempParoled:Z

    .line 544
    sget-boolean v3, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "AppStandbyController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Changing paroled to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleTempParoled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_0
    if-eqz p1, :cond_1

    .line 546
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->postParoleEndTimeout()V

    goto :goto_0

    .line 548
    :cond_1
    iput-wide v1, p0, Lcom/android/server/usage/AppStandbyController;->mLastAppIdleParoledTime:J

    .line 549
    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/usage/AppStandbyController;->postNextParoleTimeout(JZ)V

    .line 551
    :goto_0
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->postParoleStateChanged()V

    .line 553
    .end local v1    # "now":J
    :cond_2
    monitor-exit v0

    .line 554
    return-void

    .line 553
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setAppStandbyBucket(Ljava/lang/String;IIIJ)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "newBucket"    # I
    .param p4, "reason"    # I
    .param p5, "elapsedRealtime"    # J

    .line 1219
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(Ljava/lang/String;IIIJZ)V

    .line 1220
    return-void
.end method

.method setAppStandbyBucket(Ljava/lang/String;IIIJZ)V
    .locals 18
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "newBucket"    # I
    .param p4, "reason"    # I
    .param p5, "elapsedRealtime"    # J
    .param p7, "resetTimeout"    # Z

    .line 1224
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v1, p3

    move-wide/from16 v12, p5

    iget-object v14, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1226
    :try_start_0
    iget-object v0, v9, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const/4 v2, 0x0

    invoke-virtual {v0, v10, v2, v11}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageInstalled(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1227
    monitor-exit v14

    return-void

    .line 1229
    :cond_0
    iget-object v0, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v0, v10, v11, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 1231
    .local v0, "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    const v3, 0xff00

    and-int v4, p4, v3

    const/16 v5, 0x500

    if-ne v4, v5, :cond_1

    const/4 v2, 0x1

    :cond_1
    move v15, v2

    .line 1234
    .local v15, "predicted":Z
    iget v2, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v4, 0xa

    if-ge v2, v4, :cond_2

    monitor-exit v14

    return-void

    .line 1237
    :cond_2
    iget v2, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v5, 0x32

    if-eq v2, v5, :cond_3

    if-ne v1, v5, :cond_4

    :cond_3
    if-eqz v15, :cond_4

    .line 1240
    monitor-exit v14

    return-void

    .line 1244
    :cond_4
    iget v2, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    and-int/2addr v2, v3

    const/16 v3, 0x400

    if-ne v2, v3, :cond_5

    if-eqz v15, :cond_5

    monitor-exit v14

    return-void

    .line 1248
    :cond_5
    if-eqz v15, :cond_9

    .line 1250
    iget-object v2, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v2, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v2

    .line 1253
    .local v2, "elapsedTimeAdjusted":J
    iget-object v5, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v5, v0, v2, v3, v1}, Lcom/android/server/usage/AppIdleHistory;->updateLastPrediction(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;JI)V

    .line 1255
    if-le v1, v4, :cond_7

    iget-wide v4, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    cmp-long v4, v4, v2

    if-lez v4, :cond_7

    .line 1257
    const/16 v1, 0xa

    .line 1258
    .end local p3    # "newBucket":I
    .local v1, "newBucket":I
    :try_start_1
    iget v4, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1259
    .end local p4    # "reason":I
    .local v4, "reason":I
    :try_start_2
    sget-boolean v5, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v5, :cond_6

    .line 1260
    const-string v5, "AppStandbyController"

    const-string v6, "    Keeping at ACTIVE due to min timeout"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1276
    .end local v2    # "elapsedTimeAdjusted":J
    :cond_6
    :goto_0
    move/from16 v16, v1

    move/from16 v17, v4

    goto :goto_2

    .line 1278
    .end local v0    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .end local v4    # "reason":I
    .end local v15    # "predicted":Z
    .restart local p4    # "reason":I
    :catchall_0
    move-exception v0

    move/from16 v4, p4

    goto :goto_3

    .line 1262
    .end local v1    # "newBucket":I
    .restart local v0    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .restart local v2    # "elapsedTimeAdjusted":J
    .restart local v15    # "predicted":Z
    .restart local p3    # "newBucket":I
    :cond_7
    const/16 v4, 0x14

    if-le v1, v4, :cond_9

    :try_start_3
    iget-wide v4, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    cmp-long v4, v4, v2

    if-lez v4, :cond_9

    .line 1264
    const/16 v1, 0x14

    .line 1265
    .end local p3    # "newBucket":I
    .restart local v1    # "newBucket":I
    :try_start_4
    iget v4, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-eq v4, v1, :cond_8

    .line 1266
    const/16 v4, 0x307

    .end local p4    # "reason":I
    .restart local v4    # "reason":I
    goto :goto_1

    .line 1268
    .end local v4    # "reason":I
    .restart local p4    # "reason":I
    :cond_8
    iget v4, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1270
    .end local p4    # "reason":I
    .restart local v4    # "reason":I
    :goto_1
    :try_start_5
    sget-boolean v5, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v5, :cond_6

    .line 1271
    const-string v5, "AppStandbyController"

    const-string v6, "    Keeping at WORKING_SET due to min timeout"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_0

    .line 1276
    .end local v1    # "newBucket":I
    .end local v2    # "elapsedTimeAdjusted":J
    .end local v4    # "reason":I
    .restart local p3    # "newBucket":I
    .restart local p4    # "reason":I
    :cond_9
    move/from16 v17, p4

    move/from16 v16, v1

    .end local p3    # "newBucket":I
    .end local p4    # "reason":I
    .local v16, "newBucket":I
    .local v17, "reason":I
    :goto_2
    :try_start_6
    iget-object v1, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p5

    move/from16 v6, v16

    move/from16 v7, v17

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJIIZ)V

    .line 1278
    .end local v0    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .end local v15    # "predicted":Z
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1279
    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p5

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 1280
    return-void

    .line 1278
    :catchall_1
    move-exception v0

    move/from16 v1, v16

    move/from16 v4, v17

    goto :goto_3

    .end local v16    # "newBucket":I
    .end local v17    # "reason":I
    .restart local p3    # "newBucket":I
    .restart local p4    # "reason":I
    :catchall_2
    move-exception v0

    move/from16 v4, p4

    .end local p3    # "newBucket":I
    .end local p4    # "reason":I
    .restart local v1    # "newBucket":I
    .restart local v4    # "reason":I
    :goto_3
    :try_start_7
    monitor-exit v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_3
.end method

.method setChargingState(Z)V
    .locals 6
    .param p1, "charging"    # Z

    .line 509
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 510
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mCharging:Z

    if-eq v1, p1, :cond_3

    .line 511
    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mCharging:Z

    .line 512
    sget-boolean v1, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "AppStandbyController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting mCharging to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_0
    const/16 v1, 0xe

    if-eqz p1, :cond_2

    .line 514
    sget-boolean v2, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 515
    const-string v2, "AppStandbyController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheduling MSG_UPDATE_STABLE_CHARGING  delay = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/usage/AppStandbyController;->mStableChargingThresholdMillis:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_1
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    iget-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mStableChargingThresholdMillis:J

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 521
    :cond_2
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->removeMessages(I)V

    .line 522
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->updateChargingStableState()V

    .line 525
    :cond_3
    :goto_0
    monitor-exit v0

    .line 526
    return-void

    .line 525
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLastJobRunTime(Ljava/lang/String;IJ)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .line 995
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 996
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->setLastJobRunTime(Ljava/lang/String;IJ)V

    .line 997
    monitor-exit v0

    .line 998
    return-void

    .line 997
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateChargingStableState()V
    .locals 4

    .line 529
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 530
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mChargingStable:Z

    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mCharging:Z

    if-eq v1, v2, :cond_1

    .line 531
    sget-boolean v1, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "AppStandbyController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting mChargingStable to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/usage/AppStandbyController;->mCharging:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mCharging:Z

    iput-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mChargingStable:Z

    .line 533
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->postParoleStateChanged()V

    .line 535
    :cond_1
    monitor-exit v0

    .line 536
    return-void

    .line 535
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
