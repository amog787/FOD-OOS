.class public final Lcom/android/server/job/controllers/QuotaController;
.super Lcom/android/server/job/controllers/StateController;
.source "QuotaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/QuotaController$QcConstants;,
        Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;,
        Lcom/android/server/job/controllers/QuotaController$QcHandler;,
        Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor;,
        Lcom/android/server/job/controllers/QuotaController$StandbyTracker;,
        Lcom/android/server/job/controllers/QuotaController$Timer;,
        Lcom/android/server/job/controllers/QuotaController$TimingSession;,
        Lcom/android/server/job/controllers/QuotaController$ChargingTracker;,
        Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;,
        Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;,
        Lcom/android/server/job/controllers/QuotaController$ExecutionStats;,
        Lcom/android/server/job/controllers/QuotaController$Package;,
        Lcom/android/server/job/controllers/QuotaController$UserPackageMap;
    }
.end annotation


# static fields
.field private static final ALARM_TAG_CLEANUP:Ljava/lang/String; = "*job.cleanup*"

.field private static final ALARM_TAG_QUOTA_CHECK:Ljava/lang/String; = "*job.quota_check*"

.field private static final DEBUG:Z

.field private static final MAX_PERIOD_MS:J = 0x5265c00L

.field private static final MSG_CHECK_PACKAGE:I = 0x2

.field private static final MSG_CLEAN_UP_SESSIONS:I = 0x1

.field private static final MSG_REACHED_QUOTA:I = 0x0

.field private static final MSG_UID_PROCESS_STATE_CHANGED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "JobScheduler.Quota"


# instance fields
.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAllowedTimeIntoQuotaMs:J

.field private mAllowedTimePerPeriodMs:J

.field private final mBucketPeriodsMs:[J

.field private final mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

.field private final mDeleteOldSessionsFunctor:Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor;

.field private final mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

.field private final mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<",
            "[",
            "Lcom/android/server/job/controllers/QuotaController$ExecutionStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mForegroundUids:Landroid/util/SparseBooleanArray;

.field private final mHandler:Landroid/os/Handler;

.field private volatile mInParole:Z

.field private final mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<",
            "Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxBucketJobCounts:[I

.field private final mMaxBucketSessionCounts:[I

.field private mMaxExecutionTimeIntoQuotaMs:J

.field private mMaxExecutionTimeMs:J

.field private mMaxJobCountPerRateLimitingWindow:I

.field private mMaxSessionCountPerRateLimitingWindow:I

.field private mNextCleanupTimeElapsed:J

.field private final mPackageAddedReceiver:Landroid/content/BroadcastReceiver;

.field private final mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<",
            "Lcom/android/server/job/controllers/QuotaController$Timer;",
            ">;"
        }
    .end annotation
.end field

.field private final mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

.field private mQuotaBufferMs:J

.field private mRateLimitingWindowMs:J

.field private final mSessionCleanupAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mShouldThrottle:Z

.field private mTimingSessionCoalescingDurationMs:J

.field private final mTimingSessions:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/QuotaController$TimingSession;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTopStartedJobs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUidObserver:Landroid/app/IUidObserver;

.field private final mUidToPackageCache:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 113
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_1

    const/4 v0, 0x3

    .line 114
    const-string v1, "JobScheduler.Quota"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

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
    sput-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 113
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 9
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;

    .line 577
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 384
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;-><init>(Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    .line 387
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-direct {v0, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;-><init>(Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    .line 390
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-direct {v0, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;-><init>(Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    .line 396
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-direct {v0, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;-><init>(Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    .line 399
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-direct {v0, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;-><init>(Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    .line 402
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 405
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUidToPackageCache:Landroid/util/SparseSetArray;

    .line 412
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 430
    const-wide/32 v2, 0x927c0

    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    .line 436
    const-wide/32 v4, 0xdbba00

    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 442
    const-wide/16 v4, 0x7530

    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    .line 448
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    iget-wide v6, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J

    .line 454
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    .line 457
    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    .line 460
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    .line 467
    iput v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    .line 470
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    .line 471
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/QuotaController$1;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mSessionCleanupAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 479
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$2;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/QuotaController$2;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUidObserver:Landroid/app/IUidObserver;

    .line 502
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$3;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/QuotaController$3;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPackageAddedReceiver:Landroid/content/BroadcastReceiver;

    .line 522
    const/4 v0, 0x4

    new-array v2, v0, [J

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    .line 539
    new-array v2, v0, [I

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    .line 553
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    .line 564
    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    .line 1202
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    .line 1358
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    .line 1861
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor;

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mDeleteOldSessionsFunctor:Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor;

    .line 578
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/job/controllers/QuotaController$QcHandler;-><init>(Lcom/android/server/job/controllers/QuotaController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Landroid/os/Handler;

    .line 579
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    .line 580
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->startTracking()V

    .line 581
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 582
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 583
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/server/job/controllers/QuotaController$QcConstants;-><init>(Lcom/android/server/job/controllers/QuotaController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    .line 585
    new-instance v6, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 586
    .local v6, "filter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mPackageAddedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 589
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 591
    .local v0, "usageStats":Landroid/app/usage/UsageStatsManagerInternal;
    new-instance v2, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;

    invoke-direct {v2, p0}, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    invoke-virtual {v0, v2}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    .line 594
    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v5, 0x5

    invoke-interface {v3, v4, v2, v5, v1}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    goto :goto_0

    .line 597
    :catch_0
    move-exception v1

    .line 601
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->USE_HEARTBEATS:Z

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/server/job/controllers/QuotaController;->mShouldThrottle:Z

    .line 602
    return-void

    nop

    :array_0
    .array-data 8
        0x927c0
        0x6ddd00
        0x6ddd00
        0x5265c00
    .end array-data

    :array_1
    .array-data 4
        0x14
        0x78
        0x32
        0x30
    .end array-data

    :array_2
    .array-data 4
        0x14
        0xa
        0x1
        0x3
    .end array-data
.end method

.method static synthetic access$000(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;

    .line 111
    invoke-static {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->string(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(J)I
    .locals 1
    .param p0, "x0"    # J

    .line 111
    invoke-static {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->hashLong(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .line 111
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/job/controllers/QuotaController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 111
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController;->handleNewChargingStateLocked()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # Lcom/android/server/job/controllers/JobStatus;

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$ChargingTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 111
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->incrementTimingSessionCount(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 111
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/server/job/controllers/QuotaController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # Z

    .line 111
    iput-boolean p1, p0, Lcom/android/server/job/controllers/QuotaController;->mInParole:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/job/controllers/QuotaController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 111
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateAllConstraintsLocked()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$UserPackageMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 111
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$UserPackageMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 111
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/job/controllers/QuotaController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 111
    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController;->mShouldThrottle:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/job/controllers/QuotaController;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # I

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForUidLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/job/controllers/QuotaController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 111
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    return-wide v0
.end method

.method static synthetic access$2502(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # J

    .line 111
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    return-wide p1
.end method

.method static synthetic access$2602(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # J

    .line 111
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/android/server/job/controllers/QuotaController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 111
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    return-wide v0
.end method

.method static synthetic access$2702(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # J

    .line 111
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    return-wide p1
.end method

.method static synthetic access$2800(Lcom/android/server/job/controllers/QuotaController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 111
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    return-wide v0
.end method

.method static synthetic access$2802(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # J

    .line 111
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    return-wide p1
.end method

.method static synthetic access$2902(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # J

    .line 111
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/server/job/controllers/QuotaController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 111
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/job/controllers/QuotaController;)[J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 111
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/job/controllers/QuotaController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 111
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    return-wide v0
.end method

.method static synthetic access$3102(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # J

    .line 111
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    return-wide p1
.end method

.method static synthetic access$3200(Lcom/android/server/job/controllers/QuotaController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 111
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/server/job/controllers/QuotaController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # I

    .line 111
    iput p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/job/controllers/QuotaController;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 111
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/job/controllers/QuotaController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 111
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    return v0
.end method

.method static synthetic access$3402(Lcom/android/server/job/controllers/QuotaController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # I

    .line 111
    iput p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    return p1
.end method

.method static synthetic access$3500(Lcom/android/server/job/controllers/QuotaController;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 111
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/job/controllers/QuotaController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 111
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    return-wide v0
.end method

.method static synthetic access$3602(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # J

    .line 111
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseSetArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 111
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUidToPackageCache:Landroid/util/SparseSetArray;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/JobStatus;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "x2"    # Z

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$UserPackageMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 111
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/job/controllers/QuotaController;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 111
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method private calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJ)J
    .locals 15
    .param p2, "windowStartElapsed"    # J
    .param p4, "deadSpaceMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/QuotaController$TimingSession;",
            ">;JJ)J"
        }
    .end annotation

    .line 900
    .local p1, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    const-wide/16 v0, 0x0

    .line 901
    .local v0, "timeUntilQuotaConsumedMs":J
    move-wide/from16 v2, p2

    .line 902
    .local v2, "start":J
    const/4 v4, 0x0

    move-wide v5, v0

    move-wide/from16 v0, p4

    .end local p4    # "deadSpaceMs":J
    .local v0, "deadSpaceMs":J
    .local v4, "i":I
    .local v5, "timeUntilQuotaConsumedMs":J
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 903
    move-object/from16 v7, p1

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 905
    .local v8, "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    iget-wide v9, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v9, v9, p2

    if-gez v9, :cond_0

    .line 907
    goto :goto_1

    .line 908
    :cond_0
    iget-wide v9, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v9, v9, p2

    if-gtz v9, :cond_1

    .line 910
    iget-wide v9, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long v9, v9, p2

    add-long/2addr v5, v9

    .line 911
    iget-wide v2, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    goto :goto_1

    .line 915
    :cond_1
    iget-wide v9, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v9, v2

    .line 916
    .local v9, "diff":J
    cmp-long v11, v9, v0

    if-lez v11, :cond_2

    .line 917
    goto :goto_2

    .line 919
    :cond_2
    iget-wide v11, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v13, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v11, v13

    add-long/2addr v11, v9

    add-long/2addr v5, v11

    .line 921
    sub-long/2addr v0, v9

    .line 922
    iget-wide v2, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 902
    .end local v8    # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    .end local v9    # "diff":J
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v7, p1

    .line 926
    .end local v4    # "i":I
    :goto_2
    add-long/2addr v5, v0

    .line 927
    move-object v4, p0

    iget-wide v8, v4, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    cmp-long v8, v5, v8

    if-lez v8, :cond_4

    .line 928
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Calculated quota consumed time too high: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "JobScheduler.Quota"

    invoke-static {v9, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_4
    return-wide v5
.end method

.method private getEffectiveStandbyBucket(Lcom/android/server/job/controllers/JobStatus;)I
    .locals 2
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 751
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v0

    .line 752
    .local v0, "bucket":I
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/OpBGFrozenInjector;->isUidImperceptible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 753
    return v0

    .line 757
    :cond_0
    iget-boolean v1, p1, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 762
    :cond_1
    return v0

    .line 760
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private getExecutionStatsLocked(ILjava/lang/String;IZ)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .locals 11
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "standbyBucket"    # I
    .param p4, "refreshStatsIfOld"    # Z

    .line 945
    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    .line 946
    const-string v0, "JobScheduler.Quota"

    const-string v1, "getExecutionStatsLocked called for a NEVER app."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v0}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    return-object v0

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 950
    .local v0, "appStats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-nez v0, :cond_1

    .line 951
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    array-length v1, v1

    new-array v0, v1, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 952
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->add(ILjava/lang/String;Ljava/lang/Object;)V

    .line 954
    :cond_1
    aget-object v1, v0, p3

    .line 955
    .local v1, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-nez v1, :cond_2

    .line 956
    new-instance v2, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v2}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    move-object v1, v2

    .line 957
    aput-object v1, v0, p3

    .line 959
    :cond_2
    if-eqz p4, :cond_5

    .line 960
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    aget-wide v2, v2, p3

    .line 961
    .local v2, "bucketWindowSizeMs":J
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    aget v4, v4, p3

    .line 962
    .local v4, "jobCountLimit":I
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    aget v5, v5, p3

    .line 963
    .local v5, "sessionCountLimit":I
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v6, p1, p2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 964
    .local v6, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    iget-wide v7, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    sget-object v9, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 965
    invoke-virtual {v9}, Ljava/time/Clock;->millis()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_4

    iget-wide v7, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    cmp-long v7, v7, v2

    if-nez v7, :cond_4

    iget v7, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-ne v7, v4, :cond_4

    iget v7, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-eq v7, v5, :cond_5

    .line 970
    :cond_4
    iput-wide v2, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    .line 971
    iput v4, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    .line 972
    iput v5, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    .line 973
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/job/controllers/QuotaController;->updateExecutionStatsLocked(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)V

    .line 977
    .end local v2    # "bucketWindowSizeMs":J
    .end local v4    # "jobCountLimit":I
    .end local v5    # "sessionCountLimit":I
    .end local v6    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    :cond_5
    return-object v1
.end method

.method private getRemainingExecutionTimeLocked(ILjava/lang/String;I)J
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "standbyBucket"    # I

    .line 836
    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    .line 837
    const-wide/16 v0, 0x0

    return-wide v0

    .line 839
    :cond_0
    nop

    .line 840
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v0

    .line 839
    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)J
    .locals 6
    .param p1, "stats"    # Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 844
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    iget-wide v4, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private handleNewChargingStateLocked()V
    .locals 5

    .line 1245
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1246
    .local v0, "nowElapsed":J
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->isCharging()Z

    move-result v2

    .line 1247
    .local v2, "isCharging":Z
    sget-boolean v3, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleNewChargingStateLocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "JobScheduler.Quota"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    :cond_0
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    new-instance v4, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$DLtQo5Uin5fgikFII8lOB91DOkc;

    invoke-direct {v4, v0, v1, v2}, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$DLtQo5Uin5fgikFII8lOB91DOkc;-><init>(JZ)V

    invoke-virtual {v3, v4}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->forEach(Ljava/util/function/Consumer;)V

    .line 1253
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateAllConstraintsLocked()V

    .line 1254
    return-void
.end method

.method private static hashLong(J)I
    .locals 2
    .param p0, "val"    # J

    .line 252
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method private incrementTimingSessionCount(ILjava/lang/String;)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1150
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1151
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1152
    .local v2, "appStats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-nez v2, :cond_0

    .line 1153
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    array-length v3, v3

    new-array v2, v3, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1154
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v3, p1, p2, v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->add(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1156
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 1157
    aget-object v4, v2, v3

    .line 1158
    .local v4, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-nez v4, :cond_1

    .line 1159
    new-instance v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v5}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    move-object v4, v5

    .line 1160
    aput-object v4, v2, v3

    .line 1162
    :cond_1
    iget-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    cmp-long v5, v5, v0

    if-gtz v5, :cond_2

    .line 1163
    iget-wide v5, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    .line 1164
    const/4 v5, 0x0

    iput v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    .line 1166
    :cond_2
    iget v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    .line 1156
    .end local v4    # "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1168
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method private isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 741
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isUidInForeground(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 731
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    const/4 v0, 0x1

    return v0

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 735
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 736
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z
    .locals 7
    .param p1, "stats"    # Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .param p2, "standbyBucket"    # I

    .line 798
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 799
    .local v0, "now":J
    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    cmp-long v2, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_1

    iget v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    iget v5, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    if-ge v2, v5, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    .line 802
    .local v2, "isUnderAllowedTimeQuota":Z
    :goto_1
    if-eqz v2, :cond_2

    iget v5, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    aget v6, v6, p2

    if-ge v5, v6, :cond_2

    move v3, v4

    :cond_2
    return v3
.end method

.method private isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z
    .locals 7
    .param p1, "stats"    # Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .param p2, "standbyBucket"    # I

    .line 808
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 809
    .local v0, "now":J
    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    cmp-long v2, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_1

    iget v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    iget v5, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    if-ge v2, v5, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    .line 811
    .local v2, "isUnderAllowedTimeQuota":Z
    :goto_1
    if-eqz v2, :cond_2

    iget v5, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    aget v6, v6, p2

    if-ge v5, v6, :cond_2

    move v3, v4

    :cond_2
    return v3
.end method

.method static synthetic lambda$handleNewChargingStateLocked$2(JZLcom/android/server/job/controllers/QuotaController$Timer;)V
    .locals 0
    .param p0, "nowElapsed"    # J
    .param p2, "isCharging"    # Z
    .param p3, "t"    # Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 1251
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$Timer;->onStateChangedLocked(JZ)V

    return-void
.end method

.method static synthetic lambda$invalidateAllExecutionStatsLocked$1(J[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)V
    .locals 2
    .param p0, "nowElapsed"    # J
    .param p2, "appStats"    # [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1101
    if-eqz p2, :cond_1

    .line 1102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 1103
    aget-object v1, p2, v0

    .line 1104
    .local v1, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-eqz v1, :cond_0

    .line 1105
    iput-wide p0, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 1102
    .end local v1    # "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1109
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private maybeUpdateAllConstraintsLocked()V
    .locals 6

    .line 1257
    const/4 v0, 0x0

    .line 1258
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "u":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numUsers()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1259
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v2, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->keyAt(I)I

    move-result v2

    .line 1260
    .local v2, "userId":I
    const/4 v3, 0x0

    .local v3, "p":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v4, v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numPackagesForUser(I)I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1261
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v4, v1, v3}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->keyAt(II)Ljava/lang/String;

    move-result-object v4

    .line 1262
    .local v4, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2, v4}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(ILjava/lang/String;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1260
    .end local v4    # "packageName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1258
    .end local v2    # "userId":I
    .end local v3    # "p":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1265
    .end local v1    # "u":I
    :cond_1
    if-eqz v0, :cond_2

    .line 1266
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 1268
    :cond_2
    return-void
.end method

.method private maybeUpdateConstraintForPkgLocked(ILjava/lang/String;)Z
    .locals 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1277
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1278
    .local v0, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    .line 1283
    :cond_0
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v1

    .line 1284
    .local v1, "realStandbyBucket":I
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(ILjava/lang/String;I)Z

    move-result v2

    .line 1285
    .local v2, "realInQuota":Z
    const/4 v3, 0x0

    .line 1286
    .local v3, "changed":Z
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_3

    .line 1287
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/JobStatus;

    .line 1288
    .local v6, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {p0, v6}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1291
    invoke-virtual {v6, v5}, Lcom/android/server/job/controllers/JobStatus;->setQuotaConstraintSatisfied(Z)Z

    move-result v7

    or-int/2addr v3, v7

    goto :goto_1

    .line 1292
    :cond_1
    if-eqz v1, :cond_2

    .line 1293
    invoke-direct {p0, v6}, Lcom/android/server/job/controllers/QuotaController;->getEffectiveStandbyBucket(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v7

    if-ne v1, v7, :cond_2

    .line 1297
    invoke-direct {p0, v6, v2}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v7

    or-int/2addr v3, v7

    goto :goto_1

    .line 1300
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v7

    or-int/2addr v3, v7

    .line 1286
    .end local v6    # "js":Lcom/android/server/job/controllers/JobStatus;
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1303
    .end local v4    # "i":I
    :cond_3
    if-nez v2, :cond_4

    .line 1307
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V

    goto :goto_2

    .line 1309
    :cond_4
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;

    .line 1310
    .local v4, "alarmListener":Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->isWaiting()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1311
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v5, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1313
    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->setTriggerTime(J)V

    .line 1316
    .end local v4    # "alarmListener":Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;
    :cond_5
    :goto_2
    return v3

    .line 1279
    .end local v1    # "realStandbyBucket":I
    .end local v2    # "realInQuota":Z
    .end local v3    # "changed":Z
    :cond_6
    :goto_3
    return v1
.end method

.method private maybeUpdateConstraintForUidLocked(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 1361
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobStore;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    .line 1363
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->postProcess()V

    .line 1364
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    iget-boolean v0, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->wasJobChanged:Z

    .line 1365
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->reset()V

    .line 1366
    return v0
.end method

.method private setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;Z)Z
    .locals 4
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "isWithinQuota"    # Z

    .line 1450
    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getWhenStandbyDeferred()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1452
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/job/controllers/JobStatus;->setWhenStandbyDeferred(J)V

    .line 1454
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->setQuotaConstraintSatisfied(Z)Z

    move-result v0

    return v0
.end method

.method private static string(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method deleteObsoleteSessionsLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1866
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mDeleteOldSessionsFunctor:Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor;

    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->forEach(Ljava/util/function/Consumer;)V

    .line 1867
    return-void
.end method

.method public dumpConstants(Landroid/util/proto/ProtoOutputStream;)V
    .locals 1
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 2832
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->access$3800(Lcom/android/server/job/controllers/QuotaController$QcConstants;Landroid/util/proto/ProtoOutputStream;)V

    .line 2833
    return-void
.end method

.method public dumpConstants(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 1
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 2827
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->access$3700(Lcom/android/server/job/controllers/QuotaController$QcConstants;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2828
    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .locals 22
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 2691
    .local p4, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 2692
    .local v3, "token":J
    const-wide v5, 0x10b00000009L

    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 2694
    .local v5, "mToken":J
    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    invoke-virtual {v7}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->isCharging()Z

    move-result v7

    const-wide v8, 0x10800000001L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2695
    iget-boolean v7, v0, Lcom/android/server/job/controllers/QuotaController;->mInParole:Z

    const-wide v10, 0x10800000002L

    invoke-virtual {v1, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2696
    sget-object v7, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 2697
    invoke-virtual {v7}, Ljava/time/Clock;->millis()J

    move-result-wide v10

    .line 2696
    const-wide v12, 0x10300000006L

    invoke-virtual {v1, v12, v13, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2699
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v10, v0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v10

    if-ge v7, v10, :cond_0

    .line 2700
    const-wide v10, 0x20500000003L

    iget-object v14, v0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 2701
    invoke-virtual {v14, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v14

    .line 2700
    invoke-virtual {v1, v10, v11, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2699
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2704
    .end local v7    # "i":I
    :cond_0
    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    new-instance v10, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$URLEdatPa0Sor76K2xt12wlVxx4;

    invoke-direct {v10, v0, v2, v1}, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$URLEdatPa0Sor76K2xt12wlVxx4;-><init>(Lcom/android/server/job/controllers/QuotaController;Ljava/util/function/Predicate;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v7, v10}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->forEach(Ljava/util/function/Consumer;)V

    .line 2729
    const/4 v7, 0x0

    .local v7, "u":I
    :goto_1
    iget-object v10, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v10}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numUsers()I

    move-result v10

    if-ge v7, v10, :cond_8

    .line 2730
    iget-object v10, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v10, v7}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->keyAt(I)I

    move-result v10

    .line 2731
    .local v10, "userId":I
    const/4 v11, 0x0

    .local v11, "p":I
    :goto_2
    iget-object v14, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v14, v10}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numPackagesForUser(I)I

    move-result v14

    if-ge v11, v14, :cond_7

    .line 2732
    iget-object v14, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v14, v7, v11}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->keyAt(II)Ljava/lang/String;

    move-result-object v14

    .line 2733
    .local v14, "pkgName":Ljava/lang/String;
    const-wide v8, 0x20b00000005L

    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 2735
    .local v8, "psToken":J
    iget-object v15, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v15, v7, v11}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/job/controllers/QuotaController$Timer;

    const-wide v12, 0x10b00000002L

    invoke-virtual {v15, v1, v12, v13, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V

    .line 2738
    iget-object v12, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v12, v10, v14}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2739
    .local v12, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    if-eqz v12, :cond_2

    .line 2740
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    .local v13, "j":I
    :goto_3
    if-ltz v13, :cond_1

    .line 2741
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 2742
    .local v15, "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    move-wide/from16 v17, v3

    .end local v3    # "token":J
    .local v17, "token":J
    const-wide v2, 0x20b00000003L

    invoke-virtual {v15, v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController$TimingSession;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2740
    .end local v15    # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v2, p4

    move-wide/from16 v3, v17

    goto :goto_3

    .end local v17    # "token":J
    .restart local v3    # "token":J
    :cond_1
    move-wide/from16 v17, v3

    .end local v3    # "token":J
    .restart local v17    # "token":J
    goto :goto_4

    .line 2739
    .end local v13    # "j":I
    .end local v17    # "token":J
    .restart local v3    # "token":J
    :cond_2
    move-wide/from16 v17, v3

    .line 2747
    .end local v3    # "token":J
    .restart local v17    # "token":J
    :goto_4
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v2, v10, v14}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 2748
    .local v2, "stats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-eqz v2, :cond_5

    .line 2749
    const/4 v13, 0x0

    .local v13, "bucketIndex":I
    :goto_5
    array-length v15, v2

    if-ge v13, v15, :cond_4

    .line 2750
    aget-object v15, v2, v13

    .line 2751
    .local v15, "es":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-nez v15, :cond_3

    .line 2752
    move-wide/from16 v19, v5

    move/from16 v16, v11

    move-object/from16 v21, v12

    goto/16 :goto_6

    .line 2754
    :cond_3
    const-wide v3, 0x20b00000004L

    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 2756
    .local v3, "esToken":J
    move-wide/from16 v19, v5

    .end local v5    # "mToken":J
    .local v19, "mToken":J
    const-wide v5, 0x10e00000001L

    invoke-virtual {v1, v5, v6, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2759
    iget-wide v5, v15, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    move/from16 v16, v11

    move-object/from16 v21, v12

    const-wide v11, 0x10300000002L

    .end local v11    # "p":I
    .end local v12    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    .local v16, "p":I
    .local v21, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    invoke-virtual {v1, v11, v12, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2762
    const-wide v5, 0x10300000003L

    iget-wide v11, v15, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    invoke-virtual {v1, v5, v6, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2765
    const-wide v5, 0x1050000000eL

    iget v11, v15, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    invoke-virtual {v1, v5, v6, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2768
    const-wide v5, 0x1050000000fL

    iget v11, v15, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    invoke-virtual {v1, v5, v6, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2771
    const-wide v5, 0x10300000004L

    iget-wide v11, v15, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    invoke-virtual {v1, v5, v6, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2774
    const-wide v5, 0x10500000005L

    iget v11, v15, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    invoke-virtual {v1, v5, v6, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2777
    iget-wide v5, v15, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    const-wide v11, 0x10300000006L

    invoke-virtual {v1, v11, v12, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2780
    const-wide v5, 0x10500000007L

    iget v11, v15, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    invoke-virtual {v1, v5, v6, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2783
    const-wide v5, 0x1050000000bL

    iget v11, v15, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    invoke-virtual {v1, v5, v6, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2786
    const-wide v5, 0x10300000008L

    iget-wide v11, v15, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    invoke-virtual {v1, v5, v6, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2789
    const-wide v5, 0x10300000009L

    iget-wide v11, v15, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    invoke-virtual {v1, v5, v6, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2792
    const-wide v5, 0x1050000000aL

    iget v11, v15, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    invoke-virtual {v1, v5, v6, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2795
    const-wide v5, 0x1030000000cL

    iget-wide v11, v15, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    invoke-virtual {v1, v5, v6, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2798
    const-wide v5, 0x1050000000dL

    iget v11, v15, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    invoke-virtual {v1, v5, v6, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2801
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2749
    .end local v3    # "esToken":J
    .end local v15    # "es":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    :goto_6
    add-int/lit8 v13, v13, 0x1

    move/from16 v11, v16

    move-wide/from16 v5, v19

    move-object/from16 v12, v21

    goto/16 :goto_5

    .end local v16    # "p":I
    .end local v19    # "mToken":J
    .end local v21    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    .restart local v5    # "mToken":J
    .restart local v11    # "p":I
    .restart local v12    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    :cond_4
    move-wide/from16 v19, v5

    move/from16 v16, v11

    move-object/from16 v21, v12

    .end local v5    # "mToken":J
    .end local v11    # "p":I
    .end local v12    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    .restart local v16    # "p":I
    .restart local v19    # "mToken":J
    .restart local v21    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    goto :goto_7

    .line 2748
    .end local v13    # "bucketIndex":I
    .end local v16    # "p":I
    .end local v19    # "mToken":J
    .end local v21    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    .restart local v5    # "mToken":J
    .restart local v11    # "p":I
    .restart local v12    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    :cond_5
    move-wide/from16 v19, v5

    move/from16 v16, v11

    move-object/from16 v21, v12

    .line 2805
    .end local v5    # "mToken":J
    .end local v11    # "p":I
    .end local v12    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    .restart local v16    # "p":I
    .restart local v19    # "mToken":J
    .restart local v21    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    :goto_7
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v3, v10, v14}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;

    .line 2806
    .local v3, "alarmListener":Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;
    if-eqz v3, :cond_6

    .line 2807
    const-wide v4, 0x10b00000005L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 2809
    .local v4, "alToken":J
    nop

    .line 2810
    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->isWaiting()Z

    move-result v6

    .line 2809
    const-wide v11, 0x10800000001L

    invoke-virtual {v1, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2811
    nop

    .line 2813
    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->getTriggerTimeElapsed()J

    move-result-wide v11

    .line 2811
    move-object v6, v2

    move-object v13, v3

    const-wide v2, 0x10300000002L

    .end local v2    # "stats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .end local v3    # "alarmListener":Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;
    .local v6, "stats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .local v13, "alarmListener":Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;
    invoke-virtual {v1, v2, v3, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2814
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_8

    .line 2806
    .end local v4    # "alToken":J
    .end local v6    # "stats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .end local v13    # "alarmListener":Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;
    .restart local v2    # "stats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .restart local v3    # "alarmListener":Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;
    :cond_6
    move-object v6, v2

    move-object v13, v3

    .line 2817
    .end local v2    # "stats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .end local v3    # "alarmListener":Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;
    .restart local v6    # "stats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .restart local v13    # "alarmListener":Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;
    :goto_8
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2731
    .end local v6    # "stats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .end local v8    # "psToken":J
    .end local v13    # "alarmListener":Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;
    .end local v14    # "pkgName":Ljava/lang/String;
    .end local v21    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    add-int/lit8 v11, v16, 0x1

    move-object/from16 v2, p4

    move-wide/from16 v3, v17

    move-wide/from16 v5, v19

    const-wide v8, 0x10800000001L

    const-wide v12, 0x10300000006L

    .end local v16    # "p":I
    .restart local v11    # "p":I
    goto/16 :goto_2

    .end local v17    # "token":J
    .end local v19    # "mToken":J
    .local v3, "token":J
    .restart local v5    # "mToken":J
    :cond_7
    move-wide/from16 v17, v3

    move-wide/from16 v19, v5

    move/from16 v16, v11

    .line 2729
    .end local v3    # "token":J
    .end local v5    # "mToken":J
    .end local v10    # "userId":I
    .end local v11    # "p":I
    .restart local v17    # "token":J
    .restart local v19    # "mToken":J
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p4

    const-wide v8, 0x10800000001L

    const-wide v12, 0x10300000006L

    goto/16 :goto_1

    .end local v17    # "token":J
    .end local v19    # "mToken":J
    .restart local v3    # "token":J
    .restart local v5    # "mToken":J
    :cond_8
    move-wide/from16 v17, v3

    move-wide/from16 v19, v5

    .line 2821
    .end local v3    # "token":J
    .end local v5    # "mToken":J
    .end local v7    # "u":I
    .restart local v17    # "token":J
    .restart local v19    # "mToken":J
    move-wide/from16 v2, v19

    .end local v19    # "mToken":J
    .local v2, "mToken":J
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2822
    move-wide/from16 v4, v17

    .end local v17    # "token":J
    .local v4, "token":J
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2823
    return-void
.end method

.method public dumpControllerStateLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .locals 9
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 2569
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Is throttling: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/job/controllers/QuotaController;->mShouldThrottle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Is charging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->isCharging()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In parole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/job/controllers/QuotaController;->mInParole:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current elapsed time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2573
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2575
    const-string v0, "Foreground UIDs: "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2576
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2577
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2579
    const-string v0, "Cached UID->package map:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2580
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2581
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v1}, Landroid/util/SparseSetArray;->size()I

    move-result v1

    const-string v2, ": "

    if-ge v0, v1, :cond_0

    .line 2582
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v1

    .line 2583
    .local v1, "uid":I
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2584
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2585
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2581
    .end local v1    # "uid":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2587
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2588
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2590
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    new-instance v1, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$LrhE3MR6b_HLbgtFW6XDyRkYhjc;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$LrhE3MR6b_HLbgtFW6XDyRkYhjc;-><init>(Lcom/android/server/job/controllers/QuotaController;Ljava/util/function/Predicate;Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->forEach(Ljava/util/function/Consumer;)V

    .line 2621
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2622
    const/4 v0, 0x0

    .local v0, "u":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numUsers()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 2623
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v1, v0}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->keyAt(I)I

    move-result v1

    .line 2624
    .local v1, "userId":I
    const/4 v3, 0x0

    .local v3, "p":I
    :goto_2
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v4, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numPackagesForUser(I)I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 2625
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v4, v0, v3}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->keyAt(II)Ljava/lang/String;

    move-result-object v4

    .line 2626
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v5, v0, v3}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$Timer;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V

    .line 2627
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2628
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v5, v1, v4}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2629
    .local v5, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    if-eqz v5, :cond_2

    .line 2630
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2631
    const-string v6, "Saved sessions:"

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2632
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2633
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "j":I
    :goto_3
    if-ltz v6, :cond_1

    .line 2634
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 2635
    .local v7, "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    invoke-virtual {v7, p1}, Lcom/android/server/job/controllers/QuotaController$TimingSession;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2633
    .end local v7    # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 2637
    .end local v6    # "j":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2638
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2639
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2624
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2622
    .end local v1    # "userId":I
    .end local v3    # "p":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2644
    .end local v0    # "u":I
    :cond_4
    const-string v0, "Cached execution stats:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2645
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2646
    const/4 v0, 0x0

    .restart local v0    # "u":I
    :goto_4
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numUsers()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 2647
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v1, v0}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->keyAt(I)I

    move-result v1

    .line 2648
    .restart local v1    # "userId":I
    const/4 v3, 0x0

    .restart local v3    # "p":I
    :goto_5
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v4, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numPackagesForUser(I)I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 2649
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v4, v0, v3}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->keyAt(II)Ljava/lang/String;

    move-result-object v4

    .line 2650
    .restart local v4    # "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v5, v0, v3}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 2652
    .local v5, "stats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    invoke-static {v1, v4}, Lcom/android/server/job/controllers/QuotaController;->string(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2653
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2654
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6
    array-length v7, v5

    if-ge v6, v7, :cond_6

    .line 2655
    aget-object v7, v5, v6

    .line 2656
    .local v7, "executionStats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-eqz v7, :cond_5

    .line 2657
    invoke-static {v6}, Lcom/android/server/job/controllers/JobStatus;->bucketName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2658
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2659
    invoke-virtual {p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2654
    .end local v7    # "executionStats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 2662
    .end local v6    # "i":I
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2648
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "stats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2646
    .end local v1    # "userId":I
    .end local v3    # "p":I
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2665
    .end local v0    # "u":I
    :cond_8
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2667
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2668
    const-string v0, "In quota alarms:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2669
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2670
    const/4 v0, 0x0

    .restart local v0    # "u":I
    :goto_7
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numUsers()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 2671
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v1, v0}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->keyAt(I)I

    move-result v1

    .line 2672
    .restart local v1    # "userId":I
    const/4 v3, 0x0

    .restart local v3    # "p":I
    :goto_8
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v4, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numPackagesForUser(I)I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 2673
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v4, v0, v3}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->keyAt(II)Ljava/lang/String;

    move-result-object v4

    .line 2674
    .restart local v4    # "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v5, v0, v3}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;

    .line 2676
    .local v5, "alarmListener":Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;
    invoke-static {v1, v4}, Lcom/android/server/job/controllers/QuotaController;->string(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2677
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2678
    invoke-virtual {v5}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->isWaiting()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2679
    invoke-virtual {v5}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->getTriggerTimeElapsed()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    goto :goto_9

    .line 2681
    :cond_9
    const-string v6, "NOT WAITING"

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2672
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "alarmListener":Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 2670
    .end local v1    # "userId":I
    .end local v3    # "p":I
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2685
    .end local v0    # "u":I
    :cond_b
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2686
    return-void
.end method

.method getAllowedTimePerPeriodMs()J
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2489
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    return-wide v0
.end method

.method getBucketMaxJobCounts()[I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2495
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    return-object v0
.end method

.method getBucketMaxSessionCounts()[I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2501
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    return-object v0
.end method

.method getBucketWindowSizes()[J
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2507
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    return-object v0
.end method

.method getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "standbyBucket"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 938
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;IZ)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v0

    return-object v0
.end method

.method getForegroundUids()Landroid/util/SparseBooleanArray;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2513
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2519
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getInQuotaBufferMs()J
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2524
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    return-wide v0
.end method

.method getMaxExecutionTimeMs()J
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2529
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    return-wide v0
.end method

.method getMaxJobCountPerRateLimitingWindow()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2534
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    return v0
.end method

.method getMaxSessionCountPerRateLimitingWindow()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2539
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    return v0
.end method

.method getQcConstants()Lcom/android/server/job/controllers/QuotaController$QcConstants;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2561
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    return-object v0
.end method

.method getRateLimitingWindowMs()J
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2544
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    return-wide v0
.end method

.method getRemainingExecutionTimeLocked(ILjava/lang/String;)J
    .locals 3
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 824
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 825
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 824
    invoke-static {p2, p1, v0, v1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v0

    .line 826
    .local v0, "standbyBucket":I
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(ILjava/lang/String;I)J

    move-result-wide v1

    return-wide v1
.end method

.method getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J
    .locals 3
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 817
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    .line 818
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 819
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->getEffectiveStandbyBucket(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    .line 817
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(ILjava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method getTimeUntilQuotaConsumedLocked(ILjava/lang/String;)J
    .locals 22
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 856
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v9

    .line 857
    .local v9, "nowElapsed":J
    invoke-static {v8, v7, v9, v10}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v11

    .line 859
    .local v11, "standbyBucket":I
    const/4 v0, 0x4

    if-ne v11, v0, :cond_0

    .line 860
    const-wide/16 v0, 0x0

    return-wide v0

    .line 862
    :cond_0
    iget-object v0, v6, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0, v7, v8}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/util/List;

    .line 863
    .local v12, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    if-eqz v12, :cond_3

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 867
    :cond_1
    invoke-virtual {v6, v7, v8, v11}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v13

    .line 868
    .local v13, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    iget-wide v0, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    sub-long v14, v9, v0

    .line 869
    .local v14, "startWindowElapsed":J
    const-wide/32 v0, 0x5265c00

    sub-long v16, v9, v0

    .line 870
    .local v16, "startMaxElapsed":J
    iget-wide v0, v6, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    iget-wide v2, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    sub-long v18, v0, v2

    .line 871
    .local v18, "allowedTimeRemainingMs":J
    iget-wide v0, v6, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    iget-wide v2, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    sub-long v20, v0, v2

    .line 876
    .local v20, "maxExecutionTimeRemainingMs":J
    iget-wide v0, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    iget-wide v2, v6, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 877
    move-object/from16 v0, p0

    move-object v1, v12

    move-wide/from16 v2, v16

    move-wide/from16 v4, v20

    invoke-direct/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJ)J

    move-result-wide v0

    return-wide v0

    .line 885
    :cond_2
    nop

    .line 886
    move-object/from16 v0, p0

    move-object v1, v12

    move-wide/from16 v2, v16

    move-wide/from16 v4, v20

    invoke-direct/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJ)J

    move-result-wide v4

    .line 888
    move-wide v2, v14

    move-wide v7, v4

    move-wide/from16 v4, v18

    invoke-direct/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJ)J

    move-result-wide v0

    .line 885
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 864
    .end local v13    # "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .end local v14    # "startWindowElapsed":J
    .end local v16    # "startMaxElapsed":J
    .end local v18    # "allowedTimeRemainingMs":J
    .end local v20    # "maxExecutionTimeRemainingMs":J
    :cond_3
    :goto_0
    iget-wide v0, v6, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    return-wide v0
.end method

.method getTimingSessionCoalescingDurationMs()J
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2549
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    return-wide v0
.end method

.method getTimingSessions(ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/QuotaController$TimingSession;",
            ">;"
        }
    .end annotation

    .line 2555
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method incrementJobCount(ILjava/lang/String;I)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "count"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1129
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1130
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1131
    .local v2, "appStats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-nez v2, :cond_0

    .line 1132
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    array-length v3, v3

    new-array v2, v3, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1133
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v3, p1, p2, v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->add(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1135
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 1136
    aget-object v4, v2, v3

    .line 1137
    .local v4, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-nez v4, :cond_1

    .line 1138
    new-instance v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v5}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    move-object v4, v5

    .line 1139
    aput-object v4, v2, v3

    .line 1141
    :cond_1
    iget-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    cmp-long v5, v5, v0

    if-gtz v5, :cond_2

    .line 1142
    iget-wide v5, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    .line 1143
    const/4 v5, 0x0

    iput v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    .line 1145
    :cond_2
    iget v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    add-int/2addr v5, p3

    iput v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    .line 1135
    .end local v4    # "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1147
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method invalidateAllExecutionStatsLocked()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1099
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1100
    .local v0, "nowElapsed":J
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    new-instance v3, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$_TfEfRX3HfrCL4MPpYyPFNwGLtM;

    invoke-direct {v3, v0, v1}, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$_TfEfRX3HfrCL4MPpYyPFNwGLtM;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->forEach(Ljava/util/function/Consumer;)V

    .line 1110
    return-void
.end method

.method invalidateAllExecutionStatsLocked(ILjava/lang/String;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1115
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1116
    .local v0, "appStats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-eqz v0, :cond_1

    .line 1117
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 1118
    .local v1, "nowElapsed":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 1119
    aget-object v4, v0, v3

    .line 1120
    .local v4, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-eqz v4, :cond_0

    .line 1121
    iput-wide v1, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 1118
    .end local v4    # "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1125
    .end local v1    # "nowElapsed":J
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method isWithinQuotaLocked(ILjava/lang/String;I)Z
    .locals 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "standbyBucket"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 781
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p3, v1, :cond_0

    return v0

    .line 783
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/job/controllers/QuotaController;->mShouldThrottle:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    .line 786
    :cond_1
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->isCharging()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/job/controllers/QuotaController;->mInParole:Z

    if-eqz v1, :cond_2

    goto :goto_1

    .line 790
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v1

    .line 791
    .local v1, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    invoke-direct {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    .line 792
    invoke-direct {p0, v1, p3}, Lcom/android/server/job/controllers/QuotaController;->isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 793
    invoke-direct {p0, v1, p3}, Lcom/android/server/job/controllers/QuotaController;->isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    nop

    .line 791
    :goto_0
    return v0

    .line 787
    .end local v1    # "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    :cond_4
    :goto_1
    return v2
.end method

.method isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 3
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 767
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->getEffectiveStandbyBucket(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v0

    .line 772
    .local v0, "standbyBucket":I
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 773
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->isUidInForeground(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 775
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    .line 774
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(ILjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 772
    :goto_1
    return v1
.end method

.method public synthetic lambda$dumpControllerStateLocked$3$QuotaController(Ljava/util/function/Predicate;Lcom/android/internal/util/IndentingPrintWriter;Landroid/util/ArraySet;)V
    .locals 4
    .param p1, "predicate"    # Ljava/util/function/Predicate;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p3, "jobs"    # Landroid/util/ArraySet;

    .line 2591
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2592
    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 2593
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2594
    goto :goto_2

    .line 2596
    :cond_0
    const-string v2, "#"

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2597
    invoke-virtual {v1, p2}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 2598
    const-string v2, " from "

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2599
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-static {p2, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2600
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2601
    const-string v2, " (TOP)"

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2603
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2605
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2606
    invoke-direct {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->getEffectiveStandbyBucket(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/job/controllers/JobStatus;->bucketName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2607
    const-string v2, ", "

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2608
    const/high16 v3, 0x1000000

    invoke-virtual {v1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2609
    const-string/jumbo v3, "within quota"

    invoke-virtual {p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 2611
    :cond_2
    const-string/jumbo v3, "not within quota"

    invoke-virtual {p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2613
    :goto_1
    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2614
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 2615
    const-string/jumbo v2, "ms remaining in quota"

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2616
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2617
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2591
    .end local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2619
    .end local v0    # "j":I
    :cond_3
    return-void
.end method

.method public synthetic lambda$dumpControllerStateLocked$4$QuotaController(Ljava/util/function/Predicate;Landroid/util/proto/ProtoOutputStream;Landroid/util/ArraySet;)V
    .locals 8
    .param p1, "predicate"    # Ljava/util/function/Predicate;
    .param p2, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p3, "jobs"    # Landroid/util/ArraySet;

    .line 2705
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2706
    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 2707
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2708
    goto :goto_1

    .line 2710
    :cond_0
    const-wide v2, 0x20b00000004L

    invoke-virtual {p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 2712
    .local v2, "jsToken":J
    const-wide v4, 0x10b00000001L

    invoke-virtual {v1, p2, v4, v5}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2714
    const-wide v4, 0x10500000002L

    .line 2715
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    .line 2714
    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2716
    const-wide v4, 0x10e00000003L

    .line 2718
    invoke-direct {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->getEffectiveStandbyBucket(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v6

    .line 2716
    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2719
    const-wide v4, 0x10800000004L

    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 2720
    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 2719
    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2721
    const-wide v4, 0x10800000005L

    const/high16 v6, 0x1000000

    .line 2722
    invoke-virtual {v1, v6}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v6

    .line 2721
    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2723
    const-wide v4, 0x10300000006L

    .line 2724
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v6

    .line 2723
    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2725
    invoke-virtual {p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2705
    .end local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "jsToken":J
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2727
    .end local v0    # "j":I
    :cond_1
    return-void
.end method

.method public synthetic lambda$onConstantsUpdatedLocked$0$QuotaController()V
    .locals 2

    .line 686
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 687
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateAllConstraintsLocked()V

    .line 688
    monitor-exit v0

    .line 689
    return-void

    .line 688
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method maybeScheduleCleanupAlarmLocked()V
    .locals 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1207
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const-string v1, "JobScheduler.Quota"

    if-lez v0, :cond_1

    .line 1210
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not scheduling cleanup since there\'s already one at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " (in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 1213
    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1211
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    :cond_0
    return-void

    .line 1217
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->reset()V

    .line 1218
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    invoke-virtual {v0, v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->forEach(Ljava/util/function/Consumer;)V

    .line 1219
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    iget-wide v2, v0, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->earliestEndElapsed:J

    .line 1220
    .local v2, "earliestEndElapsed":J
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 1223
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1224
    const-string v0, "Didn\'t find a time to schedule cleanup"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    :cond_2
    return-void

    .line 1230
    :cond_3
    const-wide/32 v4, 0x5265c00

    add-long/2addr v4, v2

    .line 1231
    .local v4, "nextCleanupElapsed":J
    iget-wide v6, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    sub-long v6, v4, v6

    const-wide/32 v8, 0x927c0

    cmp-long v0, v6, v8

    if-gtz v0, :cond_4

    .line 1234
    add-long/2addr v4, v8

    .line 1236
    :cond_4
    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    .line 1237
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v7, 0x3

    iget-object v11, p0, Lcom/android/server/job/controllers/QuotaController;->mSessionCleanupAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v12, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Landroid/os/Handler;

    const-string v10, "*job.cleanup*"

    move-wide v8, v4

    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1239
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 1240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scheduled next cleanup for "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :cond_5
    return-void
.end method

.method maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V
    .locals 20
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "standbyBucket"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1376
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 1377
    return-void

    .line 1380
    :cond_0
    invoke-static/range {p1 .. p2}, Lcom/android/server/job/controllers/QuotaController;->string(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1381
    .local v4, "pkgString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v5

    .line 1382
    .local v5, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    invoke-direct {v0, v5, v3}, Lcom/android/server/job/controllers/QuotaController;->isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z

    move-result v6

    .line 1383
    .local v6, "isUnderJobCountQuota":Z
    invoke-direct {v0, v5, v3}, Lcom/android/server/job/controllers/QuotaController;->isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z

    move-result v7

    .line 1386
    .local v7, "isUnderTimingSessionCountQuota":Z
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v8, v1, v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;

    .line 1387
    .local v8, "alarmListener":Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;
    iget-wide v9, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    cmp-long v9, v9, v11

    const-string v10, "JobScheduler.Quota"

    if-gez v9, :cond_3

    iget-wide v11, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v13, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    cmp-long v9, v11, v13

    if-gez v9, :cond_3

    if-eqz v6, :cond_3

    if-eqz v7, :cond_3

    .line 1392
    sget-boolean v9, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v9, :cond_1

    .line 1393
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "maybeScheduleStartAlarmLocked called for "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " even though it already has "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1395
    invoke-direct/range {p0 .. p3}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(ILjava/lang/String;I)J

    move-result-wide v11

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "ms in its quota."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1393
    invoke-static {v10, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    :cond_1
    if-eqz v8, :cond_2

    .line 1400
    iget-object v9, v0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v9, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1402
    const-wide/16 v9, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->setTriggerTime(J)V

    .line 1404
    :cond_2
    iget-object v9, v0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v1, v11, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 1405
    return-void

    .line 1408
    :cond_3
    if-nez v8, :cond_4

    .line 1409
    new-instance v9, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;

    invoke-direct {v9, v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;-><init>(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)V

    move-object v8, v9

    .line 1410
    iget-object v9, v0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v9, v1, v2, v8}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->add(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1414
    :cond_4
    iget-wide v11, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1415
    .local v11, "inQuotaTimeElapsed":J
    if-nez v6, :cond_5

    iget v9, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v13, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-ge v9, v13, :cond_5

    .line 1417
    iget-wide v13, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 1420
    :cond_5
    if-nez v7, :cond_6

    iget v9, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    iget v13, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-ge v9, v13, :cond_6

    .line 1423
    iget-wide v13, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    move-wide v13, v11

    goto :goto_0

    .line 1433
    :cond_6
    move-wide v13, v11

    .end local v11    # "inQuotaTimeElapsed":J
    .local v13, "inQuotaTimeElapsed":J
    :goto_0
    invoke-virtual {v8}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->isWaiting()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1434
    invoke-virtual {v8}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->getTriggerTimeElapsed()J

    move-result-wide v11

    const-wide/32 v15, 0x2bf20

    sub-long/2addr v11, v15

    cmp-long v9, v13, v11

    if-ltz v9, :cond_9

    .line 1435
    invoke-virtual {v8}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->getTriggerTimeElapsed()J

    move-result-wide v11

    cmp-long v9, v11, v13

    if-gez v9, :cond_7

    goto :goto_1

    .line 1444
    :cond_7
    sget-boolean v9, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v9, :cond_8

    .line 1445
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No need to schedule start alarm for "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v11, v13

    goto :goto_2

    .line 1444
    :cond_8
    move-wide v11, v13

    goto :goto_2

    .line 1436
    :cond_9
    :goto_1
    sget-boolean v9, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v9, :cond_a

    .line 1437
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Scheduling start alarm for "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :cond_a
    iget-object v11, v0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v12, 0x3

    iget-object v9, v0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Landroid/os/Handler;

    const-string v15, "*job.quota_check*"

    move-wide/from16 v18, v13

    .end local v13    # "inQuotaTimeElapsed":J
    .local v18, "inQuotaTimeElapsed":J
    move-object/from16 v16, v8

    move-object/from16 v17, v9

    invoke-virtual/range {v11 .. v17}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1443
    move-wide/from16 v11, v18

    .end local v18    # "inQuotaTimeElapsed":J
    .restart local v11    # "inQuotaTimeElapsed":J
    invoke-virtual {v8, v11, v12}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->setTriggerTime(J)V

    .line 1447
    :goto_2
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 5
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    .line 611
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    .line 612
    .local v0, "userId":I
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 615
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 616
    .local v2, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-nez v2, :cond_0

    .line 617
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v3

    .line 618
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->add(ILjava/lang/String;Ljava/lang/Object;)V

    .line 620
    :cond_0
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 621
    const/16 v3, 0x40

    invoke-virtual {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 622
    iget-boolean v3, p0, Lcom/android/server/job/controllers/QuotaController;->mShouldThrottle:Z

    if-eqz v3, :cond_2

    .line 623
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    .line 624
    .local v3, "isWithinQuota":Z
    invoke-direct {p0, p1, v3}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;Z)Z

    .line 625
    if-nez v3, :cond_1

    .line 626
    nop

    .line 627
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->getEffectiveStandbyBucket(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v4

    .line 626
    invoke-virtual {p0, v0, v1, v4}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V

    .line 629
    .end local v3    # "isWithinQuota":Z
    :cond_1
    goto :goto_0

    .line 631
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->setQuotaConstraintSatisfied(Z)Z

    .line 633
    :goto_0
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .locals 4
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "forUpdate"    # Z

    .line 664
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 665
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    .line 666
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    .line 665
    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 667
    .local v0, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    if-eqz v0, :cond_0

    .line 668
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 670
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    .line 671
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    .line 670
    invoke-virtual {v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 672
    .local v1, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v1, :cond_1

    .line 673
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 675
    :cond_1
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 677
    .end local v0    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .end local v1    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_2
    return-void
.end method

.method public onAppRemovedLocked(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 695
    const-string v0, "JobScheduler.Quota"

    if-nez p1, :cond_0

    .line 696
    const-string v1, "Told app removed but given null package name."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    return-void

    .line 699
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 700
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->delete(ILjava/lang/String;)V

    .line 701
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 702
    .local v2, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    if-eqz v2, :cond_2

    .line 703
    invoke-virtual {v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 704
    const-string/jumbo v3, "onAppRemovedLocked called before Timer turned off."

    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-virtual {v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dropEverythingLocked()V

    .line 707
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->delete(ILjava/lang/String;)V

    .line 709
    :cond_2
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->delete(ILjava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;

    .line 711
    .local v0, "alarmListener":Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;
    if-eqz v0, :cond_3

    .line 712
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v3, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 713
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v3, v1, p1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->delete(ILjava/lang/String;)V

    .line 715
    :cond_3
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v3, v1, p1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->delete(ILjava/lang/String;)V

    .line 716
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 717
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseSetArray;->remove(I)V

    .line 718
    return-void
.end method

.method public onConstantsUpdatedLocked()V
    .locals 2

    .line 681
    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController;->mShouldThrottle:Z

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->USE_HEARTBEATS:Z

    if-ne v0, v1, :cond_0

    .line 682
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->USE_HEARTBEATS:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController;->mShouldThrottle:Z

    .line 685
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$Nr0Q3oPwHBGHfHSdpzIm80t7M7s;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$Nr0Q3oPwHBGHfHSdpzIm80t7M7s;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 691
    :cond_0
    return-void
.end method

.method public onSystemServicesReady()V
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->access$500(Lcom/android/server/job/controllers/QuotaController$QcConstants;Landroid/content/ContentResolver;)V

    .line 607
    return-void
.end method

.method public onUserRemovedLocked(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 722
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->delete(I)V

    .line 723
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->delete(I)V

    .line 724
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->delete(I)V

    .line 725
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->delete(I)V

    .line 726
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->delete(I)V

    .line 727
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v0}, Landroid/util/SparseSetArray;->clear()V

    .line 728
    return-void
.end method

.method public prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 5
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 637
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    const-string v1, "JobScheduler.Quota"

    if-eqz v0, :cond_0

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prepping for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 642
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2, v0}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_2

    .line 643
    sget-boolean v2, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 644
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is top started job"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_1
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 648
    return-void

    .line 651
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    .line 652
    .local v1, "userId":I
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    .line 653
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 654
    .local v3, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    if-nez v3, :cond_3

    .line 655
    new-instance v4, Lcom/android/server/job/controllers/QuotaController$Timer;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;-><init>(Lcom/android/server/job/controllers/QuotaController;IILjava/lang/String;)V

    move-object v3, v4

    .line 656
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->add(ILjava/lang/String;Ljava/lang/Object;)V

    .line 658
    :cond_3
    invoke-virtual {v3, p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 659
    return-void
.end method

.method saveTimingSession(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "session"    # Lcom/android/server/job/controllers/QuotaController$TimingSession;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1173
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1174
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1175
    .local v1, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    if-nez v1, :cond_0

    .line 1176
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 1177
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->add(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1179
    :cond_0
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1181
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->invalidateAllExecutionStatsLocked(ILjava/lang/String;)V

    .line 1183
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleCleanupAlarmLocked()V

    .line 1184
    .end local v1    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    monitor-exit v0

    .line 1185
    return-void

    .line 1184
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateExecutionStatsLocked(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)V
    .locals 30
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "stats"    # Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 983
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 984
    const/4 v6, 0x0

    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 985
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 986
    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    .line 987
    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    .line 988
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 990
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v4, v1, v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 991
    .local v4, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    .line 992
    .local v5, "nowElapsed":J
    const-wide/32 v7, 0x5265c00

    add-long v9, v5, v7

    iput-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 993
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 994
    nop

    .line 995
    invoke-virtual {v4, v5, v6}, Lcom/android/server/job/controllers/QuotaController$Timer;->getCurrentDuration(J)J

    move-result-wide v9

    iput-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iput-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 996
    invoke-virtual {v4}, Lcom/android/server/job/controllers/QuotaController$Timer;->getBgJobCount()I

    move-result v9

    iput v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    iput v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 999
    iput-wide v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 1000
    iget-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J

    cmp-long v9, v9, v11

    if-ltz v9, :cond_0

    .line 1001
    iget-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J

    sub-long v11, v5, v11

    iget-wide v13, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v11, v13

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iput-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1004
    :cond_0
    iget-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    cmp-long v9, v9, v11

    if-ltz v9, :cond_1

    .line 1005
    iget-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    sub-long v11, v5, v11

    add-long/2addr v11, v7

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iput-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1010
    :cond_1
    iget-object v9, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v9, v1, v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1011
    .local v9, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    if-eqz v9, :cond_f

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_2

    move-object/from16 v17, v4

    move-wide/from16 v20, v5

    goto/16 :goto_8

    .line 1015
    :cond_2
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    sub-long v10, v5, v10

    .line 1016
    .local v10, "startWindowElapsed":J
    sub-long v12, v5, v7

    .line 1017
    .local v12, "startMaxElapsed":J
    const/4 v14, 0x0

    .line 1020
    .local v14, "sessionCountInWindow":I
    const-wide v15, 0x7fffffffffffffffL

    .line 1023
    .local v15, "emptyTimeMs":J
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v7, v17, -0x1

    .line 1024
    .local v7, "loopStart":I
    move v8, v7

    move-wide/from16 v28, v15

    move/from16 v16, v14

    move-wide/from16 v14, v28

    .end local v15    # "emptyTimeMs":J
    .local v8, "i":I
    .local v14, "emptyTimeMs":J
    .local v16, "sessionCountInWindow":I
    :goto_0
    if-ltz v8, :cond_e

    .line 1025
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v1, v17

    check-cast v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 1028
    .local v1, "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    move-object/from16 v17, v4

    move-wide/from16 v20, v5

    .end local v4    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .end local v5    # "nowElapsed":J
    .local v17, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .local v20, "nowElapsed":J
    iget-wide v4, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v4, v10, v4

    if-gez v4, :cond_9

    .line 1030
    iget-wide v4, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v4, v10, v4

    if-gez v4, :cond_3

    .line 1031
    iget-wide v4, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    .line 1032
    .local v4, "start":J
    move-wide/from16 v22, v4

    .end local v4    # "start":J
    .local v22, "start":J
    iget-wide v4, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v4, v10

    .line 1033
    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-wide v14, v4

    move-wide/from16 v4, v22

    .end local v14    # "emptyTimeMs":J
    .local v4, "emptyTimeMs":J
    goto :goto_1

    .line 1037
    .end local v4    # "emptyTimeMs":J
    .end local v22    # "start":J
    .restart local v14    # "emptyTimeMs":J
    :cond_3
    move-wide v4, v10

    .line 1038
    .local v4, "start":J
    const-wide/16 v14, 0x0

    .line 1041
    :goto_1
    move-wide/from16 v22, v10

    .end local v10    # "startWindowElapsed":J
    .local v22, "startWindowElapsed":J
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    move-wide/from16 v24, v14

    .end local v14    # "emptyTimeMs":J
    .local v24, "emptyTimeMs":J
    iget-wide v14, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long/2addr v14, v4

    add-long/2addr v10, v14

    iput-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 1042
    iget v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v10, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    add-int/2addr v6, v10

    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 1043
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    iget-wide v14, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J

    cmp-long v6, v10, v14

    if-ltz v6, :cond_4

    .line 1044
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v14, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    add-long/2addr v14, v4

    move-wide/from16 v26, v4

    .end local v4    # "start":J
    .local v26, "start":J
    iget-wide v4, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J

    sub-long/2addr v14, v4

    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v14, v4

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    goto :goto_2

    .line 1043
    .end local v26    # "start":J
    .restart local v4    # "start":J
    :cond_4
    move-wide/from16 v26, v4

    .line 1048
    .end local v4    # "start":J
    .restart local v26    # "start":J
    :goto_2
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-lt v4, v5, :cond_5

    .line 1049
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v10, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v14, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v10, v14

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1052
    :cond_5
    if-eq v8, v7, :cond_7

    add-int/lit8 v4, v8, 0x1

    .line 1053
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    iget-wide v4, v4, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    iget-wide v10, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long/2addr v4, v10

    iget-wide v10, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    cmp-long v4, v4, v10

    if-lez v4, :cond_6

    goto :goto_3

    :cond_6
    move-wide/from16 v14, v24

    goto :goto_4

    .line 1056
    :cond_7
    :goto_3
    add-int/lit8 v4, v16, 0x1

    .line 1058
    .end local v16    # "sessionCountInWindow":I
    .local v4, "sessionCountInWindow":I
    iget v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-lt v4, v5, :cond_8

    .line 1059
    iget-wide v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v10, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v14, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v10, v14

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1066
    .end local v26    # "start":J
    :cond_8
    move/from16 v16, v4

    move-wide/from16 v14, v24

    goto :goto_4

    .line 1028
    .end local v4    # "sessionCountInWindow":I
    .end local v22    # "startWindowElapsed":J
    .end local v24    # "emptyTimeMs":J
    .restart local v10    # "startWindowElapsed":J
    .restart local v14    # "emptyTimeMs":J
    .restart local v16    # "sessionCountInWindow":I
    :cond_9
    move-wide/from16 v22, v10

    .line 1066
    .end local v10    # "startWindowElapsed":J
    .restart local v22    # "startWindowElapsed":J
    :goto_4
    iget-wide v4, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v4, v12, v4

    if-gez v4, :cond_b

    .line 1067
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v10, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    move/from16 v24, v7

    .end local v7    # "loopStart":I
    .local v24, "loopStart":I
    iget-wide v6, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v10, v6

    add-long/2addr v4, v10

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 1069
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    iget v5, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    .line 1070
    iget-wide v4, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v4, v12

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 1071
    .end local v14    # "emptyTimeMs":J
    .local v4, "emptyTimeMs":J
    iget-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v10, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    cmp-long v6, v6, v10

    if-ltz v6, :cond_a

    .line 1072
    iget-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v10, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    iget-wide v14, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    add-long/2addr v10, v14

    iget-wide v14, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    sub-long/2addr v10, v14

    const-wide/32 v14, 0x5265c00

    add-long/2addr v10, v14

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1024
    .end local v1    # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    :cond_a
    move-wide v14, v4

    const-wide/32 v18, 0x5265c00

    goto :goto_6

    .line 1076
    .end local v4    # "emptyTimeMs":J
    .end local v24    # "loopStart":I
    .restart local v1    # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    .restart local v7    # "loopStart":I
    .restart local v14    # "emptyTimeMs":J
    :cond_b
    move/from16 v24, v7

    .end local v7    # "loopStart":I
    .restart local v24    # "loopStart":I
    iget-wide v4, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v4, v12, v4

    if-gez v4, :cond_d

    .line 1079
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v6, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long/2addr v6, v12

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 1080
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    iget v5, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    .line 1081
    const-wide/16 v4, 0x0

    .line 1082
    .end local v14    # "emptyTimeMs":J
    .restart local v4    # "emptyTimeMs":J
    iget-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v10, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    cmp-long v6, v6, v10

    if-ltz v6, :cond_c

    .line 1083
    iget-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    add-long/2addr v10, v12

    iget-wide v14, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    sub-long/2addr v10, v14

    const-wide/32 v18, 0x5265c00

    add-long v10, v10, v18

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    goto :goto_5

    .line 1082
    :cond_c
    const-wide/32 v18, 0x5265c00

    .line 1024
    .end local v1    # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    :goto_5
    move-wide v14, v4

    .end local v4    # "emptyTimeMs":J
    .restart local v14    # "emptyTimeMs":J
    :goto_6
    add-int/lit8 v8, v8, -0x1

    move/from16 v1, p1

    move-object/from16 v4, v17

    move-wide/from16 v5, v20

    move-wide/from16 v10, v22

    move/from16 v7, v24

    goto/16 :goto_0

    .line 1076
    .restart local v1    # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    :cond_d
    move/from16 v1, v16

    goto :goto_7

    .line 1024
    .end local v1    # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    .end local v17    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .end local v20    # "nowElapsed":J
    .end local v22    # "startWindowElapsed":J
    .end local v24    # "loopStart":I
    .local v4, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .restart local v5    # "nowElapsed":J
    .restart local v7    # "loopStart":I
    .restart local v10    # "startWindowElapsed":J
    :cond_e
    move-object/from16 v17, v4

    move-wide/from16 v20, v5

    move/from16 v24, v7

    move-wide/from16 v22, v10

    .end local v4    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .end local v5    # "nowElapsed":J
    .end local v7    # "loopStart":I
    .end local v10    # "startWindowElapsed":J
    .restart local v17    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .restart local v20    # "nowElapsed":J
    .restart local v22    # "startWindowElapsed":J
    .restart local v24    # "loopStart":I
    move/from16 v1, v16

    .line 1092
    .end local v8    # "i":I
    .end local v16    # "sessionCountInWindow":I
    .local v1, "sessionCountInWindow":I
    :goto_7
    add-long v5, v20, v14

    iput-wide v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 1093
    iput v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    .line 1094
    return-void

    .line 1011
    .end local v1    # "sessionCountInWindow":I
    .end local v12    # "startMaxElapsed":J
    .end local v14    # "emptyTimeMs":J
    .end local v17    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .end local v20    # "nowElapsed":J
    .end local v22    # "startWindowElapsed":J
    .end local v24    # "loopStart":I
    .restart local v4    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .restart local v5    # "nowElapsed":J
    :cond_f
    move-object/from16 v17, v4

    move-wide/from16 v20, v5

    .line 1012
    .end local v4    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .end local v5    # "nowElapsed":J
    .restart local v17    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .restart local v20    # "nowElapsed":J
    :goto_8
    return-void
.end method
