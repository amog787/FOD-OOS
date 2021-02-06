.class public Lcom/android/server/usage/AppStandbyController;
.super Ljava/lang/Object;
.source "AppStandbyController.java"

# interfaces
.implements Lcom/android/server/usage/AppStandbyInternal;


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

.field private static final ELAPSED_TIME_THRESHOLDS:[J

.field private static final HEADLESS_APP_CHECK_FLAGS:I = 0xc0201

.field private static final MINIMUM_ELAPSED_TIME_THRESHOLDS:[J

.field private static final MINIMUM_SCREEN_TIME_THRESHOLDS:[J

.field static final MSG_CHECK_IDLE_STATES:I = 0x5

.field static final MSG_CHECK_PACKAGE_IDLE_STATE:I = 0xb

.field static final MSG_FORCE_IDLE_STATE:I = 0x4

.field static final MSG_INFORM_LISTENERS:I = 0x3

.field static final MSG_ONE_TIME_CHECK_IDLE_STATES:I = 0xa

.field static final MSG_PAROLE_STATE_CHANGED:I = 0x9

.field static final MSG_REPORT_CONTENT_PROVIDER_USAGE:I = 0x8

.field static final MSG_REPORT_EXEMPTED_SYNC_START:I = 0xd

.field static final MSG_REPORT_SYNC_SCHEDULED:I = 0xc

.field private static final NETWORK_SCORER_CACHE_DURATION_MILLIS:J = 0x1388L

.field private static final ONE_DAY:J = 0x5265c00L

.field private static final ONE_HOUR:J = 0x36ee80L

.field private static final ONE_MINUTE:J = 0xea60L

.field private static final SCREEN_TIME_THRESHOLDS:[J

.field private static final TAG:Ljava/lang/String; = "AppStandbyController"

.field private static final THRESHOLD_BUCKETS:[I

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

.field private mAllowRestrictedBucket:Z

.field private volatile mAppIdleEnabled:Z

.field private mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

.field private final mAppIdleLock:Ljava/lang/Object;

.field mAppStandbyElapsedThresholds:[J

.field mAppStandbyScreenThresholds:[J

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private volatile mCachedNetworkScorer:Ljava/lang/String;

.field private volatile mCachedNetworkScorerAtMillis:J

.field private mCarrierPrivilegedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCheckIdleIntervalMillis:J

.field private final mContext:Landroid/content/Context;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field mExemptedSyncScheduledDozeTimeoutMillis:J

.field mExemptedSyncScheduledNonDozeTimeoutMillis:J

.field mExemptedSyncStartTimeoutMillis:J

.field private final mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

.field private mHaveCarrierPrivilegedApps:Z

.field private final mHeadlessSystemApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mInitialForegroundServiceStartTimeoutMillis:J

.field mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

.field private mIsCharging:Z

.field mLinkCrossProfileApps:Z

.field mNotificationSeenTimeoutMillis:J

.field private final mPackageAccessListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPendingInitializeDefaults:Z

.field private volatile mPendingOneTimeCheckIdleStates:Z

.field mPredictionTimeoutMillis:J

.field mStrongUsageTimeoutMillis:J

.field mSyncAdapterTimeoutMillis:J

.field mSystemInteractionTimeoutMillis:J

.field private mSystemServicesReady:Z

.field mSystemUpdateUsageTimeoutMillis:J

.field mUnexemptedSyncScheduledTimeoutMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 145
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    .line 157
    const/4 v0, 0x5

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->SCREEN_TIME_THRESHOLDS:[J

    .line 166
    new-array v1, v0, [J

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->MINIMUM_SCREEN_TIME_THRESHOLDS:[J

    .line 180
    new-array v1, v0, [J

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->ELAPSED_TIME_THRESHOLDS:[J

    .line 189
    new-array v1, v0, [J

    fill-array-data v1, :array_3

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->MINIMUM_ELAPSED_TIME_THRESHOLDS:[J

    .line 199
    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/server/usage/AppStandbyController;->sStandbyUpdatePool:Ljava/util/ArrayList;

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x36ee80
        0x6ddd00
        0x1499700
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x0
        0x1b7740
        0x36ee80
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x2932e00
        0x5265c00
        0xa4cb800
        0x9a7ec800L
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x36ee80
        0x36ee80
        0x6ddd00
        0x14997000
    .end array-data

    :array_4
    .array-data 4
        0xa
        0x14
        0x1e
        0x28
        0x2d
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 397
    new-instance v0, Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-direct {v0, p1, p2}, Lcom/android/server/usage/AppStandbyController$Injector;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Lcom/android/server/usage/AppStandbyController;-><init>(Lcom/android/server/usage/AppStandbyController$Injector;)V

    .line 398
    return-void
.end method

.method constructor <init>(Lcom/android/server/usage/AppStandbyController$Injector;)V
    .locals 10
    .param p1, "injector"    # Lcom/android/server/usage/AppStandbyController$Injector;

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    new-instance v0, Lcom/android/server/usage/AppStandbyController$Lock;

    invoke-direct {v0}, Lcom/android/server/usage/AppStandbyController$Lock;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    .line 240
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    .line 247
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    .line 250
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorer:Ljava/lang/String;

    .line 255
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorerAtMillis:J

    .line 277
    sget-object v1, Lcom/android/server/usage/AppStandbyController;->SCREEN_TIME_THRESHOLDS:[J

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    .line 282
    sget-object v1, Lcom/android/server/usage/AppStandbyController;->ELAPSED_TIME_THRESHOLDS:[J

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    .line 334
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    .line 2274
    new-instance v1, Lcom/android/server/usage/AppStandbyController$1;

    invoke-direct {v1, p0}, Lcom/android/server/usage/AppStandbyController$1;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 401
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 402
    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    .line 403
    new-instance v1, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;-><init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 404
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 406
    new-instance v1, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;

    invoke-direct {v1, p0, v0}, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;-><init>(Lcom/android/server/usage/AppStandbyController;Lcom/android/server/usage/AppStandbyController$1;)V

    .line 407
    .local v1, "deviceStateReceiver":Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.os.action.CHARGING"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 408
    .local v2, "deviceStates":Landroid/content/IntentFilter;
    const-string v3, "android.os.action.DISCHARGING"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 409
    const-string v3, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 410
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 412
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v3

    .line 413
    :try_start_0
    new-instance v4, Lcom/android/server/usage/AppIdleHistory;

    iget-object v5, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v5}, Lcom/android/server/usage/AppStandbyController$Injector;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 414
    invoke-virtual {v6}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v6

    invoke-direct {v4, v5, v6, v7}, Lcom/android/server/usage/AppIdleHistory;-><init>(Ljava/io/File;J)V

    iput-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 415
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 418
    .local v3, "packageFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 419
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 420
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 421
    const-string v4, "package"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 423
    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/usage/AppStandbyController$PackageReceiver;

    invoke-direct {v5, p0, v0}, Lcom/android/server/usage/AppStandbyController$PackageReceiver;-><init>(Lcom/android/server/usage/AppStandbyController;Lcom/android/server/usage/AppStandbyController$1;)V

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    move-object v7, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 425
    return-void

    .line 415
    .end local v3    # "packageFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic access$1000(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usage/AppStandbyController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->reportExemptedSyncScheduled(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usage/AppStandbyController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->reportUnexemptedSyncScheduled(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usage/AppStandbyController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->reportExemptedSyncStart(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/usage/AppStandbyController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usage/AppStandbyController;

    .line 135
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/usage/AppStandbyController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usage/AppStandbyController;

    .line 135
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->updatePowerWhitelistCache()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/usage/AppStandbyController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usage/AppStandbyController;

    .line 135
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->isDisplayOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/usage/AppStandbyController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usage/AppStandbyController;

    .line 135
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppIdleHistory;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usage/AppStandbyController;

    .line 135
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/usage/AppStandbyController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usage/AppStandbyController;

    .line 135
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900()[J
    .locals 1

    .line 135
    sget-object v0, Lcom/android/server/usage/AppStandbyController;->SCREEN_TIME_THRESHOLDS:[J

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usage/AppStandbyController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->evaluateSystemAppException(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2000()[J
    .locals 1

    .line 135
    sget-object v0, Lcom/android/server/usage/AppStandbyController;->MINIMUM_SCREEN_TIME_THRESHOLDS:[J

    return-object v0
.end method

.method static synthetic access$2100()[J
    .locals 1

    .line 135
    sget-object v0, Lcom/android/server/usage/AppStandbyController;->ELAPSED_TIME_THRESHOLDS:[J

    return-object v0
.end method

.method static synthetic access$2200()[J
    .locals 1

    .line 135
    sget-object v0, Lcom/android/server/usage/AppStandbyController;->MINIMUM_ELAPSED_TIME_THRESHOLDS:[J

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/usage/AppStandbyController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usage/AppStandbyController;
    .param p1, "x1"    # Z

    .line 135
    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mAllowRestrictedBucket:Z

    return p1
.end method

.method static synthetic access$2400()[I
    .locals 1

    .line 135
    sget-object v0, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usage/AppStandbyController;

    .line 135
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;IIIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usage/AppStandbyController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Z

    .line 135
    invoke-direct/range {p0 .. p5}, Lcom/android/server/usage/AppStandbyController;->informListeners(Ljava/lang/String;IIIZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/usage/AppStandbyController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usage/AppStandbyController;

    .line 135
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/usage/AppStandbyController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usage/AppStandbyController;

    .line 135
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->waitForAdminData()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usage/AppStandbyController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 135
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyController;->reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/usage/AppStandbyController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usage/AppStandbyController;

    .line 135
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->informParoleStateChanged()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;IIJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usage/AppStandbyController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # J

    .line 135
    invoke-direct/range {p0 .. p5}, Lcom/android/server/usage/AppStandbyController;->checkAndUpdateStandbyState(Ljava/lang/String;IIJ)V

    return-void
.end method

.method private checkAndUpdateStandbyState(Ljava/lang/String;IIJ)V
    .locals 25
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I
    .param p4, "elapsedRealtime"    # J

    .line 697
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-wide/from16 v12, p4

    if-gtz p3, :cond_0

    .line 699
    :try_start_0
    iget-object v0, v9, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v10, v11}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    .end local p3    # "uid":I
    .local v0, "uid":I
    move v14, v0

    goto :goto_0

    .line 700
    .end local v0    # "uid":I
    .restart local p3    # "uid":I
    :catch_0
    move-exception v0

    .line 703
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-void

    .line 697
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move/from16 v14, p3

    .line 706
    .end local p3    # "uid":I
    .local v14, "uid":I
    :goto_0
    nop

    .line 707
    invoke-static {v14}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 706
    invoke-direct {v9, v10, v0, v11}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(Ljava/lang/String;II)I

    move-result v15

    .line 709
    .local v15, "minBucket":I
    sget-boolean v0, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   Checking idle state for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " minBucket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStandbyController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_1
    const/16 v0, 0xa

    if-gt v15, v0, :cond_2

    .line 716
    iget-object v8, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v8

    .line 717
    :try_start_1
    iget-object v1, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/16 v7, 0x100

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p4

    move v6, v15

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJII)V

    .line 719
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 720
    const/16 v7, 0x100

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p4

    move v6, v15

    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    goto/16 :goto_8

    .line 719
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 723
    :cond_2
    iget-object v8, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v8

    .line 724
    :try_start_3
    iget-object v1, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 725
    invoke-virtual {v1, v10, v11, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v1

    move-object v7, v1

    .line 727
    .local v7, "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    iget v1, v7, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 728
    .local v1, "reason":I
    const v2, 0xff00

    and-int v6, v1, v2

    .line 732
    .local v6, "oldMainReason":I
    const/16 v2, 0x400

    if-ne v6, v2, :cond_3

    .line 733
    monitor-exit v8

    return-void

    .line 735
    :cond_3
    iget v2, v7, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    move v4, v2

    .line 736
    .local v4, "oldBucket":I
    const/16 v2, 0x32

    if-ne v4, v2, :cond_4

    .line 738
    monitor-exit v8

    return-void

    .line 740
    :cond_4
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 741
    .local v2, "newBucket":I
    invoke-direct {v9, v7, v12, v13}, Lcom/android/server/usage/AppStandbyController;->predictionTimedOut(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;J)Z

    move-result v3

    move/from16 v16, v3

    .line 743
    .local v16, "predictionLate":Z
    const/16 v3, 0x100

    if-eq v6, v3, :cond_5

    const/16 v3, 0x300

    if-eq v6, v3, :cond_5

    const/16 v3, 0x200

    if-eq v6, v3, :cond_5

    if-eqz v16, :cond_8

    .line 748
    :cond_5
    if-nez v16, :cond_6

    iget v3, v7, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    if-lt v3, v0, :cond_6

    iget v3, v7, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    const/16 v5, 0x28

    if-gt v3, v5, :cond_6

    .line 750
    iget v3, v7, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    move v2, v3

    .line 751
    const/16 v1, 0x501

    .line 752
    sget-boolean v3, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v3, :cond_8

    .line 753
    const-string v3, "AppStandbyController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Restored predicted newBucket = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 756
    :cond_6
    invoke-direct {v9, v10, v11, v12, v13}, Lcom/android/server/usage/AppStandbyController;->getBucketForLocked(Ljava/lang/String;IJ)I

    move-result v0

    move v2, v0

    .line 758
    sget-boolean v0, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 759
    const-string v0, "AppStandbyController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Evaluated AOSP newBucket = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_7
    const/16 v1, 0x200

    .line 766
    :cond_8
    :goto_1
    iget-object v0, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v0, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v17

    .line 767
    .local v17, "elapsedTimeAdjusted":J
    const/16 v0, 0xa

    if-lt v2, v0, :cond_9

    move/from16 p3, v1

    .end local v1    # "reason":I
    .local p3, "reason":I
    iget-wide v0, v7, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    cmp-long v0, v0, v17

    if-lez v0, :cond_a

    .line 769
    const/16 v2, 0xa

    .line 770
    iget v0, v7, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    move v1, v0

    .line 771
    .end local p3    # "reason":I
    .restart local v1    # "reason":I
    sget-boolean v0, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v0, :cond_d

    .line 772
    const-string v0, "AppStandbyController"

    const-string v3, "    Keeping at ACTIVE due to min timeout"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 767
    :cond_9
    move/from16 p3, v1

    .line 774
    .end local v1    # "reason":I
    .restart local p3    # "reason":I
    :cond_a
    const/16 v0, 0x14

    if-lt v2, v0, :cond_c

    iget-wide v0, v7, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    cmp-long v0, v0, v17

    if-lez v0, :cond_c

    .line 776
    const/16 v2, 0x14

    .line 778
    if-ne v2, v4, :cond_b

    .line 779
    iget v0, v7, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    goto :goto_2

    .line 780
    :cond_b
    const/16 v0, 0x307

    :goto_2
    move v1, v0

    .line 781
    .end local p3    # "reason":I
    .restart local v1    # "reason":I
    sget-boolean v0, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v0, :cond_d

    .line 782
    const-string v0, "AppStandbyController"

    const-string v3, "    Keeping at WORKING_SET due to min timeout"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 786
    .end local v1    # "reason":I
    .restart local p3    # "reason":I
    :cond_c
    move/from16 v1, p3

    .end local p3    # "reason":I
    .restart local v1    # "reason":I
    :cond_d
    :goto_3
    move/from16 p3, v1

    .end local v1    # "reason":I
    .restart local p3    # "reason":I
    iget-wide v0, v7, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    move v5, v2

    .end local v2    # "newBucket":I
    .local v5, "newBucket":I
    iget-wide v2, v7, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    iget-wide v0, v7, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    sub-long v0, v17, v0

    iget-object v2, v9, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 788
    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->getAutoRestrictedBucketDelayMs()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_f

    .line 789
    const/16 v2, 0x2d

    .line 790
    .end local v5    # "newBucket":I
    .restart local v2    # "newBucket":I
    iget v0, v7, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I

    move v1, v0

    .line 791
    .end local p3    # "reason":I
    .restart local v1    # "reason":I
    sget-boolean v0, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v0, :cond_e

    .line 792
    const-string v0, "AppStandbyController"

    const-string v3, "Bringing down to RESTRICTED due to timeout"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_e
    move v0, v1

    goto :goto_4

    .end local v1    # "reason":I
    .end local v2    # "newBucket":I
    .restart local v5    # "newBucket":I
    .restart local p3    # "reason":I
    :cond_f
    move/from16 v0, p3

    move v2, v5

    .end local v5    # "newBucket":I
    .end local p3    # "reason":I
    .local v0, "reason":I
    .restart local v2    # "newBucket":I
    :goto_4
    const/16 v1, 0x2d

    if-ne v2, v1, :cond_10

    iget-boolean v1, v9, Lcom/android/server/usage/AppStandbyController;->mAllowRestrictedBucket:Z

    if-nez v1, :cond_10

    .line 796
    const/16 v2, 0x28

    .line 798
    sget-boolean v1, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v1, :cond_10

    .line 799
    const-string v1, "AppStandbyController"

    const-string v3, "Bringing up from RESTRICTED to RARE due to off switch"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_10
    if-le v2, v15, :cond_12

    .line 803
    move v2, v15

    .line 805
    sget-boolean v1, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v1, :cond_11

    .line 806
    const-string v1, "AppStandbyController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bringing up from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " due to min bucketing"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_11
    move v5, v2

    goto :goto_5

    .line 802
    :cond_12
    move v5, v2

    .line 810
    .end local v2    # "newBucket":I
    .restart local v5    # "newBucket":I
    :goto_5
    sget-boolean v1, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v1, :cond_13

    .line 811
    const-string v1, "AppStandbyController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "     Old bucket="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", newBucket="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_13
    if-ne v4, v5, :cond_15

    if-eqz v16, :cond_14

    goto :goto_6

    :cond_14
    move-object/from16 v24, v8

    goto :goto_7

    .line 815
    :cond_15
    :goto_6
    iget-object v1, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v19, v4

    move/from16 v20, v5

    .end local v4    # "oldBucket":I
    .end local v5    # "newBucket":I
    .local v19, "oldBucket":I
    .local v20, "newBucket":I
    move-wide/from16 v4, p4

    move/from16 v21, v6

    .end local v6    # "oldMainReason":I
    .local v21, "oldMainReason":I
    move/from16 v6, v20

    move-object/from16 v22, v7

    .end local v7    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .local v22, "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    move v7, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 817
    const/16 v23, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p4

    move/from16 v6, v20

    move v7, v0

    move-object/from16 v24, v8

    move/from16 v8, v23

    :try_start_4
    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 820
    .end local v0    # "reason":I
    .end local v16    # "predictionLate":Z
    .end local v17    # "elapsedTimeAdjusted":J
    .end local v19    # "oldBucket":I
    .end local v20    # "newBucket":I
    .end local v21    # "oldMainReason":I
    .end local v22    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    :goto_7
    monitor-exit v24

    .line 822
    :goto_8
    return-void

    .line 820
    :catchall_1
    move-exception v0

    move-object/from16 v24, v8

    :goto_9
    monitor-exit v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_9
.end method

.method private evaluateSystemAppException(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1776
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    if-nez v0, :cond_0

    .line 1778
    return-void

    .line 1781
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const v1, 0xc0201

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1783
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v0}, Lcom/android/server/usage/AppStandbyController;->evaluateSystemAppException(Landroid/content/pm/PackageInfo;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1788
    nop

    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 1784
    :catch_0
    move-exception v0

    .line 1785
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    monitor-enter v1

    .line 1786
    :try_start_1
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1787
    monitor-exit v1

    .line 1789
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return-void

    .line 1787
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private evaluateSystemAppException(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;

    .line 1793
    if-eqz p1, :cond_3

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1794
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1795
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1798
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    monitor-enter v0

    .line 1799
    :try_start_0
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v1, v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1803
    :cond_1
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1801
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1805
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1796
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private fetchCarrierPrivilegedAppsLocked()V
    .locals 3

    .line 1645
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    .line 1646
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1647
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    nop

    .line 1648
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCarrierPrivilegedPackagesForAllActiveSubscriptions()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    .line 1649
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    .line 1650
    sget-boolean v1, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1651
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

    .line 1653
    :cond_0
    return-void
.end method

.method private getAppMinBucket(Ljava/lang/String;I)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1080
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 1081
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(Ljava/lang/String;II)I

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1082
    .end local v0    # "uid":I
    :catch_0
    move-exception v0

    .line 1084
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v1, 0x32

    return v1
.end method

.method private getAppMinBucket(Ljava/lang/String;II)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    .line 1093
    const/16 v0, 0x32

    if-nez p1, :cond_0

    return v0

    .line 1095
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    const/4 v2, 0x5

    if-nez v1, :cond_1

    .line 1096
    return v2

    .line 1098
    :cond_1
    const/16 v1, 0x2710

    if-ge p2, v1, :cond_2

    .line 1100
    return v2

    .line 1102
    :cond_2
    const-string v1, "android"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1105
    return v2

    .line 1107
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    const/16 v3, 0xa

    if-eqz v1, :cond_8

    .line 1111
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isNonIdleWhitelisted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1112
    return v2

    .line 1115
    :cond_4
    invoke-virtual {p0, p1, p3}, Lcom/android/server/usage/AppStandbyController;->isActiveDeviceAdmin(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1116
    return v2

    .line 1119
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppStandbyController;->isActiveNetworkScorer(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1120
    return v2

    .line 1123
    :cond_6
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    if-eqz v1, :cond_7

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1124
    invoke-virtual {v4, v1, p1, p3}, Lcom/android/server/usage/AppStandbyController$Injector;->isBoundWidgetPackage(Landroid/appwidget/AppWidgetManager;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1125
    return v3

    .line 1128
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppStandbyController;->isDeviceProvisioningPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1129
    return v2

    .line 1134
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppStandbyController;->isCarrierApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1135
    return v2

    .line 1138
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppStandbyController;->isHeadlessSystemApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1139
    return v3

    .line 1142
    :cond_a
    return v0
.end method

.method private getBucketForLocked(Ljava/lang/String;IJ)I
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .line 856
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v5, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    iget-object v6, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/AppIdleHistory;->getThresholdIndex(Ljava/lang/String;IJ[J[J)I

    move-result v0

    .line 858
    .local v0, "bucketIndex":I
    sget-object v1, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    aget v1, v1, v0

    return v1
.end method

.method private getCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 961
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 962
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mLinkCrossProfileApps:Z

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 963
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 964
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/AppStandbyController$Injector;->getValidCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 963
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private informListeners(Ljava/lang/String;IIIZ)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "bucket"    # I
    .param p4, "reason"    # I
    .param p5, "userInteraction"    # Z

    .line 1670
    const/16 v0, 0x28

    if-lt p3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    .line 1671
    .local v4, "idle":Z
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1672
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

    check-cast v1, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    move-object v8, v1

    .line 1673
    .local v8, "listener":Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
    move-object v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;->onAppIdleStateChanged(Ljava/lang/String;IZII)V

    .line 1674
    if-eqz p5, :cond_1

    .line 1675
    invoke-virtual {v8, p1, p2}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;->onUserInteractionStarted(Ljava/lang/String;I)V

    .line 1677
    .end local v8    # "listener":Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
    :cond_1
    goto :goto_1

    .line 1678
    :cond_2
    monitor-exit v0

    .line 1679
    return-void

    .line 1678
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private informParoleStateChanged()V
    .locals 4

    .line 1682
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isInParole()Z

    move-result v0

    .line 1683
    .local v0, "paroled":Z
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1684
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

    check-cast v3, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    .line 1685
    .local v3, "listener":Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
    invoke-virtual {v3, v0}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;->onParoleStateChanged(Z)V

    .line 1686
    .end local v3    # "listener":Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
    goto :goto_0

    .line 1687
    :cond_0
    monitor-exit v1

    .line 1688
    return-void

    .line 1687
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private isActiveNetworkScorer(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1659
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1660
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorer:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorerAtMillis:J

    const-wide/16 v4, 0x1388

    sub-long v4, v0, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 1662
    :cond_0
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->getActiveNetworkScorer()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorer:Ljava/lang/String;

    .line 1663
    iput-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorerAtMillis:J

    .line 1665
    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorer:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isAppIdleUnfiltered(Ljava/lang/String;IJ)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .line 1034
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1035
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->isIdle(Ljava/lang/String;IJ)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1036
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

    .line 1621
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1622
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    if-nez v1, :cond_0

    .line 1623
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->fetchCarrierPrivilegedAppsLocked()V

    .line 1625
    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 1626
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1628
    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1629
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

    .line 1615
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040212

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1617
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

.method private isDisplayOn()Z
    .locals 1

    .line 1700
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->isDefaultDisplayOn()Z

    move-result v0

    return v0
.end method

.method private isHeadlessSystemApp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1146
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    monitor-enter v0

    .line 1147
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1148
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static isUserUsage(I)Z
    .locals 3
    .param p0, "reason"    # I

    .line 1167
    const v0, 0xff00

    and-int/2addr v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x300

    if-ne v0, v2, :cond_2

    .line 1168
    and-int/lit16 v0, p0, 0xff

    .line 1169
    .local v0, "subReason":I
    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 1172
    .end local v0    # "subReason":I
    :cond_2
    return v1
.end method

.method public static synthetic lambda$J3RrF9pXWs15TjJGaLdogSJkcZI(Lcom/android/server/usage/AppStandbyController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->updatePowerWhitelistCache()V

    return-void
.end method

.method public static synthetic lambda$eFYmNoFgBdX9ZGJEOAzlovFS3-c(Lcom/android/server/usage/AppStandbyController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->loadHeadlessSystemAppCache()V

    return-void
.end method

.method private loadHeadlessSystemAppCache()V
    .locals 9

    .line 1842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading headless system app cache. appIdleEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStandbyController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const v1, 0xc0201

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    .line 1845
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1846
    .local v1, "packageCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1847
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 1848
    .local v4, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_0

    invoke-direct {p0, v4}, Lcom/android/server/usage/AppStandbyController;->evaluateSystemAppException(Landroid/content/pm/PackageInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1849
    iget-object v5, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v6, 0xb

    const/4 v7, -0x1

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v2, v7, v8}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1851
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 1846
    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1854
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method private maybeInformListeners(Ljava/lang/String;IJIIZ)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "bucket"    # I
    .param p6, "reason"    # I
    .param p7, "userStartedInteracting"    # Z

    .line 834
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 835
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppIdleHistory;->shouldInformListeners(Ljava/lang/String;IJI)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 837
    invoke-static {p1, p2, p5, p6, p7}, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->obtain(Ljava/lang/String;IIIZ)Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;

    move-result-object v1

    .line 839
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

    .line 840
    :cond_0
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 842
    .end local v1    # "r":Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;
    :cond_1
    monitor-exit v0

    .line 843
    return-void

    .line 842
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

    .line 863
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v0

    .line 865
    .local v0, "uid":I
    if-eqz p3, :cond_0

    .line 866
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/usage/AppStandbyController$Injector;->noteEvent(ILjava/lang/String;I)V

    goto :goto_0

    .line 869
    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/usage/AppStandbyController$Injector;->noteEvent(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    .end local v0    # "uid":I
    :goto_0
    goto :goto_1

    .line 872
    :catch_0
    move-exception v0

    .line 874
    :goto_1
    return-void
.end method

.method private postParoleStateChanged()V
    .locals 2

    .line 629
    sget-boolean v0, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AppStandbyController"

    const-string v1, "Posting MSG_PAROLE_STATE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->removeMessages(I)V

    .line 631
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendEmptyMessage(I)Z

    .line 632
    return-void
.end method

.method private predictionTimedOut(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;J)Z
    .locals 4
    .param p1, "app"    # Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .param p2, "elapsedRealtime"    # J

    .line 826
    iget-wide v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 827
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

    .line 826
    :goto_0
    return v0
.end method

.method private reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 24
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "providerPkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 490
    move-object/from16 v11, p0

    move/from16 v12, p3

    iget-boolean v0, v11, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 493
    :cond_0
    move-object/from16 v13, p1

    invoke-static {v13, v12}, Landroid/content/ContentResolver;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    .line 495
    .local v14, "packages":[Ljava/lang/String;
    iget-object v0, v11, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v15

    .line 496
    .local v15, "elapsedRealtime":J
    array-length v8, v14

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v8, :cond_4

    aget-object v6, v14, v9

    .line 500
    .local v6, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v0, v11, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v1, 0x100000

    invoke-virtual {v0, v6, v1, v12}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    move-object v7, v0

    .line 502
    .local v7, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v7, :cond_3

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_1

    move-object/from16 v17, v6

    move-object/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v9

    goto :goto_3

    .line 505
    :cond_1
    move-object/from16 v5, p2

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 506
    invoke-direct {v11, v6, v12}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    .line 508
    .local v10, "linkedProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    iget-object v4, v11, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 509
    const/16 v0, 0xa

    const/16 v17, 0x8

    :try_start_1
    iget-wide v2, v11, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v1, p0

    move-wide/from16 v18, v2

    move-object v2, v6

    move/from16 v3, p3

    move-object/from16 v20, v4

    move v4, v0

    move/from16 v5, v17

    move-object/from16 v17, v6

    move-object/from16 v21, v7

    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "pi":Landroid/content/pm/PackageInfo;
    .local v17, "packageName":Ljava/lang/String;
    .local v21, "pi":Landroid/content/pm/PackageInfo;
    move-wide v6, v15

    move/from16 v22, v8

    move/from16 v23, v9

    move-wide/from16 v8, v18

    :try_start_2
    invoke-direct/range {v1 .. v10}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V

    .line 512
    monitor-exit v20

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    .end local v17    # "packageName":Ljava/lang/String;
    .end local v21    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v7    # "pi":Landroid/content/pm/PackageInfo;
    :catchall_1
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v17, v6

    move-object/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v9

    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v17    # "packageName":Ljava/lang/String;
    .restart local v21    # "pi":Landroid/content/pm/PackageInfo;
    :goto_1
    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v14    # "packages":[Ljava/lang/String;
    .end local v15    # "elapsedRealtime":J
    .end local v17    # "packageName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/usage/AppStandbyController;
    .end local p1    # "authority":Ljava/lang/String;
    .end local p2    # "providerPkgName":Ljava/lang/String;
    .end local p3    # "userId":I
    :try_start_3
    throw v0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 514
    .end local v10    # "linkedProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .end local v21    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v14    # "packages":[Ljava/lang/String;
    .restart local v15    # "elapsedRealtime":J
    .restart local v17    # "packageName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/usage/AppStandbyController;
    .restart local p1    # "authority":Ljava/lang/String;
    .restart local p2    # "providerPkgName":Ljava/lang/String;
    .restart local p3    # "userId":I
    :catch_0
    move-exception v0

    goto :goto_4

    .line 505
    .end local v17    # "packageName":Ljava/lang/String;
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v7    # "pi":Landroid/content/pm/PackageInfo;
    :cond_2
    move-object/from16 v17, v6

    move-object/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v9

    .line 516
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v17    # "packageName":Ljava/lang/String;
    :goto_2
    goto :goto_4

    .line 502
    .end local v17    # "packageName":Ljava/lang/String;
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v7    # "pi":Landroid/content/pm/PackageInfo;
    :cond_3
    move-object/from16 v17, v6

    move-object/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v9

    .line 503
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v17    # "packageName":Ljava/lang/String;
    .restart local v21    # "pi":Landroid/content/pm/PackageInfo;
    :goto_3
    goto :goto_4

    .line 514
    .end local v17    # "packageName":Ljava/lang/String;
    .end local v21    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v6    # "packageName":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v17, v6

    move/from16 v22, v8

    move/from16 v23, v9

    .line 496
    .end local v6    # "packageName":Ljava/lang/String;
    :goto_4
    add-int/lit8 v9, v23, 0x1

    move/from16 v8, v22

    goto :goto_0

    .line 518
    :cond_4
    return-void
.end method

.method private reportEventLocked(Ljava/lang/String;IJI)V
    .locals 25
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "userId"    # I

    .line 906
    move-object/from16 v8, p0

    move-object/from16 v6, p1

    move/from16 v5, p2

    move-wide/from16 v3, p3

    move/from16 v2, p5

    iget-object v0, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v0, v6, v2, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->isIdle(Ljava/lang/String;IJ)Z

    move-result v19

    .line 909
    .local v19, "previouslyIdle":Z
    iget-object v0, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v0, v6, v2, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v1

    .line 911
    .local v1, "appHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    iget v0, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 912
    .local v0, "prevBucket":I
    iget v7, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 914
    .local v7, "prevBucketReason":I
    invoke-direct {v8, v5}, Lcom/android/server/usage/AppStandbyController;->usageEventToSubReason(I)I

    move-result v15

    .line 915
    .local v15, "subReason":I
    or-int/lit16 v14, v15, 0x300

    .line 916
    .local v14, "reason":I
    const/16 v13, 0xa

    if-eq v5, v13, :cond_4

    const/16 v9, 0xe

    if-ne v5, v9, :cond_0

    move/from16 v22, v7

    move v7, v13

    move/from16 v23, v14

    move/from16 v24, v15

    goto/16 :goto_0

    .line 923
    :cond_0
    const/4 v9, 0x6

    if-ne v5, v9, :cond_1

    .line 924
    iget-object v9, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/16 v16, 0xa

    const-wide/16 v17, 0x0

    iget-wide v10, v8, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    add-long v20, v3, v10

    move-object v10, v1

    move-object/from16 v11, p1

    move/from16 v12, p5

    move/from16 v22, v7

    move v7, v13

    .end local v7    # "prevBucketReason":I
    .local v22, "prevBucketReason":I
    move/from16 v13, v16

    move/from16 v23, v14

    .end local v14    # "reason":I
    .local v23, "reason":I
    move v14, v15

    move/from16 v24, v15

    .end local v15    # "subReason":I
    .local v24, "subReason":I
    move-wide/from16 v15, v17

    move-wide/from16 v17, v20

    invoke-virtual/range {v9 .. v18}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 927
    iget-wide v9, v8, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    .local v9, "nextCheckDelay":J
    goto :goto_1

    .line 928
    .end local v9    # "nextCheckDelay":J
    .end local v22    # "prevBucketReason":I
    .end local v23    # "reason":I
    .end local v24    # "subReason":I
    .restart local v7    # "prevBucketReason":I
    .restart local v14    # "reason":I
    .restart local v15    # "subReason":I
    :cond_1
    move/from16 v22, v7

    move v7, v13

    move/from16 v23, v14

    move/from16 v24, v15

    .end local v7    # "prevBucketReason":I
    .end local v14    # "reason":I
    .end local v15    # "subReason":I
    .restart local v22    # "prevBucketReason":I
    .restart local v23    # "reason":I
    .restart local v24    # "subReason":I
    const/16 v9, 0x13

    if-ne v5, v9, :cond_3

    .line 930
    const/16 v9, 0x32

    if-eq v0, v9, :cond_2

    return-void

    .line 931
    :cond_2
    iget-object v9, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/16 v13, 0xa

    const-wide/16 v15, 0x0

    iget-wide v10, v8, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    add-long v17, v3, v10

    move-object v10, v1

    move-object/from16 v11, p1

    move/from16 v12, p5

    move/from16 v14, v24

    invoke-virtual/range {v9 .. v18}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 934
    iget-wide v9, v8, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    .restart local v9    # "nextCheckDelay":J
    goto :goto_1

    .line 936
    .end local v9    # "nextCheckDelay":J
    :cond_3
    iget-object v9, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/16 v13, 0xa

    iget-wide v10, v8, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    add-long v17, v3, v10

    move-object v10, v1

    move-object/from16 v11, p1

    move/from16 v12, p5

    move/from16 v14, v24

    move-wide/from16 v15, p3

    invoke-virtual/range {v9 .. v18}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 939
    iget-wide v9, v8, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    .restart local v9    # "nextCheckDelay":J
    goto :goto_1

    .line 916
    .end local v9    # "nextCheckDelay":J
    .end local v22    # "prevBucketReason":I
    .end local v23    # "reason":I
    .end local v24    # "subReason":I
    .restart local v7    # "prevBucketReason":I
    .restart local v14    # "reason":I
    .restart local v15    # "subReason":I
    :cond_4
    move/from16 v22, v7

    move v7, v13

    move/from16 v23, v14

    move/from16 v24, v15

    .line 919
    .end local v7    # "prevBucketReason":I
    .end local v14    # "reason":I
    .end local v15    # "subReason":I
    .restart local v22    # "prevBucketReason":I
    .restart local v23    # "reason":I
    .restart local v24    # "subReason":I
    :goto_0
    iget-object v9, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/16 v13, 0x14

    const-wide/16 v15, 0x0

    iget-wide v10, v8, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    add-long v17, v3, v10

    move-object v10, v1

    move-object/from16 v11, p1

    move/from16 v12, p5

    move/from16 v14, v24

    invoke-virtual/range {v9 .. v18}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 922
    iget-wide v9, v8, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    .line 941
    .restart local v9    # "nextCheckDelay":J
    :goto_1
    iget v11, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-eq v11, v0, :cond_6

    .line 942
    iget-object v11, v8, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v13, 0xb

    const/4 v14, -0x1

    .line 943
    invoke-virtual {v11, v13, v2, v14, v6}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 942
    invoke-virtual {v11, v13, v9, v10}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 945
    iget v11, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-ne v11, v7, :cond_5

    const v7, 0xff00

    and-int v7, v22, v7

    const/16 v11, 0x300

    if-eq v7, v11, :cond_5

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :goto_2
    move/from16 v11, v22

    .line 948
    .end local v22    # "prevBucketReason":I
    .local v7, "userStartedInteracting":Z
    .local v11, "prevBucketReason":I
    iget v13, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    move v14, v0

    .end local v0    # "prevBucket":I
    .local v14, "prevBucket":I
    move-object/from16 v0, p0

    move-object v15, v1

    .end local v1    # "appHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .local v15, "appHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    move-object/from16 v1, p1

    move v12, v2

    move/from16 v2, p5

    move-wide/from16 v3, p3

    move v5, v13

    move-object v13, v6

    move/from16 v6, v23

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    goto :goto_3

    .line 941
    .end local v7    # "userStartedInteracting":Z
    .end local v11    # "prevBucketReason":I
    .end local v14    # "prevBucket":I
    .end local v15    # "appHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .restart local v0    # "prevBucket":I
    .restart local v1    # "appHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .restart local v22    # "prevBucketReason":I
    :cond_6
    move v14, v0

    move-object v15, v1

    move v12, v2

    move-object v13, v6

    move/from16 v11, v22

    .line 952
    .end local v0    # "prevBucket":I
    .end local v1    # "appHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .end local v22    # "prevBucketReason":I
    .restart local v11    # "prevBucketReason":I
    .restart local v14    # "prevBucket":I
    .restart local v15    # "appHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    :goto_3
    if-eqz v19, :cond_7

    .line 953
    const/4 v0, 0x0

    invoke-direct {v8, v13, v12, v0}, Lcom/android/server/usage/AppStandbyController;->notifyBatteryStats(Ljava/lang/String;IZ)V

    .line 955
    :cond_7
    return-void
.end method

.method private reportExemptedSyncScheduled(Ljava/lang/String;I)V
    .locals 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 521
    move-object/from16 v11, p0

    iget-boolean v0, v11, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 527
    :cond_0
    iget-object v0, v11, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->isDeviceIdleMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 529
    const/16 v0, 0xa

    .line 530
    .local v0, "bucketToPromote":I
    const/16 v1, 0xb

    .line 531
    .local v1, "usageReason":I
    iget-wide v2, v11, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    move v12, v0

    move v13, v1

    move-wide v14, v2

    .local v2, "durationMillis":J
    goto :goto_0

    .line 534
    .end local v0    # "bucketToPromote":I
    .end local v1    # "usageReason":I
    .end local v2    # "durationMillis":J
    :cond_1
    const/16 v0, 0x14

    .line 535
    .restart local v0    # "bucketToPromote":I
    const/16 v1, 0xc

    .line 536
    .restart local v1    # "usageReason":I
    iget-wide v2, v11, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    move v12, v0

    move v13, v1

    move-wide v14, v2

    .line 539
    .end local v0    # "bucketToPromote":I
    .end local v1    # "usageReason":I
    .local v12, "bucketToPromote":I
    .local v13, "usageReason":I
    .local v14, "durationMillis":J
    :goto_0
    iget-object v0, v11, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v16

    .line 540
    .local v16, "elapsedRealtime":J
    invoke-direct/range {p0 .. p2}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v18

    .line 541
    .local v18, "linkedProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    iget-object v10, v11, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v10

    .line 542
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move v4, v12

    move v5, v13

    move-wide/from16 v6, v16

    move-wide v8, v14

    move-object/from16 v19, v10

    move-object/from16 v10, v18

    :try_start_0
    invoke-direct/range {v1 .. v10}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V

    .line 544
    monitor-exit v19

    .line 545
    return-void

    .line 544
    :catchall_0
    move-exception v0

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private reportExemptedSyncStart(Ljava/lang/String;I)V
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 565
    move-object/from16 v11, p0

    iget-boolean v0, v11, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 567
    :cond_0
    iget-object v0, v11, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v12

    .line 568
    .local v12, "elapsedRealtime":J
    invoke-direct/range {p0 .. p2}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v14

    .line 569
    .local v14, "linkedProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    iget-object v15, v11, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v15

    .line 570
    const/16 v4, 0xa

    const/16 v5, 0xd

    :try_start_0
    iget-wide v8, v11, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide v6, v12

    move-object v10, v14

    invoke-direct/range {v1 .. v10}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V

    .line 573
    monitor-exit v15

    .line 574
    return-void

    .line 573
    :catchall_0
    move-exception v0

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "bucket"    # I
    .param p4, "subReason"    # I
    .param p5, "elapsedRealtime"    # J
    .param p7, "nextCheckDelay"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIJJ",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    .line 585
    .local p9, "otherProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-direct/range {p0 .. p8}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageLocked(Ljava/lang/String;IIIJJ)V

    .line 587
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v0

    .line 588
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "profileIndex":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 589
    move-object/from16 v2, p9

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 590
    .local v3, "otherUserId":I
    move-object v4, p0

    move-object v5, p1

    move v6, v3

    move/from16 v7, p3

    move/from16 v8, p4

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    invoke-direct/range {v4 .. v12}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageLocked(Ljava/lang/String;IIIJJ)V

    .line 588
    .end local v3    # "otherUserId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v2, p9

    .line 593
    .end local v1    # "profileIndex":I
    return-void
.end method

.method private reportNoninteractiveUsageLocked(Ljava/lang/String;IIIJJ)V
    .locals 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "bucket"    # I
    .param p4, "subReason"    # I
    .param p5, "elapsedRealtime"    # J
    .param p7, "nextCheckDelay"    # J

    .line 603
    move-object/from16 v8, p0

    move-wide/from16 v9, p7

    iget-object v11, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    add-long v18, p5, v9

    const-wide/16 v16, 0x0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    invoke-virtual/range {v11 .. v19}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v11

    .line 605
    .local v11, "appUsage":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    iget-object v0, v8, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 606
    const/16 v1, 0xb

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v13, v2, v12}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 605
    invoke-virtual {v0, v1, v9, v10}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 608
    iget v5, v11, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    iget v6, v11, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 610
    return-void
.end method

.method private reportUnexemptedSyncScheduled(Ljava/lang/String;I)V
    .locals 18
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 548
    move-object/from16 v11, p0

    iget-boolean v0, v11, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 550
    :cond_0
    iget-object v0, v11, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v12

    .line 551
    .local v12, "elapsedRealtime":J
    iget-object v14, v11, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v14

    .line 552
    :try_start_0
    iget-object v0, v11, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 553
    move-object/from16 v15, p1

    move/from16 v8, p2

    :try_start_1
    invoke-virtual {v0, v15, v8, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v0

    .line 554
    .local v0, "currentBucket":I
    const/16 v1, 0x32

    if-ne v0, v1, :cond_1

    .line 555
    invoke-direct/range {p0 .. p2}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    .line 557
    .local v10, "linkedProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    const/16 v4, 0x14

    const/16 v5, 0xe

    iget-wide v6, v11, Lcom/android/server/usage/AppStandbyController;->mUnexemptedSyncScheduledTimeoutMillis:J

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v16, v6

    move-wide v6, v12

    move-wide/from16 v8, v16

    invoke-direct/range {v1 .. v10}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V

    .line 561
    .end local v0    # "currentBucket":I
    .end local v10    # "linkedProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :cond_1
    monitor-exit v14

    .line 562
    return-void

    .line 561
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v15, p1

    :goto_0
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setAppStandbyBucket(Ljava/lang/String;IIIJZ)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "newBucket"    # I
    .param p4, "reason"    # I
    .param p5, "elapsedRealtime"    # J
    .param p7, "resetTimeout"    # Z

    .line 1384
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(Ljava/lang/String;IIIJZZ)V

    .line 1385
    return-void
.end method

.method private setAppStandbyBucket(Ljava/lang/String;IIIJZZ)V
    .locals 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "newBucket"    # I
    .param p4, "reason"    # I
    .param p5, "elapsedRealtime"    # J
    .param p7, "resetTimeout"    # Z
    .param p8, "callbyFreezer"    # Z

    .line 1395
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v7, p4

    move-wide/from16 v12, p5

    iget-boolean v0, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 1397
    :cond_0
    iget-object v14, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1399
    :try_start_0
    iget-object v0, v9, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const/4 v8, 0x0

    invoke-virtual {v0, v10, v8, v11}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageInstalled(Ljava/lang/String;II)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    if-nez v0, :cond_1

    .line 1400
    :try_start_1
    const-string v0, "AppStandbyController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to set bucket of uninstalled app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 1553
    :catchall_0
    move-exception v0

    move/from16 v15, p3

    goto/16 :goto_b

    .line 1403
    :cond_1
    const/16 v0, 0x2d

    move/from16 v1, p3

    if-ne v1, v0, :cond_2

    :try_start_2
    iget-boolean v2, v9, Lcom/android/server/usage/AppStandbyController;->mAllowRestrictedBucket:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_2

    .line 1404
    const/16 v1, 0x28

    move v15, v1

    .end local p3    # "newBucket":I
    .local v1, "newBucket":I
    goto :goto_0

    .line 1553
    .end local v1    # "newBucket":I
    .restart local p3    # "newBucket":I
    :catchall_1
    move-exception v0

    goto/16 :goto_a

    .line 1406
    :cond_2
    move v15, v1

    .end local p3    # "newBucket":I
    .local v15, "newBucket":I
    :goto_0
    :try_start_3
    iget-object v1, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, v10, v11, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v1

    move-object v6, v1

    .line 1408
    .local v6, "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    const v1, 0xff00

    and-int v2, v7, v1

    const/16 v3, 0x500

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v8

    :goto_1
    move/from16 v16, v2

    .line 1411
    .local v16, "predicted":Z
    iget v2, v6, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v5, 0xa

    if-ge v2, v5, :cond_4

    monitor-exit v14

    return-void

    .line 1414
    :cond_4
    iget v2, v6, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v3, 0x32

    if-eq v2, v3, :cond_5

    if-ne v15, v3, :cond_6

    :cond_5
    if-eqz v16, :cond_6

    .line 1416
    monitor-exit v14

    return-void

    .line 1419
    :cond_6
    iget v2, v6, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    and-int/2addr v2, v1

    const/16 v3, 0x600

    if-ne v2, v3, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    move v2, v8

    :goto_2
    move/from16 v17, v2

    .line 1423
    .local v17, "wasForcedBySystem":Z
    const/16 v2, 0x400

    if-eqz v16, :cond_9

    iget v4, v6, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    and-int/2addr v4, v1

    if-eq v4, v2, :cond_8

    if-eqz v17, :cond_9

    .line 1426
    :cond_8
    monitor-exit v14

    return-void

    .line 1429
    :cond_9
    and-int v4, v7, v1

    if-ne v4, v3, :cond_a

    const/4 v4, 0x1

    goto :goto_3

    :cond_a
    move v4, v8

    :goto_3
    move/from16 v18, v4

    .line 1432
    .local v18, "isForcedBySystem":Z
    iget v4, v6, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-ne v4, v15, :cond_b

    if-eqz v17, :cond_b

    if-eqz v18, :cond_b

    .line 1433
    iget-object v1, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 1434
    move-object/from16 v2, p1

    move v0, v3

    move/from16 v3, p2

    move-wide/from16 v4, p5

    move-object v8, v6

    .end local v6    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .local v8, "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    move/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppIdleHistory;->noteRestrictionAttempt(Ljava/lang/String;IJI)V

    .line 1436
    iget v1, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    and-int/lit16 v1, v7, 0xff

    or-int v19, v0, v1

    .line 1439
    .end local p4    # "reason":I
    .local v19, "reason":I
    :try_start_4
    iget-object v1, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p5

    move v6, v15

    move/from16 v7, v19

    move-object v0, v8

    .end local v8    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .local v0, "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJIIZ)V

    .line 1441
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    .line 1553
    .end local v0    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .end local v16    # "predicted":Z
    .end local v17    # "wasForcedBySystem":Z
    .end local v18    # "isForcedBySystem":Z
    :catchall_2
    move-exception v0

    move/from16 v7, v19

    goto/16 :goto_b

    .line 1444
    .end local v19    # "reason":I
    .restart local v6    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .restart local v16    # "predicted":Z
    .restart local v17    # "wasForcedBySystem":Z
    .restart local v18    # "isForcedBySystem":Z
    .restart local p4    # "reason":I
    :cond_b
    and-int v3, v7, v1

    if-ne v3, v2, :cond_c

    const/4 v2, 0x1

    goto :goto_4

    :cond_c
    move v2, v8

    :goto_4
    move/from16 v19, v2

    .line 1447
    .local v19, "isForcedByUser":Z
    :try_start_5
    iget v2, v6, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v4, 0x28

    if-ne v2, v0, :cond_e

    .line 1448
    iget v2, v6, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    and-int/2addr v1, v2

    const/16 v2, 0x200

    if-ne v1, v2, :cond_d

    .line 1449
    if-eqz v16, :cond_e

    if-lt v15, v4, :cond_e

    .line 1452
    monitor-exit v14

    return-void

    .line 1454
    :cond_d
    invoke-static/range {p4 .. p4}, Lcom/android/server/usage/AppStandbyController;->isUserUsage(I)Z

    move-result v1

    if-nez v1, :cond_e

    if-nez v19, :cond_e

    .line 1457
    monitor-exit v14

    return-void

    .line 1461
    :cond_e
    if-ne v15, v0, :cond_11

    .line 1462
    iget-object v1, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 1463
    move-object/from16 v2, p1

    move/from16 v3, p2

    const/4 v0, 0x1

    move-wide/from16 v4, p5

    move-object/from16 v21, v6

    .end local v6    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .local v21, "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    move/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppIdleHistory;->noteRestrictionAttempt(Ljava/lang/String;IJI)V

    .line 1465
    if-eqz v19, :cond_10

    .line 1469
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_f

    .line 1470
    iget-object v1, v9, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    iget-object v2, v9, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 1473
    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, v9, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    .line 1474
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104012e

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v10, v0, v8

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1470
    invoke-static {v1, v2, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1477
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, v21

    goto :goto_5

    .line 1479
    :cond_f
    const-string v0, "AppStandbyController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " restricted by user"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v21

    goto :goto_5

    .line 1482
    :cond_10
    move-object/from16 v0, v21

    .end local v21    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .restart local v0    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    iget-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    iget-object v3, v9, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1483
    invoke-virtual {v3}, Lcom/android/server/usage/AppStandbyController$Injector;->getAutoRestrictedBucketDelayMs()J

    move-result-wide v3

    add-long/2addr v1, v3

    sub-long/2addr v1, v12

    .line 1484
    .local v1, "timeUntilRestrictPossibleMs":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_12

    .line 1485
    const-string v3, "AppStandbyController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried to restrict recently used app: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " due to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    iget-object v3, v9, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    iget-object v4, v9, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v5, 0xb

    const/4 v6, -0x1

    .line 1488
    invoke-virtual {v4, v5, v11, v6, v10}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1487
    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1491
    monitor-exit v14

    return-void

    .line 1461
    .end local v0    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .end local v1    # "timeUntilRestrictPossibleMs":J
    .restart local v6    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    :cond_11
    move-object v0, v6

    .line 1498
    .end local v6    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .restart local v0    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    :cond_12
    :goto_5
    if-eqz v16, :cond_17

    .line 1500
    iget-object v1, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v1

    .line 1503
    .local v1, "elapsedTimeAdjusted":J
    iget-object v3, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v3, v0, v1, v2, v15}, Lcom/android/server/usage/AppIdleHistory;->updateLastPrediction(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;JI)V

    .line 1505
    const/16 v3, 0xa

    if-le v15, v3, :cond_14

    iget-wide v3, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    cmp-long v3, v3, v1

    if-lez v3, :cond_14

    .line 1507
    const/16 v3, 0xa

    .line 1508
    .end local v15    # "newBucket":I
    .local v3, "newBucket":I
    :try_start_6
    iget v4, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1509
    .end local p4    # "reason":I
    .local v4, "reason":I
    :try_start_7
    sget-boolean v5, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v5, :cond_13

    .line 1510
    const-string v5, "AppStandbyController"

    const-string v6, "    Keeping at ACTIVE due to min timeout"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1542
    .end local v1    # "elapsedTimeAdjusted":J
    :cond_13
    :goto_6
    move v15, v4

    goto :goto_8

    .line 1553
    .end local v0    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .end local v16    # "predicted":Z
    .end local v17    # "wasForcedBySystem":Z
    .end local v18    # "isForcedBySystem":Z
    .end local v19    # "isForcedByUser":Z
    :catchall_3
    move-exception v0

    move v15, v3

    move v7, v4

    goto/16 :goto_b

    .end local v4    # "reason":I
    .restart local p4    # "reason":I
    :catchall_4
    move-exception v0

    move v15, v3

    goto/16 :goto_b

    .line 1512
    .end local v3    # "newBucket":I
    .restart local v0    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .restart local v1    # "elapsedTimeAdjusted":J
    .restart local v15    # "newBucket":I
    .restart local v16    # "predicted":Z
    .restart local v17    # "wasForcedBySystem":Z
    .restart local v18    # "isForcedBySystem":Z
    .restart local v19    # "isForcedByUser":Z
    :cond_14
    const/16 v3, 0x14

    if-le v15, v3, :cond_16

    :try_start_8
    iget-wide v3, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    cmp-long v3, v3, v1

    if-lez v3, :cond_16

    .line 1514
    const/16 v3, 0x14

    .line 1515
    .end local v15    # "newBucket":I
    .restart local v3    # "newBucket":I
    :try_start_9
    iget v4, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-eq v4, v3, :cond_15

    .line 1516
    const/16 v4, 0x307

    .end local p4    # "reason":I
    .restart local v4    # "reason":I
    goto :goto_7

    .line 1518
    .end local v4    # "reason":I
    .restart local p4    # "reason":I
    :cond_15
    iget v4, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 1520
    .end local p4    # "reason":I
    .restart local v4    # "reason":I
    :goto_7
    :try_start_a
    sget-boolean v5, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v5, :cond_13

    .line 1521
    const-string v5, "AppStandbyController"

    const-string v6, "    Keeping at WORKING_SET due to min timeout"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_6

    .line 1523
    .end local v3    # "newBucket":I
    .end local v4    # "reason":I
    .restart local v15    # "newBucket":I
    .restart local p4    # "reason":I
    :cond_16
    const/16 v3, 0x28

    if-ne v15, v3, :cond_17

    :try_start_b
    iget-boolean v3, v9, Lcom/android/server/usage/AppStandbyController;->mAllowRestrictedBucket:Z

    if-eqz v3, :cond_17

    .line 1525
    invoke-direct {v9, v10, v11, v12, v13}, Lcom/android/server/usage/AppStandbyController;->getBucketForLocked(Ljava/lang/String;IJ)I

    move-result v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_17

    .line 1531
    const/16 v3, 0x2d

    .line 1532
    .end local v15    # "newBucket":I
    .restart local v3    # "newBucket":I
    const/16 v4, 0x200

    .line 1533
    .end local p4    # "reason":I
    .restart local v4    # "reason":I
    :try_start_c
    sget-boolean v5, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v5, :cond_13

    .line 1534
    const-string v5, "AppStandbyController"

    const-string v6, "Prediction to RARE overridden by timeout into RESTRICTED"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_6

    .line 1542
    .end local v1    # "elapsedTimeAdjusted":J
    .end local v3    # "newBucket":I
    .end local v4    # "reason":I
    .restart local v15    # "newBucket":I
    .restart local p4    # "reason":I
    :cond_17
    move v3, v15

    move v15, v7

    .end local p4    # "reason":I
    .restart local v3    # "newBucket":I
    .local v15, "reason":I
    :goto_8
    if-nez p8, :cond_18

    .line 1544
    :try_start_d
    invoke-direct/range {p0 .. p2}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    move/from16 v20, v1

    .end local v3    # "newBucket":I
    .local v1, "newBucket":I
    goto :goto_9

    .line 1553
    .end local v0    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .end local v1    # "newBucket":I
    .end local v16    # "predicted":Z
    .end local v17    # "wasForcedBySystem":Z
    .end local v18    # "isForcedBySystem":Z
    .end local v19    # "isForcedByUser":Z
    .restart local v3    # "newBucket":I
    :catchall_5
    move-exception v0

    move v7, v15

    move v15, v3

    goto :goto_b

    .line 1542
    .restart local v0    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .restart local v16    # "predicted":Z
    .restart local v17    # "wasForcedBySystem":Z
    .restart local v18    # "isForcedBySystem":Z
    .restart local v19    # "isForcedByUser":Z
    :cond_18
    move/from16 v20, v3

    .line 1551
    .end local v3    # "newBucket":I
    .local v20, "newBucket":I
    :goto_9
    :try_start_e
    iget-object v1, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p5

    move/from16 v6, v20

    move v7, v15

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJIIZ)V

    .line 1553
    .end local v0    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .end local v16    # "predicted":Z
    .end local v17    # "wasForcedBySystem":Z
    .end local v18    # "isForcedBySystem":Z
    .end local v19    # "isForcedByUser":Z
    monitor-exit v14
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 1554
    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p5

    move/from16 v6, v20

    move v7, v15

    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 1555
    return-void

    .line 1553
    :catchall_6
    move-exception v0

    move v7, v15

    move/from16 v15, v20

    goto :goto_b

    .end local v20    # "newBucket":I
    .local v15, "newBucket":I
    .restart local p4    # "reason":I
    :catchall_7
    move-exception v0

    goto :goto_b

    .end local v15    # "newBucket":I
    .restart local p3    # "newBucket":I
    :catchall_8
    move-exception v0

    move/from16 v1, p3

    :goto_a
    move v15, v1

    .end local p3    # "newBucket":I
    .end local p4    # "reason":I
    .local v7, "reason":I
    .restart local v15    # "newBucket":I
    :goto_b
    :try_start_f
    monitor-exit v14
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    throw v0

    :catchall_9
    move-exception v0

    goto :goto_b
.end method

.method private updatePowerWhitelistCache()V
    .locals 2

    .line 1743
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->getBootPhase()I

    move-result v0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    .line 1744
    return-void

    .line 1746
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->updatePowerWhitelistCache()V

    .line 1747
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/usage/AppStandbyController;->postCheckIdleStates(I)V

    .line 1748
    return-void
.end method

.method private usageEventToSubReason(I)I
    .locals 3
    .param p1, "eventType"    # I

    .line 968
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

    .line 978
    const/4 v0, 0x0

    return v0

    .line 974
    :cond_0
    const/16 v0, 0x9

    return v0

    .line 975
    :cond_1
    return v0

    .line 977
    :cond_2
    const/16 v0, 0xf

    return v0

    .line 973
    :cond_3
    return v1

    .line 972
    :cond_4
    const/4 v0, 0x3

    return v0

    .line 971
    :cond_5
    return v0

    .line 970
    :cond_6
    const/4 v0, 0x5

    return v0

    .line 969
    :cond_7
    const/4 v0, 0x4

    return v0
.end method

.method private waitForAdminData()V
    .locals 4

    .line 1597
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.device_admin"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1598
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x2710

    const-string v3, "Wait for admin data"

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/ConcurrentUtils;->waitForCountDownNoInterrupt(Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;)V

    .line 1601
    :cond_0
    return-void
.end method


# virtual methods
.method public addActiveDeviceAdmin(Ljava/lang/String;I)V
    .locals 3
    .param p1, "adminPkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1567
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1568
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 1569
    .local v1, "adminPkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 1570
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 1571
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1573
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1574
    nop

    .end local v1    # "adminPkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-exit v0

    .line 1575
    return-void

    .line 1574
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    .line 1041
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1042
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1043
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1045
    :cond_0
    monitor-exit v0

    .line 1046
    return-void

    .line 1045
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

    .line 652
    move-object/from16 v7, p0

    move/from16 v8, p1

    iget-boolean v0, v7, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 653
    return v1

    .line 658
    :cond_0
    :try_start_0
    iget-object v0, v7, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->getRunningUserIds()[I

    move-result-object v0

    .line 659
    .local v0, "runningUserIds":[I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 660
    invoke-static {v0, v8}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    .line 661
    return v1

    .line 665
    :cond_1
    nop

    .line 667
    iget-object v1, v7, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v10

    .line 668
    .local v10, "elapsedRealtime":J
    const/4 v1, 0x0

    move v12, v1

    .local v12, "i":I
    :goto_0
    array-length v1, v0

    const-string v2, "AppStandbyController"

    if-ge v12, v1, :cond_5

    .line 669
    aget v13, v0, v12

    .line 670
    .local v13, "userId":I
    if-eq v8, v9, :cond_2

    if-eq v8, v13, :cond_2

    .line 671
    goto :goto_2

    .line 673
    :cond_2
    sget-boolean v1, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 674
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checking idle state for user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_3
    iget-object v1, v7, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x200

    invoke-virtual {v1, v2, v13}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v14

    .line 679
    .local v14, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    .line 680
    .local v15, "packageCount":I
    const/4 v1, 0x0

    move v5, v1

    .local v5, "p":I
    :goto_1
    if-ge v5, v15, :cond_4

    .line 681
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 682
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    iget-object v4, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 683
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

    .line 680
    .end local v17    # "packageName":Ljava/lang/String;
    .end local v18    # "pi":Landroid/content/pm/PackageInfo;
    add-int/lit8 v5, v16, 0x1

    .end local v16    # "p":I
    .restart local v5    # "p":I
    goto :goto_1

    :cond_4
    move/from16 v16, v5

    .line 668
    .end local v5    # "p":I
    .end local v13    # "userId":I
    .end local v14    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v15    # "packageCount":I
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 687
    .end local v12    # "i":I
    :cond_5
    sget-boolean v1, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 688
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIdleStates took "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 689
    invoke-virtual {v3}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v10

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 688
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_6
    const/4 v1, 0x1

    return v1

    .line 663
    .end local v0    # "runningUserIds":[I
    .end local v10    # "elapsedRealtime":J
    :catch_0
    move-exception v0

    .line 664
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method clearAppIdleForPackage(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1705
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1706
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/AppIdleHistory;->clearUsage(Ljava/lang/String;I)V

    .line 1707
    monitor-exit v0

    .line 1708
    return-void

    .line 1707
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearCarrierPrivilegedApps()V
    .locals 2

    .line 1634
    sget-boolean v0, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1635
    const-string v0, "AppStandbyController"

    const-string v1, "Clearing carrier privileged apps list"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1638
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    .line 1639
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    .line 1640
    monitor-exit v0

    .line 1641
    return-void

    .line 1640
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dumpState([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 1887
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1888
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

    .line 1890
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1892
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1893
    const-string v0, "Settings:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1895
    const-string v0, "  mCheckIdleIntervalMillis="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1896
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mCheckIdleIntervalMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1897
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1899
    const-string v0, "  mStrongUsageTimeoutMillis="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1900
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1901
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1902
    const-string v0, "  mNotificationSeenTimeoutMillis="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1903
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1904
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1905
    const-string v0, "  mSyncAdapterTimeoutMillis="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1906
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1907
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1908
    const-string v0, "  mSystemInteractionTimeoutMillis="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1909
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1910
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1911
    const-string v0, "  mInitialForegroundServiceStartTimeoutMillis="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1912
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1913
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1915
    const-string v0, "  mPredictionTimeoutMillis="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1916
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mPredictionTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1917
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1919
    const-string v0, "  mExemptedSyncScheduledNonDozeTimeoutMillis="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1920
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1921
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1922
    const-string v0, "  mExemptedSyncScheduledDozeTimeoutMillis="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1923
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1924
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1925
    const-string v0, "  mExemptedSyncStartTimeoutMillis="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1926
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1927
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1928
    const-string v0, "  mUnexemptedSyncScheduledTimeoutMillis="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1929
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mUnexemptedSyncScheduledTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1930
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1932
    const-string v0, "  mSystemUpdateUsageTimeoutMillis="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1933
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemUpdateUsageTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1934
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1936
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1937
    const-string v0, "mAppIdleEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1938
    const-string v0, " mAllowRestrictedBucket="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1939
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAllowRestrictedBucket:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1940
    const-string v0, " mIsCharging="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1941
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mIsCharging:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1942
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1943
    const-string v0, "mScreenThresholds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1944
    const-string v0, "mElapsedThresholds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1945
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1947
    const-string v0, "mHeadlessSystemApps=["

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1948
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    monitor-enter v1

    .line 1949
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1950
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1951
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1952
    const-string v2, ","

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1949
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1954
    .end local v0    # "i":I
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1955
    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1956
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1958
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0, p2}, Lcom/android/server/usage/AppStandbyController$Injector;->dump(Ljava/io/PrintWriter;)V

    .line 1959
    return-void

    .line 1954
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1890
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public dumpUsers(Lcom/android/internal/util/IndentingPrintWriter;[ILjava/util/List;)V
    .locals 2
    .param p1, "idpw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "userIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "[I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1880
    .local p3, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1881
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/usage/AppIdleHistory;->dumpUsers(Lcom/android/internal/util/IndentingPrintWriter;[ILjava/util/List;)V

    .line 1882
    monitor-exit v0

    .line 1883
    return-void

    .line 1882
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public flushToDisk()V
    .locals 2

    .line 1693
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1694
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleTimes()V

    .line 1695
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleDurations()V

    .line 1696
    monitor-exit v0

    .line 1697
    return-void

    .line 1696
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

    .line 984
    move-object/from16 v15, p0

    iget-boolean v0, v15, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 986
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppStandbyController;->getAppId(Ljava/lang/String;)I

    move-result v16

    .line 987
    .local v16, "appId":I
    if-gez v16, :cond_1

    return-void

    .line 988
    :cond_1
    iget-object v0, v15, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v17

    .line 990
    .local v17, "elapsedRealtime":J
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v16

    move/from16 v4, p2

    move-wide/from16 v5, v17

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v14

    .line 993
    .local v14, "previouslyIdle":Z
    iget-object v7, v15, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v7

    .line 994
    :try_start_0
    iget-object v1, v15, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, v17

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppIdleHistory;->setIdle(Ljava/lang/String;IZJ)I

    move-result v12

    .line 995
    .local v12, "standbyBucket":I
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 996
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v16

    move/from16 v4, p2

    move-wide/from16 v5, v17

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v0

    .line 999
    .local v0, "stillIdle":Z
    if-eq v14, v0, :cond_2

    .line 1000
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

    .line 1002
    if-nez v0, :cond_3

    .line 1003
    invoke-direct/range {p0 .. p3}, Lcom/android/server/usage/AppStandbyController;->notifyBatteryStats(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 999
    .end local v2    # "previouslyIdle":Z
    .restart local v14    # "previouslyIdle":Z
    :cond_2
    move v2, v14

    .line 1006
    .end local v14    # "previouslyIdle":Z
    .restart local v2    # "previouslyIdle":Z
    :cond_3
    :goto_0
    return-void

    .line 995
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

    .line 1605
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1606
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 1607
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAppId(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1058
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const v1, 0x400200

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1061
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1062
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 1063
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

    .line 1256
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-eqz v0, :cond_1

    if-eqz p5, :cond_0

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1257
    invoke-virtual {v0, p2, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1261
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1262
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1263
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1258
    :cond_1
    :goto_0
    const/16 v0, 0xa

    return v0
.end method

.method getAppStandbyBucketReason(Ljava/lang/String;IJ)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .line 1268
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1269
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getAppStandbyReason(Ljava/lang/String;IJ)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1270
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
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

    .line 1275
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1276
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {v1, p1, v2}, Lcom/android/server/usage/AppIdleHistory;->getAppStandbyBuckets(IZ)Ljava/util/ArrayList;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1277
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIdleUidsForUser(I)[I
    .locals 16
    .param p1, "userId"    # I

    .line 1177
    move-object/from16 v7, p0

    iget-boolean v0, v7, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    const/4 v8, 0x0

    if-nez v0, :cond_0

    .line 1178
    new-array v0, v8, [I

    return-object v0

    .line 1181
    :cond_0
    const-wide/16 v9, 0x40

    const-string v0, "getIdleUidsForUser"

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1183
    iget-object v0, v7, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v11

    .line 1187
    .local v11, "elapsedRealtime":J
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1188
    move/from16 v13, p1

    :try_start_1
    invoke-interface {v0, v8, v13}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1189
    .local v0, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v0, :cond_1

    .line 1190
    new-array v1, v8, [I

    return-object v1

    .line 1192
    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 1195
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    nop

    .line 1199
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    move-object v14, v1

    .line 1203
    .local v14, "uidStates":Landroid/util/SparseIntArray;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v15, v1

    .local v15, "i":I
    :goto_0
    if-ltz v15, :cond_5

    .line 1204
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 1207
    .local v5, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object v8, v5

    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v8, "ai":Landroid/content/pm/ApplicationInfo;
    move-wide v5, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v1

    .line 1210
    .local v1, "idle":Z
    iget v2, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v14, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    .line 1211
    .local v2, "index":I
    const/high16 v3, 0x10000

    if-gez v2, :cond_3

    .line 1212
    iget v4, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v14, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_3

    .line 1214
    :cond_3
    invoke-virtual {v14, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 1215
    .local v4, "value":I
    add-int/lit8 v5, v4, 0x1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    add-int/2addr v5, v3

    invoke-virtual {v14, v2, v5}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 1203
    .end local v1    # "idle":Z
    .end local v2    # "index":I
    .end local v4    # "value":I
    .end local v8    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_3
    add-int/lit8 v15, v15, -0x1

    const/4 v8, 0x0

    goto :goto_0

    .line 1219
    .end local v15    # "i":I
    :cond_5
    sget-boolean v1, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 1220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIdleUids took "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v11

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppStandbyController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    :cond_6
    const/4 v1, 0x0

    .line 1223
    .local v1, "numIdle":I
    invoke-virtual {v14}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_4
    if-ltz v2, :cond_8

    .line 1224
    invoke-virtual {v14, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 1225
    .local v3, "value":I
    and-int/lit16 v4, v3, 0x7fff

    shr-int/lit8 v5, v3, 0x10

    if-ne v4, v5, :cond_7

    .line 1226
    add-int/lit8 v1, v1, 0x1

    .line 1223
    .end local v3    # "value":I
    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 1230
    .end local v2    # "i":I
    :cond_8
    new-array v2, v1, [I

    .line 1231
    .local v2, "res":[I
    const/4 v1, 0x0

    .line 1232
    invoke-virtual {v14}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_5
    if-ltz v3, :cond_a

    .line 1233
    invoke-virtual {v14, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 1234
    .restart local v4    # "value":I
    and-int/lit16 v5, v4, 0x7fff

    shr-int/lit8 v6, v4, 0x10

    if-ne v5, v6, :cond_9

    .line 1235
    invoke-virtual {v14, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    aput v5, v2, v1

    .line 1236
    add-int/lit8 v1, v1, 0x1

    .line 1232
    .end local v4    # "value":I
    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 1240
    .end local v3    # "i":I
    :cond_a
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 1242
    return-object v2

    .line 1193
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v1    # "numIdle":I
    .end local v2    # "res":[I
    .end local v14    # "uidStates":Landroid/util/SparseIntArray;
    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    move/from16 v13, p1

    .line 1194
    .local v0, "e":Landroid/os/RemoteException;
    :goto_6
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTimeSinceLastJobRun(Ljava/lang/String;I)J
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1017
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v0

    .line 1018
    .local v0, "elapsedRealtime":J
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1019
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v3, p1, p2, v0, v1}, Lcom/android/server/usage/AppIdleHistory;->getTimeSinceLastJobRun(Ljava/lang/String;IJ)J

    move-result-wide v3

    monitor-exit v2

    return-wide v3

    .line 1020
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public initializeDefaultsForSystemApps(I)V
    .locals 20
    .param p1, "userId"    # I

    .line 1811
    move-object/from16 v1, p0

    move/from16 v11, p1

    iget-boolean v0, v1, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    if-nez v0, :cond_0

    .line 1813
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/usage/AppStandbyController;->mPendingInitializeDefaults:Z

    .line 1814
    return-void

    .line 1816
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

    .line 1818
    iget-object v0, v1, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v12

    .line 1819
    .local v12, "elapsedRealtime":J
    iget-object v0, v1, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x200

    invoke-virtual {v0, v2, v11}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v14

    .line 1822
    .local v14, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    .line 1823
    .local v15, "packageCount":I
    iget-object v9, v1, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1824
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v15, :cond_2

    .line 1825
    :try_start_0
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    move-object v10, v2

    .line 1826
    .local v10, "pi":Landroid/content/pm/PackageInfo;
    iget-object v3, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1827
    .local v3, "packageName":Ljava/lang/String;
    iget-object v2, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1

    iget-object v2, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1830
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

    .line 1827
    .end local v17    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v10    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    move-object/from16 v16, v9

    move-object/from16 v17, v10

    .line 1824
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v10    # "pi":Landroid/content/pm/PackageInfo;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v9, v16

    goto :goto_0

    .line 1837
    .end local v0    # "i":I
    :catchall_0
    move-exception v0

    move-object/from16 v16, v9

    goto :goto_2

    .line 1824
    .restart local v0    # "i":I
    :cond_2
    move-object/from16 v16, v9

    .line 1836
    .end local v0    # "i":I
    iget-object v0, v1, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v0, v11}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleTimes(I)V

    .line 1837
    monitor-exit v16

    .line 1838
    return-void

    .line 1837
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

    .line 1559
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1560
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 1561
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

    .line 1562
    .end local v1    # "adminPkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isAppIdleEnabled()Z
    .locals 1

    .line 443
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    return v0
.end method

.method public isAppIdleFiltered(Ljava/lang/String;IIJ)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "elapsedRealtime"    # J

    .line 1154
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x28

    if-ge v0, v2, :cond_0

    .line 1155
    return v1

    .line 1157
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1158
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mIsCharging:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1161
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1162
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/server/usage/AppStandbyController;->isAppIdleUnfiltered(Ljava/lang/String;IJ)Z

    move-result v0

    return v0

    .line 1159
    :cond_2
    :goto_0
    :try_start_1
    monitor-exit v0

    return v1

    .line 1161
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isAppIdleFiltered(Ljava/lang/String;IJZ)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "shouldObfuscateInstantApps"    # Z

    .line 1070
    if-eqz p5, :cond_0

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1071
    invoke-virtual {v0, p2, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1072
    const/4 v0, 0x0

    return v0

    .line 1074
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->getAppId(Ljava/lang/String;)I

    move-result v3

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v0

    return v0
.end method

.method public isInParole()Z
    .locals 1

    .line 625
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mIsCharging:Z

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

.method maybeUnrestrictBuggyApp(Ljava/lang/String;I)V
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1716
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1717
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v1

    .line 1718
    .local v1, "elapsedRealtime":J
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 1719
    invoke-virtual {v3, p1, p2, v1, v2}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v3

    move-object v10, v3

    .line 1720
    .local v10, "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    iget v3, v10, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_2

    iget v3, v10, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    const v4, 0xff00

    and-int/2addr v3, v4

    const/16 v4, 0x600

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 1727
    :cond_0
    iget v3, v10, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 1729
    const/16 v3, 0x28

    .line 1730
    .local v3, "newBucket":I
    const/16 v4, 0x101

    move v11, v3

    move v12, v4

    .local v4, "newReason":I
    goto :goto_0

    .line 1734
    .end local v3    # "newBucket":I
    .end local v4    # "newReason":I
    :cond_1
    const/16 v3, 0x2d

    .line 1735
    .restart local v3    # "newBucket":I
    iget v4, v10, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    and-int/lit8 v4, v4, -0x5

    move v11, v3

    move v12, v4

    .line 1737
    .end local v3    # "newBucket":I
    .local v11, "newBucket":I
    .local v12, "newReason":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object v4, p1

    move v5, p2

    move-wide v6, v1

    move v8, v11

    move v9, v12

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJII)V

    .line 1739
    .end local v1    # "elapsedRealtime":J
    .end local v10    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .end local v11    # "newBucket":I
    .end local v12    # "newReason":I
    monitor-exit v0

    .line 1740
    return-void

    .line 1722
    .restart local v1    # "elapsedRealtime":J
    .restart local v10    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    .line 1739
    .end local v1    # "elapsedRealtime":J
    .end local v10    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAdminDataAvailable()V
    .locals 1

    .line 1590
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1591
    return-void
.end method

.method public onBootPhase(I)V
    .locals 6
    .param p1, "phase"    # I

    .line 448
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->onBootPhase(I)V

    .line 449
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_2

    .line 450
    const-string v0, "AppStandbyController"

    const-string v1, "Setting app idle enabled state"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    new-instance v0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;-><init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Handler;)V

    .line 453
    .local v0, "settingsObserver":Lcom/android/server/usage/AppStandbyController$SettingsObserver;
    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->registerObserver()V

    .line 454
    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->updateSettings()V

    .line 456
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetManager;

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 458
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/usage/AppStandbyController$Injector;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 459
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 460
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->isDisplayOn()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v4}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->updateDisplay(ZJ)V

    .line 461
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 463
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    .line 466
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    new-instance v2, Lcom/android/server/usage/-$$Lambda$AppStandbyController$J3RrF9pXWs15TjJGaLdogSJkcZI;

    invoke-direct {v2, p0}, Lcom/android/server/usage/-$$Lambda$AppStandbyController$J3RrF9pXWs15TjJGaLdogSJkcZI;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    invoke-virtual {v1, v2}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->post(Ljava/lang/Runnable;)Z

    .line 469
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 470
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/usage/AppIdleHistory;->userFileExists(I)Z

    move-result v1

    .line 471
    .local v1, "userFileExists":Z
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 473
    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mPendingInitializeDefaults:Z

    if-nez v2, :cond_0

    if-nez v1, :cond_1

    .line 474
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/server/usage/AppStandbyController;->initializeDefaultsForSystemApps(I)V

    .line 477
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mPendingOneTimeCheckIdleStates:Z

    if-eqz v2, :cond_3

    .line 478
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->postOneTimeCheckIdleStates()V

    goto :goto_0

    .line 471
    .end local v1    # "userFileExists":Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 461
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 480
    .end local v0    # "settingsObserver":Lcom/android/server/usage/AppStandbyController$SettingsObserver;
    :cond_2
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_3

    .line 481
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->isCharging()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/usage/AppStandbyController;->setChargingState(Z)V

    .line 485
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    new-instance v1, Lcom/android/server/usage/-$$Lambda$AppStandbyController$eFYmNoFgBdX9ZGJEOAzlovFS3-c;

    invoke-direct {v1, p0}, Lcom/android/server/usage/-$$Lambda$AppStandbyController$eFYmNoFgBdX9ZGJEOAzlovFS3-c;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 480
    :cond_3
    :goto_0
    nop

    .line 487
    :goto_1
    return-void
.end method

.method public onUserRemoved(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1025
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1026
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppIdleHistory;->onUserRemoved(I)V

    .line 1027
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1028
    :try_start_1
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1029
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1030
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1031
    return-void

    .line 1029
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

    .line 1030
    .restart local p0    # "this":Lcom/android/server/usage/AppStandbyController;
    .restart local p1    # "userId":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public postCheckIdleStates(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 636
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 637
    return-void
.end method

.method public postOneTimeCheckIdleStates()V
    .locals 2

    .line 641
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->getBootPhase()I

    move-result v0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    .line 643
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mPendingOneTimeCheckIdleStates:Z

    goto :goto_0

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendEmptyMessage(I)Z

    .line 646
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mPendingOneTimeCheckIdleStates:Z

    .line 648
    :goto_0
    return-void
.end method

.method public postReportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1858
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1859
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1860
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1861
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1862
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1863
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1864
    return-void
.end method

.method public postReportExemptedSyncStart(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1874
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1875
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1876
    return-void
.end method

.method public postReportSyncScheduled(Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "exempted"    # Z

    .line 1868
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1869
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1870
    return-void
.end method

.method public removeListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    .line 1050
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1051
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1052
    monitor-exit v0

    .line 1053
    return-void

    .line 1052
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reportEvent(Landroid/app/usage/UsageEvents$Event;I)V
    .locals 16
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;
    .param p2, "userId"    # I

    .line 878
    move-object/from16 v12, p0

    iget-boolean v0, v12, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 879
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v13

    .line 880
    .local v13, "eventType":I
    const/4 v0, 0x1

    if-eq v13, v0, :cond_2

    const/4 v0, 0x2

    if-eq v13, v0, :cond_2

    const/4 v0, 0x6

    if-eq v13, v0, :cond_2

    const/4 v0, 0x7

    if-eq v13, v0, :cond_2

    const/16 v0, 0xa

    if-eq v13, v0, :cond_2

    const/16 v0, 0xe

    if-eq v13, v0, :cond_2

    const/16 v0, 0xd

    if-eq v13, v0, :cond_2

    const/16 v0, 0x13

    if-ne v13, v0, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v15, p2

    goto :goto_2

    .line 888
    :cond_2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 889
    .local v14, "pkg":Ljava/lang/String;
    move/from16 v15, p2

    invoke-direct {v12, v14, v15}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v9

    .line 890
    .local v9, "linkedProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    iget-object v10, v12, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v10

    .line 891
    :try_start_0
    iget-object v0, v12, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v4

    .line 892
    .local v4, "elapsedRealtime":J
    move-object/from16 v1, p0

    move-object v2, v14

    move v3, v13

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->reportEventLocked(Ljava/lang/String;IJI)V

    .line 894
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    .line 895
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "profileIndex":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 896
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 897
    .local v11, "linkedUserId":I
    move-object/from16 v6, p0

    move-object v7, v14

    move v8, v13

    move-object v2, v9

    move-object v3, v10

    .end local v9    # "linkedProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .local v2, "linkedProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    move-wide v9, v4

    :try_start_1
    invoke-direct/range {v6 .. v11}, Lcom/android/server/usage/AppStandbyController;->reportEventLocked(Ljava/lang/String;IJI)V

    .line 895
    .end local v11    # "linkedUserId":I
    add-int/lit8 v1, v1, 0x1

    move-object v9, v2

    move-object v10, v3

    goto :goto_1

    .end local v2    # "linkedProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .restart local v9    # "linkedProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :cond_3
    move-object v2, v9

    move-object v3, v10

    .line 899
    .end local v0    # "size":I
    .end local v1    # "profileIndex":I
    .end local v4    # "elapsedRealtime":J
    .end local v9    # "linkedProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .restart local v2    # "linkedProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    monitor-exit v3

    .line 901
    .end local v2    # "linkedProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .end local v14    # "pkg":Ljava/lang/String;
    :goto_2
    return-void

    .line 899
    .restart local v9    # "linkedProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .restart local v14    # "pkg":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v2, v9

    move-object v3, v10

    .end local v9    # "linkedProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .restart local v2    # "linkedProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :goto_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method public restrictApp(Ljava/lang/String;II)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "restrictReason"    # I

    .line 1284
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageInstalled(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to restrict uninstalled app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStandbyController"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    return-void

    .line 1289
    :cond_0
    and-int/lit16 v0, p3, 0xff

    or-int/lit16 v0, v0, 0x600

    .line 1290
    .local v0, "reason":I
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v9

    .line 1291
    .local v9, "nowElapsed":J
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mAllowRestrictedBucket:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x2d

    goto :goto_0

    :cond_1
    const/16 v1, 0x28

    :goto_0
    move v4, v1

    .line 1292
    .local v4, "bucket":I
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, v0

    move-wide v6, v9

    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(Ljava/lang/String;IIIJZ)V

    .line 1293
    return-void
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

    .line 1579
    .local p1, "adminPkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1580
    if-nez p1, :cond_0

    .line 1581
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 1583
    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1585
    :goto_0
    monitor-exit v0

    .line 1586
    return-void

    .line 1585
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAppIdleAsync(Ljava/lang/String;ZI)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "idle"    # Z
    .param p3, "userId"    # I

    .line 1247
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1249
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p3, p2, p1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1250
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1251
    return-void

    .line 1247
    :cond_1
    :goto_0
    return-void
.end method

.method setAppIdleEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 429
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 430
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-eq v1, p1, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isInParole()Z

    move-result v1

    .line 432
    .local v1, "oldParoleState":Z
    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    .line 433
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isInParole()Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 434
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->postParoleStateChanged()V

    .line 437
    .end local v1    # "oldParoleState":Z
    :cond_0
    monitor-exit v0

    .line 439
    return-void

    .line 437
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setAppStandbyBucket(Ljava/lang/String;III)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "newBucket"    # I
    .param p4, "reason"    # I

    .line 1376
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1377
    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v6

    .line 1376
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(Ljava/lang/String;IIIJZ)V

    .line 1378
    return-void
.end method

.method public setAppStandbyBucket(Ljava/lang/String;IIII)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "bucket"    # I
    .param p3, "userId"    # I
    .param p4, "callingUid"    # I
    .param p5, "callingPid"    # I

    .line 1298
    new-instance v0, Landroid/app/usage/AppStandbyInfo;

    invoke-direct {v0, p1, p2}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    .line 1299
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1298
    invoke-virtual {p0, v0, p3, p4, p5}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBuckets(Ljava/util/List;III)V

    .line 1301
    return-void
.end method

.method public setAppStandbyBucketbyFreezer(Ljava/lang/String;IIII)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "bucket"    # I
    .param p3, "userId"    # I
    .param p4, "callingUid"    # I
    .param p5, "callingPid"    # I

    .line 1308
    new-instance v0, Landroid/app/usage/AppStandbyInfo;

    invoke-direct {v0, p1, p2}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    .line 1309
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1308
    const/4 v6, 0x1

    move-object v1, p0

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBuckets(Ljava/util/List;IIIZ)V

    .line 1311
    return-void
.end method

.method public setAppStandbyBuckets(Ljava/util/List;III)V
    .locals 6
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/AppStandbyInfo;",
            ">;III)V"
        }
    .end annotation

    .line 1316
    .local p1, "appBuckets":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/AppStandbyInfo;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBuckets(Ljava/util/List;IIIZ)V

    .line 1317
    return-void
.end method

.method public setAppStandbyBuckets(Ljava/util/List;IIIZ)V
    .locals 22
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "callbyFreezer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/AppStandbyInfo;",
            ">;IIIZ)V"
        }
    .end annotation

    .line 1327
    .local p1, "appBuckets":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/AppStandbyInfo;>;"
    move-object/from16 v9, p0

    move/from16 v10, p3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "setAppStandbyBucket"

    const/4 v6, 0x0

    move/from16 v0, p4

    move/from16 v1, p3

    move/from16 v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 1329
    .end local p2    # "userId":I
    .local v11, "userId":I
    if-eqz v10, :cond_1

    const/16 v0, 0x7d0

    if-ne v10, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v12, v0

    .line 1334
    .local v12, "shellCaller":Z
    const/16 v0, 0x3e8

    invoke-static {v10, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    move/from16 v13, p4

    if-ne v13, v0, :cond_3

    goto :goto_2

    :cond_2
    move/from16 v13, p4

    :goto_2
    if-eqz v12, :cond_4

    .line 1336
    :cond_3
    const/16 v0, 0x400

    move v14, v0

    .local v0, "reason":I
    goto :goto_3

    .line 1337
    .end local v0    # "reason":I
    :cond_4
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1338
    const/16 v0, 0x600

    move v14, v0

    .restart local v0    # "reason":I
    goto :goto_3

    .line 1340
    .end local v0    # "reason":I
    :cond_5
    const/16 v0, 0x500

    move v14, v0

    .line 1342
    .local v14, "reason":I
    :goto_3
    const/high16 v15, 0x4c0000

    .line 1345
    .local v15, "packageFlags":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    .line 1346
    .local v8, "numApps":I
    iget-object v0, v9, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v16

    .line 1347
    .local v16, "elapsedRealtime":J
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_4
    if-ge v7, v8, :cond_9

    .line 1348
    move-object/from16 v5, p1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/usage/AppStandbyInfo;

    .line 1349
    .local v6, "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    iget-object v4, v6, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    .line 1350
    .local v4, "packageName":Ljava/lang/String;
    iget v3, v6, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    .line 1351
    .local v3, "bucket":I
    const/16 v0, 0xa

    if-lt v3, v0, :cond_8

    const/16 v0, 0x32

    if-gt v3, v0, :cond_8

    .line 1354
    iget-object v0, v9, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const/high16 v1, 0x4c0000

    .line 1355
    invoke-virtual {v0, v4, v1, v11}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    .line 1357
    .local v2, "packageUid":I
    if-eq v2, v10, :cond_7

    .line 1360
    if-ltz v2, :cond_6

    .line 1366
    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v18, v2

    .end local v2    # "packageUid":I
    .local v18, "packageUid":I
    move v2, v11

    move/from16 p2, v3

    .end local v3    # "bucket":I
    .local p2, "bucket":I
    move-object v9, v4

    .end local v4    # "packageName":Ljava/lang/String;
    .local v9, "packageName":Ljava/lang/String;
    move v4, v14

    move-object/from16 v19, v6

    .end local v6    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .local v19, "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    move-wide/from16 v5, v16

    move/from16 v20, v7

    .end local v7    # "i":I
    .local v20, "i":I
    move v7, v12

    move/from16 v21, v8

    .end local v8    # "numApps":I
    .local v21, "numApps":I
    move/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(Ljava/lang/String;IIIJZZ)V

    .line 1347
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v18    # "packageUid":I
    .end local v19    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .end local p2    # "bucket":I
    add-int/lit8 v7, v20, 0x1

    move-object/from16 v9, p0

    move/from16 v8, v21

    .end local v20    # "i":I
    .restart local v7    # "i":I
    goto :goto_4

    .line 1361
    .end local v21    # "numApps":I
    .restart local v2    # "packageUid":I
    .restart local v3    # "bucket":I
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v6    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .restart local v8    # "numApps":I
    :cond_6
    move/from16 v18, v2

    move-object v9, v4

    .end local v2    # "packageUid":I
    .end local v4    # "packageName":Ljava/lang/String;
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v18    # "packageUid":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set standby bucket for non existent package ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1358
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v18    # "packageUid":I
    .restart local v2    # "packageUid":I
    .restart local v4    # "packageName":Ljava/lang/String;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set your own standby bucket"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1351
    .end local v2    # "packageUid":I
    :cond_8
    move/from16 p2, v3

    move-object v9, v4

    move-object/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    .line 1352
    .end local v3    # "bucket":I
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v6    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .end local v7    # "i":I
    .end local v8    # "numApps":I
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v19    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .restart local v20    # "i":I
    .restart local v21    # "numApps":I
    .restart local p2    # "bucket":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set the standby bucket to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p2

    .end local p2    # "bucket":I
    .local v2, "bucket":I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1371
    .end local v2    # "bucket":I
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v19    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .end local v20    # "i":I
    .end local v21    # "numApps":I
    .restart local v8    # "numApps":I
    :cond_9
    return-void
.end method

.method setChargingState(Z)V
    .locals 4
    .param p1, "isCharging"    # Z

    .line 614
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 615
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mIsCharging:Z

    if-eq v1, p1, :cond_1

    .line 616
    sget-boolean v1, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "AppStandbyController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting mIsCharging to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mIsCharging:Z

    .line 618
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->postParoleStateChanged()V

    .line 620
    :cond_1
    monitor-exit v0

    .line 621
    return-void

    .line 620
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

    .line 1010
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1011
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->setLastJobRunTime(Ljava/lang/String;IJ)V

    .line 1012
    monitor-exit v0

    .line 1013
    return-void

    .line 1012
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
