.class public final Lcom/android/server/job/controllers/QuotaController;
.super Lcom/android/server/job/controllers/StateController;
.source "QuotaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/QuotaController$QcConstants;,
        Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;,
        Lcom/android/server/job/controllers/QuotaController$AlarmQueue;,
        Lcom/android/server/job/controllers/QuotaController$QcHandler;,
        Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor;,
        Lcom/android/server/job/controllers/QuotaController$StandbyTracker;,
        Lcom/android/server/job/controllers/QuotaController$Timer;,
        Lcom/android/server/job/controllers/QuotaController$TimingSession;,
        Lcom/android/server/job/controllers/QuotaController$ChargingTracker;,
        Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;,
        Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;,
        Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;,
        Lcom/android/server/job/controllers/QuotaController$ExecutionStats;,
        Lcom/android/server/job/controllers/QuotaController$Package;
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

.field private final mExecutionStatsCache:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "[",
            "Lcom/android/server/job/controllers/QuotaController$ExecutionStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mForegroundUids:Landroid/util/SparseBooleanArray;

.field private final mHandler:Landroid/os/Handler;

.field private final mInQuotaAlarmListener:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

.field private final mMaxBucketJobCounts:[I

.field private final mMaxBucketSessionCounts:[I

.field private mMaxExecutionTimeIntoQuotaMs:J

.field private mMaxExecutionTimeMs:J

.field private mMaxJobCountPerRateLimitingWindow:I

.field private mMaxSessionCountPerRateLimitingWindow:I

.field private mNextCleanupTimeElapsed:J

.field private final mPackageAddedReceiver:Landroid/content/BroadcastReceiver;

.field private final mPkgTimers:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Lcom/android/server/job/controllers/QuotaController$Timer;",
            ">;"
        }
    .end annotation
.end field

.field private final mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

.field private mQuotaBufferMs:J

.field private mRateLimitingWindowMs:J

.field private final mSessionCleanupAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private final mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

.field private mTimingSessionCoalescingDurationMs:J

.field private final mTimingSessions:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
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

.field private final mTrackedJobs:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
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

    .line 489
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 299
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 302
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    .line 305
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Landroid/util/SparseArrayMap;

    .line 310
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListener:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    .line 314
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    .line 317
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 320
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUidToPackageCache:Landroid/util/SparseSetArray;

    .line 327
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 336
    const-wide/32 v2, 0x927c0

    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    .line 342
    const-wide/32 v4, 0xdbba00

    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 348
    const-wide/16 v6, 0x7530

    iput-wide v6, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    .line 354
    sub-long/2addr v2, v6

    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J

    .line 360
    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    .line 363
    const-wide/32 v2, 0xea60

    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    .line 366
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    .line 373
    iput v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    .line 376
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    .line 377
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/QuotaController$1;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mSessionCleanupAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 385
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$2;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/QuotaController$2;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUidObserver:Landroid/app/IUidObserver;

    .line 408
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$3;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/QuotaController$3;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPackageAddedReceiver:Landroid/content/BroadcastReceiver;

    .line 428
    const/4 v0, 0x6

    new-array v2, v0, [J

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    .line 447
    new-array v2, v0, [I

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    .line 463
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    .line 476
    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    .line 1092
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    .line 1154
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    .line 1261
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    .line 1739
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor;

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mDeleteOldSessionsFunctor:Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor;

    .line 490
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/job/controllers/QuotaController$QcHandler;-><init>(Lcom/android/server/job/controllers/QuotaController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Landroid/os/Handler;

    .line 491
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    .line 492
    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->startTracking()V

    .line 493
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 494
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 495
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/server/job/controllers/QuotaController$QcConstants;-><init>(Lcom/android/server/job/controllers/QuotaController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    .line 497
    new-instance v6, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 498
    .local v6, "filter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mPackageAddedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 501
    const-class v0, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppStandbyInternal;

    .line 502
    .local v0, "appStandby":Lcom/android/server/usage/AppStandbyInternal;
    new-instance v2, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;

    invoke-direct {v2, p0}, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    invoke-interface {v0, v2}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 505
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v4, 0x1

    const/4 v5, 0x4

    invoke-interface {v2, v3, v4, v5, v1}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    goto :goto_0

    .line 508
    :catch_0
    move-exception v1

    .line 511
    :goto_0
    return-void

    :array_0
    .array-data 8
        0x927c0
        0x6ddd00
        0x6ddd00
        0x5265c00
        0x0
        0x5265c00
    .end array-data

    :array_1
    .array-data 4
        0x4b
        0x78
        0x32
        0x30
        0x0
        0xa
    .end array-data

    :array_2
    .array-data 4
        0x4b
        0xa
        0x1
        0x3
        0x0
        0x1
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

.method static synthetic access$1000(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/JobStatus;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "x2"    # Z

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 111
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListener:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    return-object v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .line 111
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/job/controllers/QuotaController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 111
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController;->handleNewChargingStateLocked()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # Lcom/android/server/job/controllers/JobStatus;

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$ChargingTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 111
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->incrementTimingSessionCount(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 111
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 111
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 111
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/job/controllers/QuotaController;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # I

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForUidLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/job/controllers/QuotaController;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 111
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
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

.method static synthetic access$3700(Lcom/android/server/job/controllers/QuotaController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 111
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateAllConstraintsLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseSetArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 111
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUidToPackageCache:Landroid/util/SparseSetArray;

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

    .line 779
    .local p1, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    const-wide/16 v0, 0x0

    .line 780
    .local v0, "timeUntilQuotaConsumedMs":J
    move-wide/from16 v2, p2

    .line 781
    .local v2, "start":J
    const/4 v4, 0x0

    move v6, v4

    move-wide v4, v2

    move-wide v2, v0

    move-wide/from16 v0, p4

    .end local p4    # "deadSpaceMs":J
    .local v0, "deadSpaceMs":J
    .local v2, "timeUntilQuotaConsumedMs":J
    .local v4, "start":J
    .local v6, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 782
    move-object/from16 v7, p1

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 784
    .local v8, "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    iget-wide v9, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v9, v9, p2

    if-gez v9, :cond_0

    .line 786
    goto :goto_1

    .line 787
    :cond_0
    iget-wide v9, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v9, v9, p2

    if-gtz v9, :cond_1

    .line 789
    iget-wide v9, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long v9, v9, p2

    add-long/2addr v2, v9

    .line 790
    iget-wide v4, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    goto :goto_1

    .line 794
    :cond_1
    iget-wide v9, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v9, v4

    .line 795
    .local v9, "diff":J
    cmp-long v11, v9, v0

    if-lez v11, :cond_2

    .line 796
    goto :goto_2

    .line 798
    :cond_2
    iget-wide v11, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v13, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v11, v13

    add-long/2addr v11, v9

    add-long/2addr v2, v11

    .line 800
    sub-long/2addr v0, v9

    .line 801
    iget-wide v4, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 781
    .end local v8    # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    .end local v9    # "diff":J
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v7, p1

    .line 805
    .end local v6    # "i":I
    :goto_2
    add-long/2addr v2, v0

    .line 806
    move-object v6, p0

    iget-wide v8, v6, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    cmp-long v8, v2, v8

    if-lez v8, :cond_4

    .line 807
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Calculated quota consumed time too high: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "JobScheduler.Quota"

    invoke-static {v9, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_4
    return-wide v2
.end method

.method private getExecutionStatsLocked(ILjava/lang/String;IZ)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .locals 11
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "standbyBucket"    # I
    .param p4, "refreshStatsIfOld"    # Z

    .line 824
    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    .line 825
    const-string v0, "JobScheduler.Quota"

    const-string v1, "getExecutionStatsLocked called for a NEVER app."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v0}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    return-object v0

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 829
    .local v0, "appStats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-nez v0, :cond_1

    .line 830
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    array-length v1, v1

    new-array v0, v1, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 831
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/String;Ljava/lang/Object;)V

    .line 833
    :cond_1
    aget-object v1, v0, p3

    .line 834
    .local v1, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-nez v1, :cond_2

    .line 835
    new-instance v2, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v2}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    move-object v1, v2

    .line 836
    aput-object v1, v0, p3

    .line 838
    :cond_2
    if-eqz p4, :cond_5

    .line 839
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    aget-wide v2, v2, p3

    .line 840
    .local v2, "bucketWindowSizeMs":J
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    aget v4, v4, p3

    .line 841
    .local v4, "jobCountLimit":I
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    aget v5, v5, p3

    .line 842
    .local v5, "sessionCountLimit":I
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 843
    .local v6, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    iget-wide v7, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    sget-object v9, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 844
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

    .line 849
    :cond_4
    iput-wide v2, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    .line 850
    iput v4, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    .line 851
    iput v5, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    .line 852
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/job/controllers/QuotaController;->updateExecutionStatsLocked(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)V

    .line 856
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

    .line 715
    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    .line 716
    const-wide/16 v0, 0x0

    return-wide v0

    .line 718
    :cond_0
    nop

    .line 719
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v0

    .line 718
    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)J
    .locals 6
    .param p1, "stats"    # Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 723
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
    .locals 4

    .line 1158
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    .line 1159
    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->isCharging()Z

    move-result v3

    .line 1158
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;->access$900(Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;JZ)V

    .line 1160
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNewChargingStateLocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->isCharging()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.Quota"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 1166
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateAllConstraintsLocked()V

    .line 1167
    return-void
.end method

.method private static hashLong(J)I
    .locals 2
    .param p0, "val"    # J

    .line 166
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

    .line 1040
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1041
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1042
    .local v2, "appStats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-nez v2, :cond_0

    .line 1043
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    array-length v3, v3

    new-array v2, v3, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1044
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, p1, p2, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1046
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 1047
    aget-object v4, v2, v3

    .line 1048
    .local v4, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-nez v4, :cond_1

    .line 1049
    new-instance v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v5}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    move-object v4, v5

    .line 1050
    aput-object v4, v2, v3

    .line 1052
    :cond_1
    iget-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    cmp-long v5, v5, v0

    if-gtz v5, :cond_2

    .line 1053
    iget-wide v5, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    .line 1054
    const/4 v5, 0x0

    iput v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    .line 1056
    :cond_2
    iget v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    .line 1046
    .end local v4    # "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1058
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method private isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 628
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isUidInForeground(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 618
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    const/4 v0, 0x1

    return v0

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 622
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 623
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

    .line 677
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 678
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

    .line 681
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

    .line 687
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 688
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

    .line 690
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

.method static synthetic lambda$invalidateAllExecutionStatsLocked$0(J[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)V
    .locals 2
    .param p0, "nowElapsed"    # J
    .param p2, "appStats"    # [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 991
    if-eqz p2, :cond_1

    .line 992
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 993
    aget-object v1, p2, v0

    .line 994
    .local v1, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-eqz v1, :cond_0

    .line 995
    iput-wide p0, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 992
    .end local v1    # "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 999
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private maybeUpdateAllConstraintsLocked()V
    .locals 6

    .line 1170
    const/4 v0, 0x0

    .line 1171
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "u":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v2}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1172
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v2

    .line 1173
    .local v2, "userId":I
    const/4 v3, 0x0

    .local v3, "p":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1174
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/String;

    move-result-object v4

    .line 1175
    .local v4, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2, v4}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(ILjava/lang/String;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1173
    .end local v4    # "packageName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1171
    .end local v2    # "userId":I
    .end local v3    # "p":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1178
    .end local v1    # "u":I
    :cond_1
    if-eqz v0, :cond_2

    .line 1179
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 1181
    :cond_2
    return-void
.end method

.method private maybeUpdateConstraintForPkgLocked(ILjava/lang/String;)Z
    .locals 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1190
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1191
    .local v0, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    .line 1196
    :cond_0
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v1

    .line 1197
    .local v1, "realStandbyBucket":I
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(ILjava/lang/String;I)Z

    move-result v2

    .line 1198
    .local v2, "realInQuota":Z
    const/4 v3, 0x0

    .line 1199
    .local v3, "changed":Z
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_3

    .line 1200
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/JobStatus;

    .line 1201
    .local v6, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {p0, v6}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1204
    invoke-virtual {v6, v5}, Lcom/android/server/job/controllers/JobStatus;->setQuotaConstraintSatisfied(Z)Z

    move-result v7

    or-int/2addr v3, v7

    goto :goto_1

    .line 1205
    :cond_1
    if-eqz v1, :cond_2

    .line 1206
    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v7

    if-ne v1, v7, :cond_2

    .line 1210
    invoke-direct {p0, v6, v2}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v7

    or-int/2addr v3, v7

    goto :goto_1

    .line 1213
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v7

    or-int/2addr v3, v7

    .line 1199
    .end local v6    # "js":Lcom/android/server/job/controllers/JobStatus;
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1216
    .end local v4    # "i":I
    :cond_3
    if-nez v2, :cond_4

    .line 1220
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V

    goto :goto_2

    .line 1222
    :cond_4
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListener:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->removeAlarmLocked(ILjava/lang/String;)V

    .line 1224
    :goto_2
    return v3

    .line 1192
    .end local v1    # "realStandbyBucket":I
    .end local v2    # "realInQuota":Z
    .end local v3    # "changed":Z
    :cond_5
    :goto_3
    return v1
.end method

.method private maybeUpdateConstraintForUidLocked(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 1264
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobStore;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    .line 1266
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->postProcess()V

    .line 1267
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    iget-boolean v0, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->wasJobChanged:Z

    .line 1268
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->reset()V

    .line 1269
    return v0
.end method

.method private setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;Z)Z
    .locals 4
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "isWithinQuota"    # Z

    .line 1329
    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getWhenStandbyDeferred()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1331
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/job/controllers/JobStatus;->setWhenStandbyDeferred(J)V

    .line 1333
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->setQuotaConstraintSatisfied(Z)Z

    move-result v0

    return v0
.end method

.method private static string(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 123
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
.method public clearAppStats(ILjava/lang/String;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 603
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/String;)Ljava/lang/Object;

    .line 604
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 605
    .local v0, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    if-eqz v0, :cond_1

    .line 606
    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 607
    const-string v1, "JobScheduler.Quota"

    const-string v2, "clearAppStats called before Timer turned off."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->dropEverythingLocked()V

    .line 610
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/String;)Ljava/lang/Object;

    .line 612
    :cond_1
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/String;)Ljava/lang/Object;

    .line 613
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListener:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->removeAlarmLocked(ILjava/lang/String;)V

    .line 614
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/String;)Ljava/lang/Object;

    .line 615
    return-void
.end method

.method deleteObsoleteSessionsLocked()V
    .locals 2

    .line 1744
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Landroid/util/SparseArrayMap;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mDeleteOldSessionsFunctor:Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor;

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 1745
    return-void
.end method

.method public dumpConstants(Landroid/util/proto/ProtoOutputStream;)V
    .locals 1
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 2917
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->access$3900(Lcom/android/server/job/controllers/QuotaController$QcConstants;Landroid/util/proto/ProtoOutputStream;)V

    .line 2918
    return-void
.end method

.method public dumpConstants(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 1
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 2912
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->access$3800(Lcom/android/server/job/controllers/QuotaController$QcConstants;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2913
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

    .line 2772
    .local p4, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 2773
    .local v3, "token":J
    const-wide v5, 0x10b00000009L

    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 2775
    .local v5, "mToken":J
    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    invoke-virtual {v7}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->isCharging()Z

    move-result v7

    const-wide v8, 0x10800000001L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2776
    sget-object v7, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 2777
    invoke-virtual {v7}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    .line 2776
    const-wide v9, 0x10300000006L

    invoke-virtual {v1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2779
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 2780
    const-wide v11, 0x20500000003L

    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 2781
    invoke-virtual {v8, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    .line 2780
    invoke-virtual {v1, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2779
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2784
    .end local v7    # "i":I
    :cond_0
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_1
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v8}, Landroid/util/SparseSetArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 2785
    const-wide v11, 0x20b00000007L

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 2788
    .local v11, "upToken":J
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v8

    .line 2789
    .local v8, "uid":I
    iget-object v13, v0, Lcom/android/server/job/controllers/QuotaController;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v13, v8}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v13

    .line 2791
    .local v13, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-wide v14, 0x10500000001L

    invoke-virtual {v1, v14, v15, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2792
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_2
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v15

    if-ge v14, v15, :cond_1

    .line 2793
    const-wide v9, 0x20900000002L

    .line 2794
    invoke-virtual {v13, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v15, v17

    check-cast v15, Ljava/lang/String;

    .line 2793
    invoke-virtual {v1, v9, v10, v15}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2792
    add-int/lit8 v14, v14, 0x1

    const-wide v9, 0x10300000006L

    goto :goto_2

    .line 2797
    .end local v14    # "j":I
    :cond_1
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2784
    .end local v8    # "uid":I
    .end local v11    # "upToken":J
    .end local v13    # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v7, v7, 0x1

    const-wide v9, 0x10300000006L

    goto :goto_1

    .line 2800
    .end local v7    # "i":I
    :cond_2
    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    new-instance v8, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$gwTxd6QsR2hKQdgMoq978a-hGnk;

    invoke-direct {v8, v0, v2, v1}, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$gwTxd6QsR2hKQdgMoq978a-hGnk;-><init>(Lcom/android/server/job/controllers/QuotaController;Ljava/util/function/Predicate;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v7, v8}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 2823
    const/4 v7, 0x0

    .local v7, "u":I
    :goto_3
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v8}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v8

    if-ge v7, v8, :cond_9

    .line 2824
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v8

    .line 2825
    .local v8, "userId":I
    const/4 v9, 0x0

    .local v9, "p":I
    :goto_4
    iget-object v10, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v10, v8}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v10

    if-ge v9, v10, :cond_8

    .line 2826
    iget-object v10, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v10, v7, v9}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/String;

    move-result-object v10

    .line 2827
    .local v10, "pkgName":Ljava/lang/String;
    const-wide v11, 0x20b00000005L

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 2829
    .local v11, "psToken":J
    iget-object v13, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v13, v7, v9}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/job/controllers/QuotaController$Timer;

    const-wide v14, 0x10b00000002L

    invoke-virtual {v13, v1, v14, v15, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V

    .line 2832
    iget-object v13, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v13, v8, v10}, Landroid/util/SparseArrayMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 2833
    .local v13, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    if-eqz v13, :cond_4

    .line 2834
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    .restart local v14    # "j":I
    :goto_5
    if-ltz v14, :cond_3

    .line 2835
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 2836
    .local v15, "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    move-wide/from16 v16, v3

    .end local v3    # "token":J
    .local v16, "token":J
    const-wide v2, 0x20b00000003L

    invoke-virtual {v15, v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController$TimingSession;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2834
    .end local v15    # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v2, p4

    move-wide/from16 v3, v16

    goto :goto_5

    .end local v16    # "token":J
    .restart local v3    # "token":J
    :cond_3
    move-wide/from16 v16, v3

    .end local v3    # "token":J
    .restart local v16    # "token":J
    goto :goto_6

    .line 2833
    .end local v14    # "j":I
    .end local v16    # "token":J
    .restart local v3    # "token":J
    :cond_4
    move-wide/from16 v16, v3

    .line 2841
    .end local v3    # "token":J
    .restart local v16    # "token":J
    :goto_6
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v8, v10}, Landroid/util/SparseArrayMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 2842
    .local v2, "stats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-eqz v2, :cond_7

    .line 2843
    const/4 v3, 0x0

    .local v3, "bucketIndex":I
    :goto_7
    array-length v4, v2

    if-ge v3, v4, :cond_6

    .line 2844
    aget-object v4, v2, v3

    .line 2845
    .local v4, "es":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-nez v4, :cond_5

    .line 2846
    move-wide/from16 v18, v5

    move/from16 v20, v7

    move/from16 v21, v8

    goto/16 :goto_8

    .line 2848
    :cond_5
    const-wide v14, 0x20b00000004L

    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 2850
    .local v14, "esToken":J
    move-wide/from16 v18, v5

    .end local v5    # "mToken":J
    .local v18, "mToken":J
    const-wide v5, 0x10e00000001L

    invoke-virtual {v1, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2853
    const-wide v5, 0x10300000002L

    move/from16 v20, v7

    move/from16 v21, v8

    .end local v7    # "u":I
    .end local v8    # "userId":I
    .local v20, "u":I
    .local v21, "userId":I
    iget-wide v7, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2856
    const-wide v5, 0x10300000003L

    iget-wide v7, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2859
    const-wide v5, 0x1050000000eL

    iget v7, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2862
    const-wide v5, 0x1050000000fL

    iget v7, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2865
    const-wide v5, 0x10300000004L

    iget-wide v7, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2868
    const-wide v5, 0x10500000005L

    iget v7, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2871
    iget-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    const-wide v7, 0x10300000006L

    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2874
    const-wide v5, 0x10500000007L

    iget v7, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2877
    const-wide v5, 0x1050000000bL

    iget v7, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2880
    const-wide v5, 0x10300000008L

    iget-wide v7, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2883
    const-wide v5, 0x10300000009L

    iget-wide v7, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2886
    const-wide v5, 0x1050000000aL

    iget v7, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2889
    const-wide v5, 0x1030000000cL

    iget-wide v7, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2892
    const-wide v5, 0x1050000000dL

    iget v7, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2895
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2843
    .end local v4    # "es":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .end local v14    # "esToken":J
    :goto_8
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v5, v18

    move/from16 v7, v20

    move/from16 v8, v21

    goto/16 :goto_7

    .end local v18    # "mToken":J
    .end local v20    # "u":I
    .end local v21    # "userId":I
    .restart local v5    # "mToken":J
    .restart local v7    # "u":I
    .restart local v8    # "userId":I
    :cond_6
    move-wide/from16 v18, v5

    move/from16 v20, v7

    move/from16 v21, v8

    .end local v5    # "mToken":J
    .end local v7    # "u":I
    .end local v8    # "userId":I
    .restart local v18    # "mToken":J
    .restart local v20    # "u":I
    .restart local v21    # "userId":I
    goto :goto_9

    .line 2842
    .end local v3    # "bucketIndex":I
    .end local v18    # "mToken":J
    .end local v20    # "u":I
    .end local v21    # "userId":I
    .restart local v5    # "mToken":J
    .restart local v7    # "u":I
    .restart local v8    # "userId":I
    :cond_7
    move-wide/from16 v18, v5

    move/from16 v20, v7

    move/from16 v21, v8

    .line 2899
    .end local v5    # "mToken":J
    .end local v7    # "u":I
    .end local v8    # "userId":I
    .restart local v18    # "mToken":J
    .restart local v20    # "u":I
    .restart local v21    # "userId":I
    :goto_9
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2825
    .end local v2    # "stats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v11    # "psToken":J
    .end local v13    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p4

    move-wide/from16 v3, v16

    move-wide/from16 v5, v18

    move/from16 v7, v20

    move/from16 v8, v21

    goto/16 :goto_4

    .end local v16    # "token":J
    .end local v18    # "mToken":J
    .end local v20    # "u":I
    .end local v21    # "userId":I
    .local v3, "token":J
    .restart local v5    # "mToken":J
    .restart local v7    # "u":I
    .restart local v8    # "userId":I
    :cond_8
    move-wide/from16 v16, v3

    move-wide/from16 v18, v5

    move/from16 v20, v7

    move/from16 v21, v8

    .line 2823
    .end local v3    # "token":J
    .end local v5    # "mToken":J
    .end local v7    # "u":I
    .end local v8    # "userId":I
    .end local v9    # "p":I
    .restart local v16    # "token":J
    .restart local v18    # "mToken":J
    .restart local v20    # "u":I
    add-int/lit8 v7, v20, 0x1

    move-object/from16 v2, p4

    .end local v20    # "u":I
    .restart local v7    # "u":I
    goto/16 :goto_3

    .end local v16    # "token":J
    .end local v18    # "mToken":J
    .restart local v3    # "token":J
    .restart local v5    # "mToken":J
    :cond_9
    move-wide/from16 v16, v3

    move-wide/from16 v18, v5

    .line 2903
    .end local v3    # "token":J
    .end local v5    # "mToken":J
    .end local v7    # "u":I
    .restart local v16    # "token":J
    .restart local v18    # "mToken":J
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListener:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    const-wide v3, 0x10b00000008L

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->dumpLocked(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2906
    move-wide/from16 v2, v18

    .end local v18    # "mToken":J
    .local v2, "mToken":J
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2907
    move-wide/from16 v4, v16

    .end local v16    # "token":J
    .local v4, "token":J
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2908
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

    .line 2668
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
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

    .line 2669
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

    .line 2670
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2672
    const-string v0, "Foreground UIDs: "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2673
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2674
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2676
    const-string v0, "Cached UID->package map:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2677
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2678
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v1}, Landroid/util/SparseSetArray;->size()I

    move-result v1

    const-string v2, ": "

    if-ge v0, v1, :cond_0

    .line 2679
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v1

    .line 2680
    .local v1, "uid":I
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2681
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2682
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2678
    .end local v1    # "uid":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2684
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2685
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2687
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    new-instance v1, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$ecfLuekQaza-6Us0YWTdja9N-Mk;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$ecfLuekQaza-6Us0YWTdja9N-Mk;-><init>(Lcom/android/server/job/controllers/QuotaController;Ljava/util/function/Predicate;Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 2718
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2719
    const/4 v0, 0x0

    .local v0, "u":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 2720
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    .line 2721
    .local v1, "userId":I
    const/4 v3, 0x0

    .local v3, "p":I
    :goto_2
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 2722
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v0, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/String;

    move-result-object v4

    .line 2723
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v0, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$Timer;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V

    .line 2724
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2725
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v1, v4}, Landroid/util/SparseArrayMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2726
    .local v5, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    if-eqz v5, :cond_2

    .line 2727
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2728
    const-string v6, "Saved sessions:"

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2729
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2730
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "j":I
    :goto_3
    if-ltz v6, :cond_1

    .line 2731
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 2732
    .local v7, "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    invoke-virtual {v7, p1}, Lcom/android/server/job/controllers/QuotaController$TimingSession;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2730
    .end local v7    # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 2734
    .end local v6    # "j":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2735
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2736
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2721
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2719
    .end local v1    # "userId":I
    .end local v3    # "p":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2741
    .end local v0    # "u":I
    :cond_4
    const-string v0, "Cached execution stats:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2742
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2743
    const/4 v0, 0x0

    .restart local v0    # "u":I
    :goto_4
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 2744
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    .line 2745
    .restart local v1    # "userId":I
    const/4 v3, 0x0

    .restart local v3    # "p":I
    :goto_5
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 2746
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v0, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/String;

    move-result-object v4

    .line 2747
    .restart local v4    # "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v0, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 2749
    .local v5, "stats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    invoke-static {v1, v4}, Lcom/android/server/job/controllers/QuotaController;->string(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2750
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2751
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6
    array-length v7, v5

    if-ge v6, v7, :cond_6

    .line 2752
    aget-object v7, v5, v6

    .line 2753
    .local v7, "executionStats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-eqz v7, :cond_5

    .line 2754
    invoke-static {v6}, Lcom/android/server/job/controllers/JobStatus;->bucketName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2755
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2756
    invoke-virtual {p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2751
    .end local v7    # "executionStats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 2759
    .end local v6    # "i":I
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2745
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "stats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2743
    .end local v1    # "userId":I
    .end local v3    # "p":I
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2762
    .end local v0    # "u":I
    :cond_8
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2764
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2765
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListener:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2766
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2767
    return-void
.end method

.method getAllowedTimePerPeriodMs()J
    .locals 2

    .line 2588
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    return-wide v0
.end method

.method getBucketMaxJobCounts()[I
    .locals 1

    .line 2594
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    return-object v0
.end method

.method getBucketMaxSessionCounts()[I
    .locals 1

    .line 2600
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    return-object v0
.end method

.method getBucketWindowSizes()[J
    .locals 1

    .line 2606
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    return-object v0
.end method

.method getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "standbyBucket"    # I

    .line 817
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;IZ)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v0

    return-object v0
.end method

.method getForegroundUids()Landroid/util/SparseBooleanArray;
    .locals 1

    .line 2612
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    .line 2618
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getInQuotaBufferMs()J
    .locals 2

    .line 2623
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    return-wide v0
.end method

.method getMaxExecutionTimeMs()J
    .locals 2

    .line 2628
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    return-wide v0
.end method

.method getMaxJobCountPerRateLimitingWindow()I
    .locals 1

    .line 2633
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    return v0
.end method

.method public getMaxJobExecutionTimeMsLocked(Lcom/android/server/job/controllers/JobStatus;)J
    .locals 2
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 634
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->isCharging()Z

    move-result v0

    if-nez v0, :cond_1

    .line 635
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 636
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->isUidInForeground(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 639
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v0

    return-wide v0

    .line 637
    :cond_1
    :goto_0
    const-wide/32 v0, 0x927c0

    return-wide v0
.end method

.method getMaxSessionCountPerRateLimitingWindow()I
    .locals 1

    .line 2638
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    return v0
.end method

.method getQcConstants()Lcom/android/server/job/controllers/QuotaController$QcConstants;
    .locals 1

    .line 2660
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    return-object v0
.end method

.method getRateLimitingWindowMs()J
    .locals 2

    .line 2643
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    return-wide v0
.end method

.method getRemainingExecutionTimeLocked(ILjava/lang/String;)J
    .locals 3
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 703
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 704
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 703
    invoke-static {p2, p1, v0, v1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v0

    .line 705
    .local v0, "standbyBucket":I
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(ILjava/lang/String;I)J

    move-result-wide v1

    return-wide v1
.end method

.method getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J
    .locals 3
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 696
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    .line 697
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 698
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v2

    .line 696
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(ILjava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method getTimeUntilQuotaConsumedLocked(ILjava/lang/String;)J
    .locals 22
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 735
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v9

    .line 736
    .local v9, "nowElapsed":J
    invoke-static {v8, v7, v9, v10}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v11

    .line 738
    .local v11, "standbyBucket":I
    const/4 v0, 0x4

    if-ne v11, v0, :cond_0

    .line 739
    const-wide/16 v0, 0x0

    return-wide v0

    .line 741
    :cond_0
    iget-object v0, v6, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v7, v8}, Landroid/util/SparseArrayMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/util/List;

    .line 742
    .local v12, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    if-eqz v12, :cond_3

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 746
    :cond_1
    invoke-virtual {v6, v7, v8, v11}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v13

    .line 747
    .local v13, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    iget-wide v0, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    sub-long v14, v9, v0

    .line 748
    .local v14, "startWindowElapsed":J
    const-wide/32 v0, 0x5265c00

    sub-long v16, v9, v0

    .line 749
    .local v16, "startMaxElapsed":J
    iget-wide v0, v6, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    iget-wide v2, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    sub-long v18, v0, v2

    .line 750
    .local v18, "allowedTimeRemainingMs":J
    iget-wide v0, v6, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    iget-wide v2, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    sub-long v20, v0, v2

    .line 755
    .local v20, "maxExecutionTimeRemainingMs":J
    iget-wide v0, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    iget-wide v2, v6, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 756
    move-object/from16 v0, p0

    move-object v1, v12

    move-wide/from16 v2, v16

    move-wide/from16 v4, v20

    invoke-direct/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJ)J

    move-result-wide v0

    return-wide v0

    .line 764
    :cond_2
    nop

    .line 765
    move-object/from16 v0, p0

    move-object v1, v12

    move-wide/from16 v2, v16

    move-wide/from16 v4, v20

    invoke-direct/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJ)J

    move-result-wide v4

    .line 767
    move-wide v2, v14

    move-wide v7, v4

    move-wide/from16 v4, v18

    invoke-direct/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJ)J

    move-result-wide v0

    .line 764
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 743
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

    .line 2648
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    return-wide v0
.end method

.method getTimingSessions(ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
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

    .line 2654
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method incrementJobCount(ILjava/lang/String;I)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "count"    # I

    .line 1019
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1020
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1021
    .local v2, "appStats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-nez v2, :cond_0

    .line 1022
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    array-length v3, v3

    new-array v2, v3, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1023
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, p1, p2, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1025
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 1026
    aget-object v4, v2, v3

    .line 1027
    .local v4, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-nez v4, :cond_1

    .line 1028
    new-instance v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v5}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    move-object v4, v5

    .line 1029
    aput-object v4, v2, v3

    .line 1031
    :cond_1
    iget-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    cmp-long v5, v5, v0

    if-gtz v5, :cond_2

    .line 1032
    iget-wide v5, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    .line 1033
    const/4 v5, 0x0

    iput v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    .line 1035
    :cond_2
    iget v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    add-int/2addr v5, p3

    iput v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    .line 1025
    .end local v4    # "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1037
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method invalidateAllExecutionStatsLocked()V
    .locals 4

    .line 989
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 990
    .local v0, "nowElapsed":J
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    new-instance v3, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$nhAzHg7QTBpf8pouN-v8m2BZNzI;

    invoke-direct {v3, v0, v1}, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$nhAzHg7QTBpf8pouN-v8m2BZNzI;-><init>(J)V

    invoke-virtual {v2, v3}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 1000
    return-void
.end method

.method invalidateAllExecutionStatsLocked(ILjava/lang/String;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1005
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1006
    .local v0, "appStats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-eqz v0, :cond_1

    .line 1007
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 1008
    .local v1, "nowElapsed":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 1009
    aget-object v4, v0, v3

    .line 1010
    .local v4, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-eqz v4, :cond_0

    .line 1011
    iput-wide v1, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 1008
    .end local v4    # "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1015
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

    .line 658
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p3, v1, :cond_0

    return v0

    .line 661
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->isCharging()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 664
    const/4 v1, 0x5

    if-eq p3, v1, :cond_1

    .line 665
    return v2

    .line 669
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v1

    .line 670
    .local v1, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    invoke-direct {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 671
    invoke-direct {p0, v1, p3}, Lcom/android/server/job/controllers/QuotaController;->isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 672
    invoke-direct {p0, v1, p3}, Lcom/android/server/job/controllers/QuotaController;->isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    nop

    .line 670
    :goto_0
    return v0
.end method

.method isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 3
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 644
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v0

    .line 649
    .local v0, "standbyBucket":I
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 650
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->isUidInForeground(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 652
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    .line 651
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

    .line 649
    :goto_1
    return v1
.end method

.method public synthetic lambda$dumpControllerStateLocked$1$QuotaController(Ljava/util/function/Predicate;Lcom/android/internal/util/IndentingPrintWriter;Landroid/util/ArraySet;)V
    .locals 4
    .param p1, "predicate"    # Ljava/util/function/Predicate;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p3, "jobs"    # Landroid/util/ArraySet;

    .line 2688
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2689
    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 2690
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2691
    goto :goto_2

    .line 2693
    :cond_0
    const-string v2, "#"

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2694
    invoke-virtual {v1, p2}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 2695
    const-string v2, " from "

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2696
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-static {p2, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2697
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2698
    const-string v2, " (TOP)"

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2700
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2702
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2703
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/job/controllers/JobStatus;->bucketName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2704
    const-string v2, ", "

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2705
    const/high16 v3, 0x1000000

    invoke-virtual {v1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2706
    const-string/jumbo v3, "within quota"

    invoke-virtual {p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 2708
    :cond_2
    const-string/jumbo v3, "not within quota"

    invoke-virtual {p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2710
    :goto_1
    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2711
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 2712
    const-string/jumbo v2, "ms remaining in quota"

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2713
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2714
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2688
    .end local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2716
    .end local v0    # "j":I
    :cond_3
    return-void
.end method

.method public synthetic lambda$dumpControllerStateLocked$2$QuotaController(Ljava/util/function/Predicate;Landroid/util/proto/ProtoOutputStream;Landroid/util/ArraySet;)V
    .locals 8
    .param p1, "predicate"    # Ljava/util/function/Predicate;
    .param p2, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p3, "jobs"    # Landroid/util/ArraySet;

    .line 2801
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2802
    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 2803
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2804
    goto :goto_1

    .line 2806
    :cond_0
    const-wide v2, 0x20b00000004L

    invoke-virtual {p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 2807
    .local v2, "jsToken":J
    const-wide v4, 0x10b00000001L

    invoke-virtual {v1, p2, v4, v5}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2808
    const-wide v4, 0x10500000002L

    .line 2809
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    .line 2808
    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2810
    const-wide v4, 0x10e00000003L

    .line 2812
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v6

    .line 2810
    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2813
    const-wide v4, 0x10800000004L

    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 2814
    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 2813
    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2815
    const-wide v4, 0x10800000005L

    const/high16 v6, 0x1000000

    .line 2816
    invoke-virtual {v1, v6}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v6

    .line 2815
    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2817
    const-wide v4, 0x10300000006L

    .line 2818
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v6

    .line 2817
    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2819
    invoke-virtual {p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2801
    .end local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "jsToken":J
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2821
    .end local v0    # "j":I
    :cond_1
    return-void
.end method

.method maybeScheduleCleanupAlarmLocked()V
    .locals 13

    .line 1097
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const-string v1, "JobScheduler.Quota"

    if-lez v0, :cond_1

    .line 1100
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1101
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

    .line 1103
    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1101
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_0
    return-void

    .line 1107
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->reset()V

    .line 1108
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Landroid/util/SparseArrayMap;

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    invoke-virtual {v0, v2}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 1109
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    iget-wide v2, v0, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->earliestEndElapsed:J

    .line 1110
    .local v2, "earliestEndElapsed":J
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 1113
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1114
    const-string v0, "Didn\'t find a time to schedule cleanup"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :cond_2
    return-void

    .line 1120
    :cond_3
    const-wide/32 v4, 0x5265c00

    add-long/2addr v4, v2

    .line 1121
    .local v4, "nextCleanupElapsed":J
    iget-wide v6, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    sub-long v6, v4, v6

    const-wide/32 v8, 0x927c0

    cmp-long v0, v6, v8

    if-gtz v0, :cond_4

    .line 1124
    add-long/2addr v4, v8

    .line 1126
    :cond_4
    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    .line 1127
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v7, 0x3

    iget-object v11, p0, Lcom/android/server/job/controllers/QuotaController;->mSessionCleanupAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v12, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Landroid/os/Handler;

    const-string v10, "*job.cleanup*"

    move-wide v8, v4

    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1129
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scheduled next cleanup for "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :cond_5
    return-void
.end method

.method maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V
    .locals 12
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "standbyBucket"    # I

    .line 1279
    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    .line 1280
    return-void

    .line 1283
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/job/controllers/QuotaController;->string(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1284
    .local v0, "pkgString":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v1

    .line 1285
    .local v1, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    invoke-direct {p0, v1, p3}, Lcom/android/server/job/controllers/QuotaController;->isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z

    move-result v2

    .line 1286
    .local v2, "isUnderJobCountQuota":Z
    invoke-direct {p0, v1, p3}, Lcom/android/server/job/controllers/QuotaController;->isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z

    move-result v3

    .line 1289
    .local v3, "isUnderTimingSessionCountQuota":Z
    iget-wide v4, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    iget-wide v6, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    cmp-long v4, v4, v6

    const-string v5, "JobScheduler.Quota"

    if-gez v4, :cond_2

    iget-wide v6, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v8, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    cmp-long v4, v6, v8

    if-gez v4, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 1294
    sget-boolean v4, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 1295
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "maybeScheduleStartAlarmLocked called for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " even though it already has "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(ILjava/lang/String;I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms in its quota."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1295
    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    :cond_1
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListener:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->removeAlarmLocked(ILjava/lang/String;)V

    .line 1301
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p1, v6, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1302
    return-void

    .line 1306
    :cond_2
    iget-wide v6, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1307
    .local v6, "inQuotaTimeElapsed":J
    if-nez v2, :cond_3

    iget v4, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v8, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-ge v4, v8, :cond_3

    .line 1309
    iget-wide v8, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 1312
    :cond_3
    if-nez v3, :cond_4

    iget v4, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    iget v8, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-ge v4, v8, :cond_4

    .line 1315
    iget-wide v8, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 1318
    :cond_4
    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-gtz v4, :cond_5

    .line 1319
    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v8

    .line 1320
    .local v8, "nowElapsed":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In quota time is "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v10, v8, v6

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ms old. Now="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", inQuotaTime="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    const-wide/32 v4, 0x493e0

    add-long v6, v8, v4

    .line 1325
    .end local v8    # "nowElapsed":J
    :cond_5
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListener:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    invoke-virtual {v4, p1, p2, v6, v7}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->addAlarmLocked(ILjava/lang/String;J)V

    .line 1326
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 5
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    .line 520
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    .line 521
    .local v0, "userId":I
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 523
    .local v2, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-nez v2, :cond_0

    .line 524
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v3

    .line 525
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v0, v1, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/String;Ljava/lang/Object;)V

    .line 527
    :cond_0
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 528
    const/16 v3, 0x40

    invoke-virtual {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 529
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    .line 530
    .local v3, "isWithinQuota":Z
    invoke-direct {p0, p1, v3}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;Z)Z

    .line 531
    if-nez v3, :cond_1

    .line 532
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v4

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V

    .line 534
    :cond_1
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .locals 4
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "forUpdate"    # Z

    .line 565
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 566
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    .line 567
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    .line 566
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 568
    .local v0, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    if-eqz v0, :cond_0

    .line 569
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 571
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    .line 572
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    .line 571
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 573
    .local v1, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v1, :cond_1

    .line 574
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 576
    :cond_1
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 578
    .end local v0    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .end local v1    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_2
    return-void
.end method

.method public onAppRemovedLocked(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 582
    if-nez p1, :cond_0

    .line 583
    const-string v0, "JobScheduler.Quota"

    const-string v1, "Told app removed but given null package name."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    return-void

    .line 586
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/QuotaController;->clearAppStats(ILjava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 588
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseSetArray;->remove(I)V

    .line 589
    return-void
.end method

.method public onSystemServicesReady()V
    .locals 2

    .line 515
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->access$500(Lcom/android/server/job/controllers/QuotaController$QcConstants;Landroid/content/ContentResolver;)V

    .line 516
    return-void
.end method

.method public onUserRemovedLocked(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 593
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 594
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 595
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 596
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListener:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->removeAlarmsLocked(I)V

    .line 597
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 598
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v0}, Landroid/util/SparseSetArray;->clear()V

    .line 599
    return-void
.end method

.method public prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 5
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 538
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    const-string v1, "JobScheduler.Quota"

    if-eqz v0, :cond_0

    .line 539
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

    .line 542
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 543
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2, v0}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_2

    .line 544
    sget-boolean v2, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 545
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

    .line 547
    :cond_1
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 549
    return-void

    .line 552
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    .line 553
    .local v1, "userId":I
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    .line 554
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 555
    .local v3, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    if-nez v3, :cond_3

    .line 556
    new-instance v4, Lcom/android/server/job/controllers/QuotaController$Timer;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;-><init>(Lcom/android/server/job/controllers/QuotaController;IILjava/lang/String;)V

    move-object v3, v4

    .line 557
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1, v2, v3}, Landroid/util/SparseArrayMap;->add(ILjava/lang/String;Ljava/lang/Object;)V

    .line 559
    :cond_3
    invoke-virtual {v3, p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 560
    return-void
.end method

.method saveTimingSession(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "session"    # Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 1063
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1064
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1065
    .local v1, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    if-nez v1, :cond_0

    .line 1066
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 1067
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p2, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1069
    :cond_0
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1071
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->invalidateAllExecutionStatsLocked(ILjava/lang/String;)V

    .line 1073
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleCleanupAlarmLocked()V

    .line 1074
    .end local v1    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    monitor-exit v0

    .line 1075
    return-void

    .line 1074
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateExecutionStatsLocked(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)V
    .locals 26
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "stats"    # Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 862
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 863
    const/4 v6, 0x0

    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 864
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 865
    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    .line 866
    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    .line 867
    iget v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-eqz v6, :cond_1

    iget v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-nez v6, :cond_0

    goto :goto_0

    .line 871
    :cond_0
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    goto :goto_1

    .line 869
    :cond_1
    :goto_0
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 874
    :goto_1
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 875
    .local v4, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    .line 876
    .local v5, "nowElapsed":J
    const-wide/32 v7, 0x5265c00

    add-long v9, v5, v7

    iput-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 877
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 880
    nop

    .line 881
    invoke-virtual {v4, v5, v6}, Lcom/android/server/job/controllers/QuotaController$Timer;->getCurrentDuration(J)J

    move-result-wide v9

    iput-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iput-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 882
    invoke-virtual {v4}, Lcom/android/server/job/controllers/QuotaController$Timer;->getBgJobCount()I

    move-result v9

    iput v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    iput v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 885
    iput-wide v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 886
    iget-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J

    cmp-long v9, v9, v11

    if-ltz v9, :cond_2

    .line 887
    iget-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J

    sub-long v11, v5, v11

    iget-wide v13, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v11, v13

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iput-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 890
    :cond_2
    iget-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    cmp-long v9, v9, v11

    if-ltz v9, :cond_3

    .line 891
    iget-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    sub-long v11, v5, v11

    add-long/2addr v11, v7

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iput-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 894
    :cond_3
    iget v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-lt v9, v10, :cond_4

    .line 895
    iget-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v11, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v11, v5

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iput-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 900
    :cond_4
    iget-object v9, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v9, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 901
    .local v9, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    if-eqz v9, :cond_12

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_5

    move-object/from16 v16, v4

    move-wide/from16 v18, v5

    goto/16 :goto_8

    .line 905
    :cond_5
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    sub-long v10, v5, v10

    .line 906
    .local v10, "startWindowElapsed":J
    sub-long v12, v5, v7

    .line 907
    .local v12, "startMaxElapsed":J
    const/4 v14, 0x0

    .line 910
    .local v14, "sessionCountInWindow":I
    const-wide v15, 0x7fffffffffffffffL

    .line 913
    .local v15, "emptyTimeMs":J
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v7, v17, -0x1

    .line 914
    .local v7, "loopStart":I
    move v8, v7

    move-wide v1, v15

    .end local v15    # "emptyTimeMs":J
    .local v1, "emptyTimeMs":J
    .local v8, "i":I
    :goto_2
    if-ltz v8, :cond_10

    .line 915
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 918
    .local v15, "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    move-object/from16 v16, v4

    move-wide/from16 v18, v5

    .end local v4    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .end local v5    # "nowElapsed":J
    .local v16, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .local v18, "nowElapsed":J
    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v4, v10, v4

    if-gez v4, :cond_c

    .line 920
    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v4, v10, v4

    if-gez v4, :cond_6

    .line 921
    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    .line 922
    .local v4, "start":J
    move-wide/from16 v20, v4

    .end local v4    # "start":J
    .local v20, "start":J
    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v4, v10

    .line 923
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    move-wide/from16 v4, v20

    goto :goto_3

    .line 927
    .end local v20    # "start":J
    :cond_6
    move-wide v4, v10

    .line 928
    .restart local v4    # "start":J
    const-wide/16 v1, 0x0

    .line 931
    :goto_3
    move-wide/from16 v20, v1

    .end local v1    # "emptyTimeMs":J
    .local v20, "emptyTimeMs":J
    iget-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    move-wide/from16 v22, v10

    .end local v10    # "startWindowElapsed":J
    .local v22, "startWindowElapsed":J
    iget-wide v10, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long/2addr v10, v4

    add-long/2addr v1, v10

    iput-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 932
    iget v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v2, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    add-int/2addr v1, v2

    iput v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 933
    iget-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    iget-wide v10, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J

    cmp-long v1, v1, v10

    if-ltz v1, :cond_7

    .line 934
    iget-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    add-long/2addr v10, v4

    move-wide/from16 v24, v4

    .end local v4    # "start":J
    .local v24, "start":J
    iget-wide v4, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J

    sub-long/2addr v10, v4

    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v10, v4

    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    goto :goto_4

    .line 933
    .end local v24    # "start":J
    .restart local v4    # "start":J
    :cond_7
    move-wide/from16 v24, v4

    .line 938
    .end local v4    # "start":J
    .restart local v24    # "start":J
    :goto_4
    iget v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v2, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-lt v1, v2, :cond_8

    .line 939
    iget-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v4, v10

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 942
    :cond_8
    if-eq v8, v7, :cond_a

    add-int/lit8 v1, v8, 0x1

    .line 943
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    iget-wide v1, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long/2addr v1, v4

    iget-wide v4, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_9

    goto :goto_5

    :cond_9
    move-wide/from16 v1, v20

    goto :goto_6

    .line 946
    :cond_a
    :goto_5
    add-int/lit8 v14, v14, 0x1

    .line 948
    iget v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-lt v14, v1, :cond_b

    .line 949
    iget-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v4, v10

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 956
    .end local v24    # "start":J
    :cond_b
    move-wide/from16 v1, v20

    goto :goto_6

    .line 918
    .end local v20    # "emptyTimeMs":J
    .end local v22    # "startWindowElapsed":J
    .restart local v1    # "emptyTimeMs":J
    .restart local v10    # "startWindowElapsed":J
    :cond_c
    move-wide/from16 v22, v10

    .line 956
    .end local v10    # "startWindowElapsed":J
    .restart local v22    # "startWindowElapsed":J
    :goto_6
    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v4, v12, v4

    if-gez v4, :cond_e

    .line 957
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v10, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    move/from16 v17, v7

    .end local v7    # "loopStart":I
    .local v17, "loopStart":I
    iget-wide v6, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v10, v6

    add-long/2addr v4, v10

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 959
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    iget v5, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    .line 960
    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v4, v12

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 961
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v6, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_d

    .line 962
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v6, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    add-long/2addr v6, v10

    iget-wide v10, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    sub-long/2addr v6, v10

    const-wide/32 v10, 0x5265c00

    add-long/2addr v6, v10

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 914
    .end local v15    # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    :cond_d
    const-wide/32 v10, 0x5265c00

    goto :goto_7

    .line 966
    .end local v17    # "loopStart":I
    .restart local v7    # "loopStart":I
    .restart local v15    # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    :cond_e
    move/from16 v17, v7

    .end local v7    # "loopStart":I
    .restart local v17    # "loopStart":I
    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v4, v12, v4

    if-gez v4, :cond_11

    .line 969
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v6, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long/2addr v6, v12

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 970
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    iget v5, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    .line 971
    const-wide/16 v1, 0x0

    .line 972
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v6, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_f

    .line 973
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    add-long/2addr v6, v12

    iget-wide v10, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    sub-long/2addr v6, v10

    const-wide/32 v10, 0x5265c00

    add-long/2addr v6, v10

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    goto :goto_7

    .line 972
    :cond_f
    const-wide/32 v10, 0x5265c00

    .line 914
    .end local v15    # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    :goto_7
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v4, v16

    move/from16 v7, v17

    move-wide/from16 v5, v18

    move-wide/from16 v10, v22

    goto/16 :goto_2

    .end local v16    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .end local v17    # "loopStart":I
    .end local v18    # "nowElapsed":J
    .end local v22    # "startWindowElapsed":J
    .local v4, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .restart local v5    # "nowElapsed":J
    .restart local v7    # "loopStart":I
    .restart local v10    # "startWindowElapsed":J
    :cond_10
    move-object/from16 v16, v4

    move-wide/from16 v18, v5

    move/from16 v17, v7

    move-wide/from16 v22, v10

    .line 982
    .end local v4    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .end local v5    # "nowElapsed":J
    .end local v7    # "loopStart":I
    .end local v8    # "i":I
    .end local v10    # "startWindowElapsed":J
    .restart local v16    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .restart local v17    # "loopStart":I
    .restart local v18    # "nowElapsed":J
    .restart local v22    # "startWindowElapsed":J
    :cond_11
    add-long v5, v18, v1

    iput-wide v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 983
    iput v14, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    .line 984
    return-void

    .line 901
    .end local v1    # "emptyTimeMs":J
    .end local v12    # "startMaxElapsed":J
    .end local v14    # "sessionCountInWindow":I
    .end local v16    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .end local v17    # "loopStart":I
    .end local v18    # "nowElapsed":J
    .end local v22    # "startWindowElapsed":J
    .restart local v4    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .restart local v5    # "nowElapsed":J
    :cond_12
    move-object/from16 v16, v4

    move-wide/from16 v18, v5

    .line 902
    .end local v4    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .end local v5    # "nowElapsed":J
    .restart local v16    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .restart local v18    # "nowElapsed":J
    :goto_8
    return-void
.end method
