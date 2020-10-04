.class public Lcom/android/server/job/JobSchedulerService;
.super Lcom/android/server/SystemService;
.source "JobSchedulerService.java"

# interfaces
.implements Lcom/android/server/job/StateChangedListener;
.implements Lcom/android/server/job/JobCompletedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;,
        Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;,
        Lcom/android/server/job/JobSchedulerService$StandbyTracker;,
        Lcom/android/server/job/JobSchedulerService$LocalService;,
        Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;,
        Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;,
        Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;,
        Lcom/android/server/job/JobSchedulerService$JobHandler;,
        Lcom/android/server/job/JobSchedulerService$Constants;,
        Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;,
        Lcom/android/server/job/JobSchedulerService$MaxJobCounts;,
        Lcom/android/server/job/JobSchedulerService$ThermalStatusListener;,
        Lcom/android/server/job/JobSchedulerService$ConstantsObserver;,
        Lcom/android/server/job/JobSchedulerService$JobSchedulerServiceInner;
    }
.end annotation


# static fields
.field public static final ACTIVE_INDEX:I = 0x0

.field public static final DEBUG:Z

.field public static final DEBUG_STANDBY:Z

.field private static final ENFORCE_MAX_JOBS:Z = true

.field public static final FREQUENT_INDEX:I = 0x2

.field static final HEARTBEAT_TAG:Ljava/lang/String; = "*job.heartbeat*"

.field public static final MAX_ALLOWED_PERIOD_MS:J = 0x757b12c00L

.field private static final MAX_JOBS_PER_APP:I = 0x64

.field static final MAX_JOB_CONTEXTS_COUNT:I = 0x10

.field static final MSG_CHECK_JOB:I = 0x1

.field static final MSG_CHECK_JOB_GREEDY:I = 0x3

.field static final MSG_JOB_EXPIRED:I = 0x0

.field static final MSG_STOP_JOB:I = 0x2

.field static final MSG_UID_ACTIVE:I = 0x6

.field static final MSG_UID_GONE:I = 0x5

.field static final MSG_UID_IDLE:I = 0x7

.field static final MSG_UID_STATE_CHANGED:I = 0x4

.field public static final NEVER_INDEX:I = 0x4

.field private static final PERIODIC_JOB_WINDOW_BUFFER:J = 0x1b7740L

.field public static final RARE_INDEX:I = 0x3

.field public static final TAG:Ljava/lang/String; = "JobScheduler"

.field public static final WORKING_INDEX:I = 0x1

.field static final mEnqueueTimeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static sElapsedRealtimeClock:Ljava/time/Clock;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static sSystemClock:Ljava/time/Clock;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static sUptimeMillisClock:Ljava/time/Clock;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field final mActiveServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/JobServiceContext;",
            ">;"
        }
    .end annotation
.end field

.field mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field mAppStateTracker:Lcom/android/server/AppStateTracker;

.field final mBackingUpUids:Landroid/util/SparseIntArray;

.field private final mBatteryController:Lcom/android/server/job/controllers/BatteryController;

.field mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

.field final mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

.field final mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

.field final mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/StateController;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

.field final mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

.field mHeartbeat:J

.field final mHeartbeatAlarm:Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;

.field volatile mInParole:Z

.field private final mIsUidActivePredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

.field final mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

.field private final mJobTimeUpdater:Ljava/lang/Runnable;

.field final mJobs:Lcom/android/server/job/JobStore;

.field mLastHeartbeatTime:J

.field final mLastJobHeartbeats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

.field mLocalPM:Landroid/content/pm/PackageManagerInternal;

.field final mLock:Ljava/lang/Object;

.field private final mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

.field final mNextBucketHeartbeat:[J

.field final mPendingJobs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

.field mReadyToRock:Z

.field mReportedActive:Z

.field final mStandbyTracker:Lcom/android/server/job/JobSchedulerService$StandbyTracker;

.field mStartedUsers:[I

.field private final mStorageController:Lcom/android/server/job/controllers/StorageController;

.field private mThermalConstraint:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mThermalService:Landroid/os/IThermalService;

.field private final mTimeSetReceiver:Landroid/content/BroadcastReceiver;

.field private final mUidObserver:Landroid/app/IUidObserver;

.field final mUidPriorityOverride:Landroid/util/SparseIntArray;

.field final mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 145
    const-string v0, "JobScheduler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 146
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    .line 156
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v0

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 158
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillisClock()Ljava/time/Clock;

    move-result-object v0

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    .line 160
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeClock()Ljava/time/Clock;

    move-result-object v0

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 792
    sget-object v0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$V6_ZmVmzJutg4w0s0LktDOsRAss;->INSTANCE:Lcom/android/server/job/-$$Lambda$JobSchedulerService$V6_ZmVmzJutg4w0s0LktDOsRAss;

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->mEnqueueTimeComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1318
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 163
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 169
    new-instance v0, Lcom/android/server/job/JobPackageTracker;

    invoke-direct {v0}, Lcom/android/server/job/JobPackageTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/JobSchedulerService;->mThermalConstraint:Z

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    .line 207
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 237
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    .line 242
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    .line 251
    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    .line 252
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    .line 253
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobSchedulerService;->mLastHeartbeatTime:J

    .line 275
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLastJobHeartbeats:Landroid/util/SparseArray;

    .line 278
    new-instance v0, Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeatAlarm:Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;

    .line 811
    new-instance v0, Lcom/android/server/job/JobSchedulerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$1;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 937
    new-instance v0, Lcom/android/server/job/JobSchedulerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$2;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidObserver:Landroid/app/IUidObserver;

    .line 1007
    new-instance v0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$AauD0it1BcgWldVm_V1m2Jo7_Zc;

    invoke-direct {v0, p0}, Lcom/android/server/job/-$$Lambda$JobSchedulerService$AauD0it1BcgWldVm_V1m2Jo7_Zc;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mIsUidActivePredicate:Ljava/util/function/Predicate;

    .line 1371
    new-instance v0, Lcom/android/server/job/JobSchedulerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$3;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mTimeSetReceiver:Landroid/content/BroadcastReceiver;

    .line 1391
    new-instance v0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$nXpbkYDrU0yC5DuTafFiblXBdTY;

    invoke-direct {v0, p0}, Lcom/android/server/job/-$$Lambda$JobSchedulerService$nXpbkYDrU0yC5DuTafFiblXBdTY;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobTimeUpdater:Ljava/lang/Runnable;

    .line 2036
    new-instance v0, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    .line 2139
    new-instance v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    .line 1320
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLocalPM:Landroid/content/pm/PackageManagerInternal;

    .line 1321
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 1322
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 1321
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 1324
    new-instance v0, Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;-><init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 1325
    new-instance v0, Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-direct {v0}, Lcom/android/server/job/JobSchedulerService$Constants;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 1326
    new-instance v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;-><init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    .line 1327
    new-instance v0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    .line 1329
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobConcurrencyManager;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 1332
    new-instance v0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$StandbyTracker;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStandbyTracker:Lcom/android/server/job/JobSchedulerService$StandbyTracker;

    .line 1333
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 1334
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStandbyTracker:Lcom/android/server/job/JobSchedulerService$StandbyTracker;

    invoke-virtual {v0, v1}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    .line 1337
    const-class v0, Lcom/android/server/job/JobSchedulerInternal;

    new-instance v1, Lcom/android/server/job/JobSchedulerService$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/job/JobSchedulerService$LocalService;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobSchedulerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1340
    invoke-static {p0}, Lcom/android/server/job/JobStore;->initAndGet(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/JobStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 1343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 1344
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/server/job/controllers/ConnectivityController;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/ConnectivityController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1345
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/server/job/controllers/TimeController;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/TimeController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1346
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/server/job/controllers/IdleController;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/IdleController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1347
    new-instance v0, Lcom/android/server/job/controllers/BatteryController;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/BatteryController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    .line 1348
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1349
    new-instance v0, Lcom/android/server/job/controllers/StorageController;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/StorageController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    .line 1350
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1351
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/BackgroundJobsController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1352
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/server/job/controllers/ContentObserverController;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/ContentObserverController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1353
    new-instance v0, Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/DeviceIdleJobsController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 1354
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1355
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/QuotaController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1359
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->jobTimesInflatedValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1360
    const-string v0, "JobScheduler"

    const-string v1, "!!! RTC not yet good; tracking time updates for job scheduling"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mTimeSetReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIME_SET"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1366
    :cond_0
    new-instance v0, Lcom/android/server/job/JobSchedulerService$JobSchedulerServiceInner;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$JobSchedulerServiceInner;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 1367
    .local v0, "inner":Lcom/android/server/job/JobSchedulerService$JobSchedulerServiceInner;
    invoke-static {v0}, Lcom/android/server/job/JobSchedulerServiceInjector;->prepare(Lcom/android/server/job/JobSchedulerService$JobSchedulerServiceInner;)V

    .line 1369
    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x7fffffffffffffffL
    .end array-data
.end method

.method static synthetic access$002(Lcom/android/server/job/JobSchedulerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/JobSchedulerService;
    .param p1, "x1"    # Z

    .line 142
    iput-boolean p1, p0, Lcom/android/server/job/JobSchedulerService;->mThermalConstraint:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/job/JobSchedulerService;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/JobSchedulerService;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/JobSchedulerService;
    .param p1, "x1"    # Lcom/android/server/job/controllers/JobStatus;

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/job/JobSchedulerService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/JobSchedulerService;

    .line 142
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobTimeUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/JobSchedulerService;
    .param p1, "x1"    # Lcom/android/server/job/controllers/JobStatus;

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/JobSchedulerService;

    .line 142
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->queueReadyJobsForExecutionLocked()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/JobSchedulerService;

    .line 142
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->maybeQueueReadyJobsForExecutionLocked()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/JobSchedulerService;
    .param p1, "x1"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "x2"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "x3"    # Ljava/lang/String;

    .line 142
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/JobSchedulerService;

    .line 142
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/JobSchedulerService;
    .param p1, "x1"    # Lcom/android/server/job/controllers/JobStatus;

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->evaluateControllerStatesLocked(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method static addOrderedItem(Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)V"
        }
    .end annotation

    .line 800
    .local p0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "newItem":Ljava/lang/Object;, "TT;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    invoke-static {p0, p1, p2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 801
    .local v0, "where":I
    if-gez v0, :cond_0

    .line 802
    not-int v0, v0

    .line 804
    :cond_0
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 805
    return-void
.end method

.method private adjustJobPriority(ILcom/android/server/job/controllers/JobStatus;)I
    .locals 2
    .param p1, "curPriority"    # I
    .param p2, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2457
    const/16 v0, 0x28

    if-ge p1, v0, :cond_1

    .line 2458
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v0, p2}, Lcom/android/server/job/JobPackageTracker;->getLoadFactor(Lcom/android/server/job/controllers/JobStatus;)F

    move-result v0

    .line 2459
    .local v0, "factor":F
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 2460
    add-int/lit8 p1, p1, -0x50

    goto :goto_0

    .line 2461
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    .line 2462
    add-int/lit8 p1, p1, -0x28

    .line 2465
    .end local v0    # "factor":F
    :cond_1
    :goto_0
    return p1
.end method

.method private areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 3
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2229
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    .line 2230
    .local v0, "sourceStarted":Z
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2231
    return v0

    .line 2233
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V
    .locals 3
    .param p1, "cancelled"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "reason"    # Ljava/lang/String;

    .line 1209
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v1, "JobScheduler"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CANCEL: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->unprepareLocked(Landroid/app/IActivityManager;)V

    .line 1211
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/job/JobSchedulerService;->stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z

    .line 1213
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1214
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1217
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/job/JobSchedulerService;->stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;ILjava/lang/String;)Z

    .line 1219
    if-eqz p2, :cond_3

    .line 1220
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tracking replacement job "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    :cond_2
    invoke-direct {p0, p2, p1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 1223
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    .line 1224
    return-void
.end method

.method private cancelJobsForNonExistentUsers()V
    .locals 4

    .line 1135
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    .line 1136
    .local v0, "umi":Landroid/os/UserManagerInternal;
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1137
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/job/JobStore;->removeJobsOfNonUsers([I)V

    .line 1138
    monitor-exit v1

    .line 1139
    return-void

    .line 1138
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 3262
    const-string v0, "Job Scheduler (jobscheduler) dump options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3263
    const-string v0, "  [-h] [package] ..."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3264
    const-string v0, "    -h: print this help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3265
    const-string v0, "  [package] is an optional package name to limit the output to."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3266
    return-void
.end method

.method private evaluateControllerStatesLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2401
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "c":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2402
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/StateController;

    .line 2403
    .local v1, "sc":Lcom/android/server/job/controllers/StateController;
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/StateController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 2401
    .end local v1    # "sc":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2405
    .end local v0    # "c":I
    :cond_0
    return-void
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 932
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 933
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 934
    .local v1, "pkg":Ljava/lang/String;
    :goto_0
    return-object v1
.end method

.method private isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 5
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2377
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 2378
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 2379
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v3

    .line 2377
    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2382
    .local v0, "service":Landroid/content/pm/ServiceInfo;
    nop

    .line 2384
    const-string v1, "JobScheduler"

    if-nez v0, :cond_1

    .line 2385
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 2386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isComponentUsable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " component not present"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 2393
    :cond_1
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/app/ActivityManagerInternal;->isAppBad(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    .line 2394
    .local v2, "appIsBad":Z
    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 2395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App is bad for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " so not runnable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    :cond_2
    xor-int/lit8 v1, v2, 0x1

    return v1

    .line 2380
    .end local v0    # "service":Landroid/content/pm/ServiceInfo;
    .end local v2    # "appIsBad":Z
    :catch_0
    move-exception v0

    .line 2381
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 5
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1554
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1555
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    .line 1556
    .local v1, "serviceContext":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    .line 1557
    .local v2, "running":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/job/controllers/JobStatus;->matches(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1558
    const/4 v3, 0x1

    return v3

    .line 1554
    .end local v1    # "serviceContext":Lcom/android/server/job/JobServiceContext;
    .end local v2    # "running":Lcom/android/server/job/controllers/JobStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1561
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isJobThermalConstrainedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 2
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1960
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService;->mThermalConstraint:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1961
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1960
    :goto_0
    return v0
.end method

.method private isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 14
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2246
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    .line 2248
    .local v0, "jobReady":Z
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string/jumbo v2, "isReadyToBeExecutedLocked: "

    const-string v3, "JobScheduler"

    if-eqz v1, :cond_0

    .line 2249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ready="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 2257
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.jobscheduler.cts.jobtestapp"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    NOT READY: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    :cond_1
    return v1

    .line 2263
    :cond_2
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v4, p1}, Lcom/android/server/job/JobStore;->containsJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v4

    .line 2265
    .local v4, "jobExists":Z
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    .line 2267
    .local v5, "userStarted":Z
    sget-boolean v6, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 2268
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " exists="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " userStarted="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    :cond_3
    if-eqz v4, :cond_12

    if-nez v5, :cond_4

    goto/16 :goto_3

    .line 2278
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isJobThermalConstrainedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2279
    return v1

    .line 2282
    :cond_5
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 2283
    .local v6, "jobPending":Z
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v7

    .line 2285
    .local v7, "jobActive":Z
    sget-boolean v8, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v9, " active="

    if-eqz v8, :cond_6

    .line 2286
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " pending="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    :cond_6
    if-nez v6, :cond_11

    if-eqz v7, :cond_7

    goto/16 :goto_2

    .line 2297
    :cond_7
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v8, v8, Lcom/android/server/job/JobSchedulerService$Constants;->USE_HEARTBEATS:Z

    if-eqz v8, :cond_e

    .line 2304
    sget-boolean v8, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v8, :cond_8

    .line 2305
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " parole="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/job/JobSchedulerService;->mInParole:Z

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " exempt="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2307
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2305
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    :cond_8
    iget-boolean v2, p0, Lcom/android/server/job/JobSchedulerService;->mInParole:Z

    if-nez v2, :cond_e

    iget-boolean v2, p1, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    if-nez v2, :cond_e

    .line 2311
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result v2

    if-nez v2, :cond_e

    .line 2312
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v2

    .line 2313
    .local v2, "bucket":I
    sget-boolean v8, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v8, :cond_9

    .line 2314
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  bucket="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " heartbeat="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " next="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    aget-wide v9, v9, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    :cond_9
    iget-wide v8, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    iget-object v10, p0, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    aget-wide v10, v10, v2

    cmp-long v8, v8, v10

    if-gez v8, :cond_e

    .line 2322
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->heartbeatWhenJobsLastRun(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v8

    .line 2323
    .local v8, "appLastRan":J
    iget-object v10, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-object v10, v10, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_BEATS:[I

    array-length v10, v10

    if-ge v2, v10, :cond_b

    iget-wide v10, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    cmp-long v12, v10, v8

    if-lez v12, :cond_a

    iget-object v12, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-object v12, v12, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_BEATS:[I

    aget v12, v12, v2

    int-to-long v12, v12

    add-long/2addr v12, v8

    cmp-long v10, v10, v12

    if-gez v10, :cond_a

    goto :goto_0

    .line 2336
    :cond_a
    sget-boolean v10, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v10, :cond_e

    .line 2337
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bucket deferred job aged into runnability at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2326
    :cond_b
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getWhenStandbyDeferred()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_d

    .line 2327
    sget-boolean v10, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v10, :cond_c

    .line 2328
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bucket deferral: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " < "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-object v11, v11, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_BEATS:[I

    aget v11, v11, v2

    int-to-long v11, v11

    add-long/2addr v11, v8

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    :cond_c
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v10

    invoke-virtual {p1, v10, v11}, Lcom/android/server/job/controllers/JobStatus;->setWhenStandbyDeferred(J)V

    .line 2334
    :cond_d
    return v1

    .line 2353
    .end local v2    # "bucket":I
    .end local v8    # "appLastRan":J
    :cond_e
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    .line 2354
    .local v2, "componentPresent":Z
    if-eqz v2, :cond_10

    invoke-static {}, Lcom/android/server/am/OpAppBootManagerInjector;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 2356
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 2357
    .local v8, "jobService":Landroid/content/ComponentName;
    if-eqz v8, :cond_f

    invoke-static {}, Lcom/android/server/am/OpAppBootManagerInjector;->getScreenState()Z

    move-result v9

    if-nez v9, :cond_f

    .line 2358
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 2359
    .local v9, "className":Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/am/OpAppBootManagerInjector;->isBlackJobClass(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 2360
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "blacklist:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    return v1

    .line 2365
    .end local v9    # "className":Ljava/lang/String;
    :cond_f
    invoke-static {p1}, Lcom/android/server/am/OpAppBootManagerInjector;->canJobSchedulerServiceGo(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 2366
    return v1

    .line 2369
    .end local v8    # "jobService":Landroid/content/ComponentName;
    :cond_10
    return v2

    .line 2294
    .end local v2    # "componentPresent":Z
    :cond_11
    :goto_2
    return v1

    .line 2275
    .end local v6    # "jobPending":Z
    .end local v7    # "jobActive":Z
    :cond_12
    :goto_3
    return v1
.end method

.method private isUidActive(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 1004
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/AppStateTracker;->isUidActiveSynced(I)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$AauD0it1BcgWldVm_V1m2Jo7_Zc(Lcom/android/server/job/JobSchedulerService;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isUidActive(I)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$dumpInternal$3(ILcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p0, "filterUidFinal"    # I
    .param p1, "js"    # Lcom/android/server/job/controllers/JobStatus;

    .line 3292
    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eq v0, p0, :cond_1

    .line 3293
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3292
    :goto_1
    return v0
.end method

.method static synthetic lambda$dumpInternalProto$4(ILcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p0, "filterUidFinal"    # I
    .param p1, "js"    # Lcom/android/server/job/controllers/JobStatus;

    .line 3487
    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eq v0, p0, :cond_1

    .line 3488
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3487
    :goto_1
    return v0
.end method

.method static synthetic lambda$static$0(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)I
    .locals 4
    .param p0, "o1"    # Lcom/android/server/job/controllers/JobStatus;
    .param p1, "o2"    # Lcom/android/server/job/controllers/JobStatus;

    .line 793
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    iget-wide v2, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 794
    const/4 v0, -0x1

    return v0

    .line 796
    :cond_0
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    iget-wide v2, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeQueueReadyJobsForExecutionLocked()V
    .locals 2

    .line 2142
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "JobScheduler"

    const-string v1, "Maybe queuing ready jobs..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService;->noteJobsNonpending(Ljava/util/List;)V

    .line 2145
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2146
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->stopNonReadyActiveJobsLocked()V

    .line 2147
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 2148
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->postProcess()V

    .line 2149
    return-void
.end method

.method private queueReadyJobsForExecutionLocked()V
    .locals 4

    .line 1988
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v1, "JobScheduler"

    if-eqz v0, :cond_0

    .line 1989
    const-string/jumbo v0, "queuing all ready jobs for execution:"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService;->noteJobsNonpending(Ljava/util/List;)V

    .line 1992
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1993
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->stopNonReadyActiveJobsLocked()V

    .line 1994
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 1995
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;->postProcess()V

    .line 1997
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1998
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1999
    .local v0, "queuedJobs":I
    if-nez v0, :cond_1

    .line 2000
    const-string v2, "No jobs pending."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2002
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " jobs queued."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    .end local v0    # "queuedJobs":I
    :cond_2
    :goto_0
    return-void
.end method

.method private static sortJobs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 3270
    .local p0, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    new-instance v0, Lcom/android/server/job/JobSchedulerService$4;

    invoke-direct {v0}, Lcom/android/server/job/JobSchedulerService$4;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3283
    return-void
.end method

.method public static standbyBucketForPackage(Ljava/lang/String;IJ)I
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "elapsedNow"    # J

    .line 2674
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 2676
    .local v0, "usageStats":Landroid/app/usage/UsageStatsManagerInternal;
    if-eqz v0, :cond_0

    .line 2677
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v1

    goto :goto_0

    .line 2678
    :cond_0
    const/4 v1, 0x0

    :goto_0
    nop

    .line 2680
    .local v1, "bucket":I
    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketToBucketIndex(I)I

    move-result v1

    .line 2682
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v2, :cond_1

    .line 2683
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " standby bucket index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JobScheduler"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2685
    :cond_1
    return v1
.end method

.method public static standbyBucketToBucketIndex(I)I
    .locals 1
    .param p0, "bucket"    # I

    .line 2665
    const/16 v0, 0x32

    if-ne p0, v0, :cond_0

    const/4 v0, 0x4

    return v0

    .line 2666
    :cond_0
    const/16 v0, 0x1e

    if-le p0, v0, :cond_1

    const/4 v0, 0x3

    return v0

    .line 2667
    :cond_1
    const/16 v0, 0x14

    if-le p0, v0, :cond_2

    const/4 v0, 0x2

    return v0

    .line 2668
    :cond_2
    const/16 v0, 0xa

    if-le p0, v0, :cond_3

    const/4 v0, 0x1

    return v0

    .line 2669
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 5
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1500
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPreparedLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not yet prepared when started tracking: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    :cond_0
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 1504
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 1505
    .local v0, "update":Z
    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-eqz v1, :cond_2

    .line 1506
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1507
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    .line 1508
    .local v2, "controller":Lcom/android/server/job/controllers/StateController;
    if-eqz v0, :cond_1

    .line 1509
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/job/controllers/StateController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V

    .line 1511
    :cond_1
    invoke-virtual {v2, p1, p2}, Lcom/android/server/job/controllers/StateController;->maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 1506
    .end local v2    # "controller":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1514
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;ILjava/lang/String;)Z
    .locals 5
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "reason"    # I
    .param p3, "debugReason"    # Ljava/lang/String;

    .line 1537
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1538
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    .line 1539
    .local v1, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    .line 1540
    .local v2, "executing":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/job/controllers/JobStatus;->matches(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1541
    invoke-virtual {v1, p2, p3}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(ILjava/lang/String;)V

    .line 1542
    const/4 v3, 0x1

    return v3

    .line 1537
    .end local v1    # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v2    # "executing":Lcom/android/server/job/controllers/JobStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1545
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private stopNonReadyActiveJobsLocked()V
    .locals 5

    .line 1965
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1966
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    .line 1967
    .local v1, "serviceContext":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    .line 1968
    .local v2, "running":Lcom/android/server/job/controllers/JobStatus;
    if-nez v2, :cond_0

    .line 1969
    goto :goto_1

    .line 1971
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1972
    const/4 v3, 0x1

    const-string v4, "cancelled due to unsatisfied constraints"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(ILjava/lang/String;)V

    goto :goto_1

    .line 1975
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/job/JobSchedulerService;->isJobThermalConstrainedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1976
    const/4 v3, 0x5

    const-string v4, "cancelled due to thermal condition"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(ILjava/lang/String;)V

    .line 1965
    .end local v1    # "serviceContext":Lcom/android/server/job/JobServiceContext;
    .end local v2    # "running":Lcom/android/server/job/controllers/JobStatus;
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1981
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z
    .locals 4
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "writeBack"    # Z

    .line 1523
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/android/server/job/controllers/JobStatus;->stopTrackingJobLocked(Landroid/app/IActivityManager;Lcom/android/server/job/controllers/JobStatus;)V

    .line 1526
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/job/JobStore;->remove(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v0

    .line 1527
    .local v0, "removed":Z
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-eqz v1, :cond_0

    .line 1528
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1529
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    .line 1530
    .local v2, "controller":Lcom/android/server/job/controllers/StateController;
    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/server/job/controllers/StateController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V

    .line 1528
    .end local v2    # "controller":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1533
    .end local v1    # "i":I
    :cond_0
    return v0
.end method


# virtual methods
.method advanceHeartbeatLocked(J)V
    .locals 8
    .param p1, "beatsElapsed"    # J

    .line 2172
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->USE_HEARTBEATS:Z

    if-nez v0, :cond_0

    .line 2173
    return-void

    .line 2175
    :cond_0
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    .line 2176
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    const-string v1, "JobScheduler"

    if-eqz v0, :cond_1

    .line 2177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Advancing standby heartbeat by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    :cond_1
    const/4 v0, 0x0

    .line 2185
    .local v0, "didAdvanceBucket":Z
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    array-length v4, v3

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_5

    .line 2187
    iget-wide v4, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    aget-wide v6, v3, v2

    cmp-long v3, v4, v6

    if-ltz v3, :cond_2

    .line 2188
    const/4 v0, 0x1

    .line 2190
    :cond_2
    :goto_1
    iget-wide v3, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    aget-wide v6, v5, v2

    cmp-long v3, v3, v6

    if-lez v3, :cond_3

    .line 2191
    aget-wide v3, v5, v2

    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_BEATS:[I

    aget v6, v6, v2

    int-to-long v6, v6

    add-long/2addr v3, v6

    aput-wide v3, v5, v2

    goto :goto_1

    .line 2193
    :cond_3
    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_4

    .line 2194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   Bucket "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " next heartbeat "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    aget-wide v4, v4, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2199
    .end local v2    # "i":I
    :cond_5
    if-eqz v0, :cond_7

    .line 2200
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v2, :cond_6

    .line 2201
    const-string v2, "Hit bucket boundary; reevaluating job runnability"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    :cond_6
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v1, v5}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2205
    :cond_7
    return-void
.end method

.method public areComponentsInPlaceLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 4
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2415
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore;->containsJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 2416
    .local v0, "jobExists":Z
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    .line 2418
    .local v1, "userStarted":Z
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 2419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "areComponentsInPlaceLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " exists="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " userStarted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JobScheduler"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    :cond_0
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-nez v1, :cond_1

    goto :goto_0

    .line 2429
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isJobThermalConstrainedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2430
    return v2

    .line 2440
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    return v2

    .line 2426
    :cond_3
    :goto_0
    return v2
.end method

.method public cancelJob(III)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "jobId"    # I
    .param p3, "callingUid"    # I

    .line 1191
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1192
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    .line 1193
    .local v1, "toCancel":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v1, :cond_0

    .line 1194
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel() called by app, callingUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " jobId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V

    .line 1198
    :cond_0
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 1199
    .end local v1    # "toCancel":Lcom/android/server/job/controllers/JobStatus;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method cancelJobsForPackageAndUid(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 1142
    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1143
    const-string v0, "JobScheduler"

    const-string v1, "Can\'t cancel all jobs for system package"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    return-void

    .line 1146
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1147
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p2}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object v1

    .line 1148
    .local v1, "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1149
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 1150
    .local v3, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1151
    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, p3}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V

    .line 1148
    .end local v3    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1154
    .end local v1    # "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v2    # "i":I
    :cond_2
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

.method public cancelJobsForUid(ILjava/lang/String;)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 1165
    const/4 v0, 0x0

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    .line 1166
    const-string v1, "JobScheduler"

    const-string v2, "Can\'t cancel all jobs for system uid"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    return v0

    .line 1170
    :cond_0
    const/4 v1, 0x0

    .line 1171
    .local v1, "jobsCanceled":Z
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1172
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object v3

    .line 1173
    .local v3, "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    nop

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1174
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 1175
    .local v4, "toRemove":Lcom/android/server/job/controllers/JobStatus;
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, p2}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V

    .line 1176
    const/4 v1, 0x1

    .line 1173
    .end local v4    # "toRemove":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1178
    .end local v0    # "i":I
    .end local v3    # "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_1
    monitor-exit v2

    .line 1179
    return v1

    .line 1178
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method cancelJobsForUser(I)V
    .locals 6
    .param p1, "userHandle"    # I

    .line 1125
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1126
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobStore;->getJobsByUser(I)Ljava/util/List;

    move-result-object v1

    .line 1127
    .local v1, "jobsForUser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1128
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 1129
    .local v3, "toRemove":Lcom/android/server/job/controllers/JobStatus;
    const/4 v4, 0x0

    const-string/jumbo v5, "user removed"

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V

    .line 1127
    .end local v3    # "toRemove":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1131
    .end local v1    # "jobsForUser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 1132
    return-void

    .line 1131
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dumpInternal(Lcom/android/internal/util/IndentingPrintWriter;I)V
    .locals 23
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "filterUid"    # I

    .line 3286
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    .line 3287
    .local v9, "filterUidFinal":I
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v10

    .line 3288
    .local v10, "now":J
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v12

    .line 3289
    .local v12, "nowElapsed":J
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v14

    .line 3291
    .local v14, "nowUptime":J
    new-instance v6, Lcom/android/server/job/-$$Lambda$JobSchedulerService$e8zIA2HHN2tnGMuc6TZ2xWw_c20;

    .local v6, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-direct {v6, v9}, Lcom/android/server/job/-$$Lambda$JobSchedulerService$e8zIA2HHN2tnGMuc6TZ2xWw_c20;-><init>(I)V

    .line 3295
    iget-object v7, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3296
    :try_start_0
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-virtual {v0, v8}, Lcom/android/server/job/JobSchedulerService$Constants;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3297
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    .line 3298
    .local v2, "controller":Lcom/android/server/job/controllers/StateController;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3299
    invoke-virtual {v2, v8}, Lcom/android/server/job/controllers/StateController;->dumpConstants(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3300
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3301
    nop

    .end local v2    # "controller":Lcom/android/server/job/controllers/StateController;
    goto :goto_0

    .line 3476
    :catchall_0
    move-exception v0

    move-object/from16 v22, v7

    move/from16 v16, v9

    move-wide/from16 v20, v10

    move/from16 v9, p2

    move-object v11, v6

    goto/16 :goto_f

    .line 3302
    :cond_0
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3304
    const-string v0, "  Heartbeat:"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3305
    const-string v0, "    Current:    "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    invoke-virtual {v8, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 3306
    const-string v0, "    Next"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3307
    const-string v0, "      ACTIVE:   "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    const/16 v16, 0x0

    aget-wide v2, v0, v16

    invoke-virtual {v8, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 3308
    const-string v0, "      WORKING:  "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    const/16 v17, 0x1

    aget-wide v2, v0, v17

    invoke-virtual {v8, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 3309
    const-string v0, "      FREQUENT: "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    const/4 v2, 0x2

    aget-wide v2, v0, v2

    invoke-virtual {v8, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 3310
    const-string v0, "      RARE:     "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    const/4 v2, 0x3

    aget-wide v2, v0, v2

    invoke-virtual {v8, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 3311
    const-string v0, "    Last heartbeat: "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3312
    iget-wide v2, v1, Lcom/android/server/job/JobSchedulerService;->mLastHeartbeatTime:J

    invoke-static {v2, v3, v12, v13, v8}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3313
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3314
    const-string v0, "    Next heartbeat: "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3315
    iget-wide v2, v1, Lcom/android/server/job/JobSchedulerService;->mLastHeartbeatTime:J

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v4, v0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_HEARTBEAT_TIME:J

    add-long/2addr v2, v4

    invoke-static {v2, v3, v12, v13, v8}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3317
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3318
    const-string v0, "    In parole?: "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3319
    iget-boolean v0, v1, Lcom/android/server/job/JobSchedulerService;->mInParole:Z

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3320
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3321
    const-string v0, "    In thermal throttling?: "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3322
    iget-boolean v0, v1, Lcom/android/server/job/JobSchedulerService;->mThermalConstraint:Z

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3323
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3324
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Started users: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3327
    const-string v0, "Registered "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3328
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->size()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3329
    const-string v0, " jobs:"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3330
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->size()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-lez v0, :cond_7

    .line 3331
    :try_start_3
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v0, v0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore$JobSet;->getAllJobs()Ljava/util/List;

    move-result-object v0

    move-object/from16 v18, v0

    .line 3332
    .local v18, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-static/range {v18 .. v18}, Lcom/android/server/job/JobSchedulerService;->sortJobs(Ljava/util/List;)V

    .line 3333
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    move-object v5, v0

    .line 3334
    .local v5, "job":Lcom/android/server/job/controllers/JobStatus;
    const-string v0, "  JOB #"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    const-string v0, ": "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3335
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->toShortStringExceptUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3338
    invoke-interface {v6, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3339
    goto :goto_1

    .line 3342
    :cond_1
    const-string v4, "    "
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x1

    move-object v2, v5

    move-object/from16 v3, p1

    move-wide/from16 v20, v10

    move-object v10, v5

    .end local v5    # "job":Lcom/android/server/job/controllers/JobStatus;
    .local v10, "job":Lcom/android/server/job/controllers/JobStatus;
    .local v20, "now":J
    move v5, v0

    move-object v11, v6

    move-object/from16 v22, v7

    .end local v6    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v11, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    move-wide v6, v12

    :try_start_4
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/controllers/JobStatus;->dump(Ljava/io/PrintWriter;Ljava/lang/String;ZJ)V

    .line 3343
    const-string v0, "    Last run heartbeat: "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3344
    invoke-virtual {v1, v10}, Lcom/android/server/job/JobSchedulerService;->heartbeatWhenJobsLastRun(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 3345
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3347
    const-string v0, "    Ready: "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3348
    invoke-direct {v1, v10}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3349
    const-string v0, " (job="

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3350
    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3351
    const-string v0, " user="

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3352
    invoke-direct {v1, v10}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3353
    const-string v0, " !pending="

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3354
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move/from16 v0, v17

    goto :goto_2

    :cond_2
    move/from16 v0, v16

    :goto_2
    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3355
    const-string v0, " !active="

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3356
    invoke-direct {v1, v10}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-nez v0, :cond_3

    move/from16 v0, v17

    goto :goto_3

    :cond_3
    move/from16 v0, v16

    :goto_3
    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3357
    const-string v0, " !backingup="

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3358
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_4

    move/from16 v0, v17

    goto :goto_4

    :cond_4
    move/from16 v0, v16

    :goto_4
    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3359
    const-string v0, " comp="

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3360
    const/4 v2, 0x0

    .line 3362
    .local v2, "componentPresent":Z
    :try_start_5
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 3363
    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    const/high16 v4, 0x10000000

    .line 3365
    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v5

    .line 3362
    invoke-interface {v0, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_5

    move/from16 v0, v17

    goto :goto_5

    :cond_5
    move/from16 v0, v16

    :goto_5
    move v2, v0

    .line 3367
    goto :goto_6

    .line 3366
    :catch_0
    move-exception v0

    .line 3368
    :goto_6
    :try_start_6
    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3369
    const-string v0, ")"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 3370
    .end local v2    # "componentPresent":Z
    .end local v10    # "job":Lcom/android/server/job/controllers/JobStatus;
    move-object v6, v11

    move-wide/from16 v10, v20

    move-object/from16 v7, v22

    goto/16 :goto_1

    .line 3333
    .end local v11    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v20    # "now":J
    .restart local v6    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v10, "now":J
    :cond_6
    move-object/from16 v22, v7

    move-wide/from16 v20, v10

    move-object v11, v6

    .line 3371
    .end local v6    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v10    # "now":J
    .end local v18    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v11    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v20    # "now":J
    goto :goto_7

    .line 3476
    .end local v11    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v20    # "now":J
    .restart local v6    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v10    # "now":J
    :catchall_1
    move-exception v0

    move-object/from16 v22, v7

    move-wide/from16 v20, v10

    move-object v11, v6

    move/from16 v16, v9

    move/from16 v9, p2

    .end local v6    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v10    # "now":J
    .restart local v11    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v20    # "now":J
    goto/16 :goto_f

    .line 3372
    .end local v11    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v20    # "now":J
    .restart local v6    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v10    # "now":J
    :cond_7
    move-object/from16 v22, v7

    move-wide/from16 v20, v10

    move-object v11, v6

    .end local v6    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v10    # "now":J
    .restart local v11    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v20    # "now":J
    :try_start_7
    const-string v0, "  None."

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3374
    :goto_7
    move/from16 v0, v16

    .local v0, "i":I
    :goto_8
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-ge v0, v2, :cond_8

    .line 3375
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3377
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3378
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v2, v8, v11}, Lcom/android/server/job/controllers/StateController;->dumpControllerStateLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V

    .line 3379
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 3374
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 3476
    .end local v0    # "i":I
    :catchall_2
    move-exception v0

    move/from16 v16, v9

    move/from16 v9, p2

    goto/16 :goto_f

    .line 3381
    :cond_8
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3382
    const-string v0, "Uid priority overrides:"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3383
    move/from16 v0, v16

    .restart local v0    # "i":I
    :goto_9
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    const/4 v10, -0x1

    if-ge v0, v2, :cond_b

    .line 3384
    :try_start_a
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 3385
    .local v2, "uid":I
    if-eq v9, v10, :cond_9

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v9, v3, :cond_a

    .line 3386
    :cond_9
    const-string v3, "  "

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3387
    const-string v3, ": "

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 3383
    .end local v2    # "uid":I
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 3390
    .end local v0    # "i":I
    :cond_b
    :try_start_b
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-lez v0, :cond_10

    .line 3391
    :try_start_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3392
    const-string v0, "Backing up uids:"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3393
    const/4 v0, 0x1

    .line 3394
    .local v0, "first":Z
    move/from16 v2, v16

    .local v2, "i":I
    :goto_a
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_f

    .line 3395
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 3396
    .local v3, "uid":I
    if-eq v9, v10, :cond_c

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-ne v9, v4, :cond_e

    .line 3397
    :cond_c
    if-eqz v0, :cond_d

    .line 3398
    const-string v4, "  "

    invoke-virtual {v8, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3399
    const/4 v0, 0x0

    goto :goto_b

    .line 3401
    :cond_d
    const-string v4, ", "

    invoke-virtual {v8, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3403
    :goto_b
    invoke-static {v3}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3394
    .end local v3    # "uid":I
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 3406
    .end local v2    # "i":I
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 3408
    .end local v0    # "first":Z
    :cond_10
    :try_start_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3409
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    const-string v2, ""

    invoke-virtual {v0, v8, v2, v9}, Lcom/android/server/job/JobPackageTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 3410
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3411
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    const-string v2, ""

    invoke-virtual {v0, v8, v2, v9}, Lcom/android/server/job/JobPackageTracker;->dumpHistory(Ljava/io/PrintWriter;Ljava/lang/String;I)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-eqz v0, :cond_11

    .line 3412
    :try_start_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 3414
    :cond_11
    :try_start_f
    const-string v0, "Pending queue:"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3415
    move/from16 v0, v16

    .local v0, "i":I
    :goto_c
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    if-ge v0, v2, :cond_12

    .line 3416
    :try_start_10
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    move-object v6, v2

    .line 3417
    .local v6, "job":Lcom/android/server/job/controllers/JobStatus;
    const-string v2, "  Pending #"

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3418
    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3419
    const-string v4, "    "

    const/4 v5, 0x0

    move-object v2, v6

    move-object/from16 v3, p1

    move-object v10, v6

    .end local v6    # "job":Lcom/android/server/job/controllers/JobStatus;
    .local v10, "job":Lcom/android/server/job/controllers/JobStatus;
    move-wide v6, v12

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/controllers/JobStatus;->dump(Ljava/io/PrintWriter;Ljava/lang/String;ZJ)V

    .line 3420
    invoke-virtual {v1, v10}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    .line 3421
    .local v2, "priority":I
    const-string v3, "    Evaluated priority: "

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3422
    invoke-static {v2}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3424
    const-string v3, "    Tag: "

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3425
    const-string v3, "    Enq: "

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3426
    iget-wide v3, v10, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    sub-long/2addr v3, v14

    invoke-static {v3, v4, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3427
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 3415
    .end local v2    # "priority":I
    .end local v10    # "job":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v0, v0, 0x1

    const/4 v10, -0x1

    goto :goto_c

    .line 3429
    .end local v0    # "i":I
    :cond_12
    :try_start_11
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3430
    const-string v0, "Active jobs:"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3431
    move/from16 v0, v16

    .restart local v0    # "i":I
    :goto_d
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_15

    .line 3432
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    move-object v10, v2

    .line 3433
    .local v10, "jsc":Lcom/android/server/job/JobServiceContext;
    const-string v2, "  Slot #"

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3434
    invoke-virtual {v10}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    move-object v6, v2

    .line 3435
    .restart local v6    # "job":Lcom/android/server/job/controllers/JobStatus;
    if-nez v6, :cond_14

    .line 3436
    :try_start_12
    iget-object v2, v10, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    if-eqz v2, :cond_13

    .line 3437
    const-string v2, "inactive since "

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3438
    iget-wide v2, v10, Lcom/android/server/job/JobServiceContext;->mStoppedTime:J

    invoke-static {v2, v3, v12, v13, v8}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3439
    const-string v2, ", stopped because: "

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3440
    iget-object v2, v10, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    move/from16 v16, v9

    goto :goto_e

    .line 3442
    :cond_13
    const-string v2, "inactive"

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 3444
    move/from16 v16, v9

    goto :goto_e

    .line 3446
    :cond_14
    :try_start_13
    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3447
    const-string v2, "    Running for: "

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3448
    invoke-virtual {v10}, Lcom/android/server/job/JobServiceContext;->getExecutionStartTimeElapsed()J

    move-result-wide v2

    sub-long v2, v12, v2

    invoke-static {v2, v3, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3449
    const-string v2, ", timeout at: "

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3450
    invoke-virtual {v10}, Lcom/android/server/job/JobServiceContext;->getTimeoutElapsed()J

    move-result-wide v2

    sub-long/2addr v2, v12

    invoke-static {v2, v3, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3451
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3452
    const-string v4, "    "
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    const/4 v5, 0x0

    move-object v2, v6

    move-object/from16 v3, p1

    move/from16 v16, v9

    move-object v9, v6

    .end local v6    # "job":Lcom/android/server/job/controllers/JobStatus;
    .local v9, "job":Lcom/android/server/job/controllers/JobStatus;
    .local v16, "filterUidFinal":I
    move-wide v6, v12

    :try_start_14
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/controllers/JobStatus;->dump(Ljava/io/PrintWriter;Ljava/lang/String;ZJ)V

    .line 3453
    invoke-virtual {v10}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    .line 3454
    .restart local v2    # "priority":I
    const-string v3, "    Evaluated priority: "

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3455
    invoke-static {v2}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3457
    const-string v3, "    Active at "

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3458
    iget-wide v3, v9, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    sub-long/2addr v3, v14

    invoke-static {v3, v4, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3459
    const-string v3, ", pending for "

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3460
    iget-wide v3, v9, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    iget-wide v5, v9, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3461
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 3431
    .end local v2    # "priority":I
    .end local v9    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v10    # "jsc":Lcom/android/server/job/JobServiceContext;
    :goto_e
    add-int/lit8 v0, v0, 0x1

    move/from16 v9, v16

    goto/16 :goto_d

    .line 3476
    .end local v0    # "i":I
    :catchall_3
    move-exception v0

    move/from16 v9, p2

    goto :goto_f

    .line 3431
    .end local v16    # "filterUidFinal":I
    .restart local v0    # "i":I
    .local v9, "filterUidFinal":I
    :cond_15
    move/from16 v16, v9

    .line 3464
    .end local v0    # "i":I
    .end local v9    # "filterUidFinal":I
    .restart local v16    # "filterUidFinal":I
    move/from16 v9, p2

    const/4 v0, -0x1

    if-ne v9, v0, :cond_16

    .line 3465
    :try_start_15
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3466
    const-string/jumbo v0, "mReadyToRock="

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3467
    const-string/jumbo v0, "mReportedActive="

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3469
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3471
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    move-object/from16 v3, p1

    move-wide/from16 v4, v20

    move-wide v6, v12

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/JobConcurrencyManager;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;JJ)V

    .line 3473
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3474
    const-string v0, "PersistStats: "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3475
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3476
    monitor-exit v22
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    .line 3477
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3478
    return-void

    .line 3476
    .end local v16    # "filterUidFinal":I
    .restart local v9    # "filterUidFinal":I
    :catchall_4
    move-exception v0

    move/from16 v16, v9

    move/from16 v9, p2

    .end local v9    # "filterUidFinal":I
    .restart local v16    # "filterUidFinal":I
    goto :goto_f

    .end local v11    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v16    # "filterUidFinal":I
    .end local v20    # "now":J
    .local v6, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v9    # "filterUidFinal":I
    .local v10, "now":J
    :catchall_5
    move-exception v0

    move-object/from16 v22, v7

    move/from16 v16, v9

    move-wide/from16 v20, v10

    move/from16 v9, p2

    move-object v11, v6

    .end local v6    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v9    # "filterUidFinal":I
    .end local v10    # "now":J
    .restart local v11    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v16    # "filterUidFinal":I
    .restart local v20    # "now":J
    :goto_f
    :try_start_16
    monitor-exit v22
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_f
.end method

.method dumpInternalProto(Ljava/io/FileDescriptor;I)V
    .locals 31
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "filterUid"    # I

    .line 3481
    move-object/from16 v1, p0

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v11, v0

    .line 3482
    .local v11, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    .line 3483
    .local v12, "filterUidFinal":I
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v13

    .line 3484
    .local v13, "now":J
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v15

    .line 3485
    .local v15, "nowElapsed":J
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v17

    .line 3486
    .local v17, "nowUptime":J
    new-instance v10, Lcom/android/server/job/-$$Lambda$JobSchedulerService$rARZcsrvtM2sYbF4SrEE2BXDQ3U;

    .local v10, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-direct {v10, v12}, Lcom/android/server/job/-$$Lambda$JobSchedulerService$rARZcsrvtM2sYbF4SrEE2BXDQ3U;-><init>(I)V

    .line 3491
    iget-object v8, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 3492
    const-wide v5, 0x10b00000001L

    :try_start_0
    invoke-virtual {v11, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 3493
    .local v3, "settingsToken":J
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-virtual {v0, v11}, Lcom/android/server/job/JobSchedulerService$Constants;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 3494
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    if-eqz v7, :cond_0

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/StateController;

    .line 3495
    .local v7, "controller":Lcom/android/server/job/controllers/StateController;
    invoke-virtual {v7, v11}, Lcom/android/server/job/controllers/StateController;->dumpConstants(Landroid/util/proto/ProtoOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3496
    .end local v7    # "controller":Lcom/android/server/job/controllers/StateController;
    goto :goto_0

    .line 3635
    .end local v3    # "settingsToken":J
    :catchall_0
    move-exception v0

    move/from16 v2, p2

    move-object/from16 v19, v8

    move/from16 v25, v12

    move-wide/from16 v27, v13

    move-object v12, v10

    goto/16 :goto_e

    .line 3497
    .restart local v3    # "settingsToken":J
    :cond_0
    :try_start_2
    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3499
    iget-wide v5, v1, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    move-wide/from16 v22, v3

    const-wide v2, 0x1050000000eL

    .end local v3    # "settingsToken":J
    .local v22, "settingsToken":J
    invoke-virtual {v11, v2, v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3500
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    const/4 v2, 0x0

    aget-wide v3, v0, v2

    const-wide v5, 0x2050000000fL

    invoke-virtual {v11, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3501
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    const/16 v21, 0x1

    aget-wide v3, v0, v21

    invoke-virtual {v11, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3502
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    const/4 v3, 0x2

    aget-wide v3, v0, v3

    invoke-virtual {v11, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3503
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    const/4 v3, 0x3

    aget-wide v3, v0, v3

    invoke-virtual {v11, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3504
    const-wide v3, 0x10300000010L

    iget-wide v5, v1, Lcom/android/server/job/JobSchedulerService;->mLastHeartbeatTime:J

    sub-long v5, v5, v17

    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3506
    iget-wide v5, v1, Lcom/android/server/job/JobSchedulerService;->mLastHeartbeatTime:J

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v2, v0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_HEARTBEAT_TIME:J

    add-long/2addr v5, v2

    sub-long v5, v5, v17

    const-wide v2, 0x10300000011L

    invoke-virtual {v11, v2, v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3508
    const-wide v2, 0x10800000012L

    iget-boolean v0, v1, Lcom/android/server/job/JobSchedulerService;->mInParole:Z

    invoke-virtual {v11, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3509
    const-wide v2, 0x10800000013L

    iget-boolean v0, v1, Lcom/android/server/job/JobSchedulerService;->mThermalConstraint:Z

    invoke-virtual {v11, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3511
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    array-length v2, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    :try_start_3
    aget v4, v0, v3

    .line 3512
    .local v4, "u":I
    const-wide v5, 0x20500000002L

    invoke-virtual {v11, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3511
    .end local v4    # "u":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3514
    :cond_1
    :try_start_4
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->size()I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    if-lez v0, :cond_6

    .line 3515
    :try_start_5
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v0, v0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore$JobSet;->getAllJobs()Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    .line 3516
    .local v2, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-static {v2}, Lcom/android/server/job/JobSchedulerService;->sortJobs(Ljava/util/List;)V

    .line 3517
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    move-object v9, v0

    .line 3518
    .local v9, "job":Lcom/android/server/job/controllers/JobStatus;
    const-wide v3, 0x20b00000003L

    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    move-wide v5, v3

    .line 3519
    .local v5, "rjToken":J
    const-wide v3, 0x10b00000001L

    invoke-virtual {v9, v11, v3, v4}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3522
    invoke-interface {v10, v9}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v0, :cond_2

    .line 3523
    goto :goto_2

    .line 3526
    :cond_2
    const-wide v19, 0x10b00000002L

    const/4 v7, 0x1

    move-wide/from16 v25, v3

    move-object v3, v9

    move-object v4, v11

    move-wide/from16 v27, v13

    move-wide v13, v5

    .end local v5    # "rjToken":J
    .local v13, "rjToken":J
    .local v27, "now":J
    move-wide/from16 v5, v19

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    .end local v9    # "job":Lcom/android/server/job/controllers/JobStatus;
    .local v20, "job":Lcom/android/server/job/controllers/JobStatus;
    move-wide v8, v15

    :try_start_6
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/proto/ProtoOutputStream;JZJ)V

    .line 3529
    const-wide v3, 0x10800000003L

    .line 3530
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    .line 3529
    invoke-virtual {v11, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3531
    const-wide v3, 0x10800000004L

    .line 3532
    move-object/from16 v5, v20

    .end local v20    # "job":Lcom/android/server/job/controllers/JobStatus;
    .local v5, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {v1, v5}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 3531
    invoke-virtual {v11, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3533
    const-wide v3, 0x10800000005L

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    .line 3534
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 3533
    invoke-virtual {v11, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3535
    const-wide v3, 0x10800000006L

    .line 3536
    invoke-direct {v1, v5}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 3535
    invoke-virtual {v11, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3537
    const-wide v3, 0x10800000007L

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    .line 3538
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_3

    move/from16 v0, v21

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 3537
    :goto_3
    invoke-virtual {v11, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 3539
    const/4 v3, 0x0

    .line 3541
    .local v3, "componentPresent":Z
    :try_start_7
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 3542
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v4

    const/high16 v6, 0x10000000

    .line 3544
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v7

    .line 3541
    invoke-interface {v0, v4, v6, v7}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v0, :cond_4

    move/from16 v0, v21

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    move v3, v0

    .line 3546
    goto :goto_5

    .line 3545
    :catch_0
    move-exception v0

    .line 3547
    :goto_5
    const-wide v6, 0x10800000008L

    :try_start_8
    invoke-virtual {v11, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3549
    const-wide v6, 0x10300000009L

    invoke-virtual {v1, v5}, Lcom/android/server/job/JobSchedulerService;->heartbeatWhenJobsLastRun(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v8

    invoke-virtual {v11, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3551
    invoke-virtual {v11, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 3552
    .end local v3    # "componentPresent":Z
    .end local v5    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v13    # "rjToken":J
    move-object/from16 v8, v19

    move-wide/from16 v13, v27

    goto/16 :goto_2

    .line 3517
    .end local v27    # "now":J
    .local v13, "now":J
    :cond_5
    move-object/from16 v19, v8

    move-wide/from16 v27, v13

    .end local v13    # "now":J
    .restart local v27    # "now":J
    goto :goto_6

    .line 3635
    .end local v2    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v22    # "settingsToken":J
    .end local v27    # "now":J
    .restart local v13    # "now":J
    :catchall_1
    move-exception v0

    move-object/from16 v19, v8

    move-wide/from16 v27, v13

    move/from16 v2, p2

    move/from16 v25, v12

    move-object v12, v10

    .end local v13    # "now":J
    .restart local v27    # "now":J
    goto/16 :goto_e

    .line 3514
    .end local v27    # "now":J
    .restart local v13    # "now":J
    .restart local v22    # "settingsToken":J
    :cond_6
    move-object/from16 v19, v8

    move-wide/from16 v27, v13

    .line 3554
    .end local v13    # "now":J
    .restart local v27    # "now":J
    :goto_6
    :try_start_9
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    if-eqz v2, :cond_7

    :try_start_a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    .line 3555
    .local v2, "controller":Lcom/android/server/job/controllers/StateController;
    const-wide v3, 0x20b00000004L

    invoke-virtual {v2, v11, v3, v4, v10}, Lcom/android/server/job/controllers/StateController;->dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 3557
    .end local v2    # "controller":Lcom/android/server/job/controllers/StateController;
    goto :goto_7

    .line 3635
    .end local v22    # "settingsToken":J
    :catchall_2
    move-exception v0

    move/from16 v2, p2

    move/from16 v25, v12

    move-object v12, v10

    goto/16 :goto_e

    .line 3558
    .restart local v22    # "settingsToken":J
    :cond_7
    const/4 v2, 0x0

    move v0, v2

    .local v0, "i":I
    :goto_8
    :try_start_b
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    const/4 v13, -0x1

    if-ge v0, v2, :cond_a

    .line 3559
    :try_start_c
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 3560
    .local v2, "uid":I
    if-eq v12, v13, :cond_8

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v12, v3, :cond_9

    .line 3561
    :cond_8
    const-wide v3, 0x20b00000005L

    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 3562
    .local v3, "pToken":J
    const-wide v5, 0x10500000001L

    invoke-virtual {v11, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3563
    const-wide v5, 0x11100000002L

    iget-object v7, v1, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    .line 3564
    invoke-virtual {v7, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    .line 3563
    invoke-virtual {v11, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3565
    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 3558
    .end local v2    # "uid":I
    .end local v3    # "pToken":J
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 3568
    .end local v0    # "i":I
    :cond_a
    const/4 v2, 0x0

    move v0, v2

    .restart local v0    # "i":I
    :goto_9
    :try_start_d
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    if-ge v0, v2, :cond_d

    .line 3569
    :try_start_e
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 3570
    .restart local v2    # "uid":I
    if-eq v12, v13, :cond_b

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v12, v3, :cond_c

    .line 3571
    :cond_b
    const-wide v3, 0x20500000006L

    invoke-virtual {v11, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 3568
    .end local v2    # "uid":I
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 3575
    .end local v0    # "i":I
    :cond_d
    :try_start_f
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    const-wide v2, 0x10b00000008L

    invoke-virtual {v0, v11, v2, v3, v12}, Lcom/android/server/job/JobPackageTracker;->dump(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3577
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    const-wide v2, 0x10b00000007L

    invoke-virtual {v0, v11, v2, v3, v12}, Lcom/android/server/job/JobPackageTracker;->dumpHistory(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3580
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    if-eqz v2, :cond_e

    :try_start_10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 3581
    .local v2, "job":Lcom/android/server/job/controllers/JobStatus;
    const-wide v3, 0x20b00000009L

    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    move-wide v8, v3

    .line 3583
    .local v8, "pjToken":J
    const-wide v5, 0x10b00000001L

    invoke-virtual {v2, v11, v5, v6}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3584
    const-wide v20, 0x10b00000002L

    const/4 v7, 0x0

    move-object v3, v2

    move-object v4, v11

    move-wide v13, v5

    move-wide/from16 v5, v20

    move-wide v13, v8

    .end local v8    # "pjToken":J
    .local v13, "pjToken":J
    move-wide v8, v15

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/proto/ProtoOutputStream;JZJ)V

    .line 3585
    const-wide v3, 0x11100000003L

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v5

    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3586
    const-wide v3, 0x10300000004L

    iget-wide v5, v2, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    sub-long v5, v17, v5

    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3588
    invoke-virtual {v11, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 3589
    .end local v2    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v13    # "pjToken":J
    const/4 v13, -0x1

    goto :goto_a

    .line 3590
    :cond_e
    :try_start_11
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    if-eqz v2, :cond_11

    :try_start_12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    .line 3591
    .local v2, "jsc":Lcom/android/server/job/JobServiceContext;
    const-wide v3, 0x20b0000000aL

    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    move-wide v13, v3

    .line 3592
    .local v13, "ajToken":J
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    move-object v8, v3

    .line 3594
    .local v8, "job":Lcom/android/server/job/controllers/JobStatus;
    if-nez v8, :cond_10

    .line 3595
    const-wide v3, 0x10b00000001L

    :try_start_13
    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    move-wide v3, v5

    .line 3597
    .local v3, "ijToken":J
    iget-wide v5, v2, Lcom/android/server/job/JobServiceContext;->mStoppedTime:J
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    sub-long v5, v15, v5

    move-object/from16 v24, v10

    const-wide v9, 0x10300000001L

    .end local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v24, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    :try_start_14
    invoke-virtual {v11, v9, v10, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3599
    iget-object v5, v2, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    if-eqz v5, :cond_f

    .line 3600
    const-wide v5, 0x10900000002L

    iget-object v7, v2, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    invoke-virtual {v11, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3604
    :cond_f
    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 3605
    .end local v3    # "ijToken":J
    move-object v10, v8

    move/from16 v25, v12

    move-wide/from16 v29, v13

    const-wide v20, 0x10b00000001L

    goto/16 :goto_c

    .line 3635
    .end local v2    # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v8    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v13    # "ajToken":J
    .end local v22    # "settingsToken":J
    :catchall_3
    move-exception v0

    move/from16 v2, p2

    move/from16 v25, v12

    move-object/from16 v12, v24

    goto/16 :goto_e

    .end local v24    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_4
    move-exception v0

    move/from16 v2, p2

    move/from16 v25, v12

    move-object v12, v10

    .end local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v24    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    goto/16 :goto_e

    .line 3606
    .end local v24    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v2    # "jsc":Lcom/android/server/job/JobServiceContext;
    .restart local v8    # "job":Lcom/android/server/job/controllers/JobStatus;
    .restart local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v13    # "ajToken":J
    .restart local v22    # "settingsToken":J
    :cond_10
    move-object/from16 v24, v10

    .end local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v24    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    const-wide v3, 0x10b00000002L

    :try_start_15
    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    move-wide v9, v3

    .line 3608
    .local v9, "rjToken":J
    const-wide v5, 0x10b00000001L

    invoke-virtual {v8, v11, v5, v6}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3610
    const-wide v3, 0x10300000002L

    .line 3611
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getExecutionStartTimeElapsed()J

    move-result-wide v20

    sub-long v5, v15, v20

    .line 3610
    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3612
    const-wide v3, 0x10300000003L

    .line 3613
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getTimeoutElapsed()J

    move-result-wide v5

    sub-long/2addr v5, v15

    .line 3612
    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    .line 3615
    const-wide v5, 0x10b00000004L

    const/4 v7, 0x0

    move-object v3, v8

    move-object v4, v11

    const-wide v20, 0x10b00000001L

    move/from16 v25, v12

    move-wide/from16 v29, v13

    move-wide v12, v9

    move-object v10, v8

    .end local v8    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v9    # "rjToken":J
    .end local v13    # "ajToken":J
    .local v10, "job":Lcom/android/server/job/controllers/JobStatus;
    .local v12, "rjToken":J
    .local v25, "filterUidFinal":I
    .local v29, "ajToken":J
    move-wide v8, v15

    :try_start_16
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/proto/ProtoOutputStream;JZJ)V

    .line 3617
    const-wide v3, 0x11100000005L

    .line 3618
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v5

    .line 3617
    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3620
    const-wide v3, 0x10300000006L

    iget-wide v5, v10, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    sub-long v5, v17, v5

    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3622
    const-wide v3, 0x10300000007L

    iget-wide v5, v10, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    iget-wide v7, v10, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    sub-long/2addr v5, v7

    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3625
    invoke-virtual {v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3627
    .end local v12    # "rjToken":J
    :goto_c
    move-wide/from16 v3, v29

    .end local v29    # "ajToken":J
    .local v3, "ajToken":J
    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 3628
    .end local v2    # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v3    # "ajToken":J
    .end local v10    # "job":Lcom/android/server/job/controllers/JobStatus;
    move-object/from16 v10, v24

    move/from16 v12, v25

    goto/16 :goto_b

    .line 3635
    .end local v22    # "settingsToken":J
    :catchall_5
    move-exception v0

    move/from16 v2, p2

    move-object/from16 v12, v24

    goto/16 :goto_e

    .end local v25    # "filterUidFinal":I
    .local v12, "filterUidFinal":I
    :catchall_6
    move-exception v0

    move/from16 v25, v12

    move/from16 v2, p2

    move-object/from16 v12, v24

    .end local v12    # "filterUidFinal":I
    .restart local v25    # "filterUidFinal":I
    goto :goto_e

    .end local v24    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v25    # "filterUidFinal":I
    .local v10, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v12    # "filterUidFinal":I
    :catchall_7
    move-exception v0

    move/from16 v25, v12

    move/from16 v2, p2

    move-object v12, v10

    .end local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v12    # "filterUidFinal":I
    .restart local v24    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v25    # "filterUidFinal":I
    goto :goto_e

    .line 3629
    .end local v24    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v25    # "filterUidFinal":I
    .restart local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v12    # "filterUidFinal":I
    .restart local v22    # "settingsToken":J
    :cond_11
    move-object/from16 v24, v10

    move/from16 v25, v12

    .end local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v12    # "filterUidFinal":I
    .restart local v24    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v25    # "filterUidFinal":I
    move/from16 v2, p2

    const/4 v0, -0x1

    if-ne v2, v0, :cond_12

    .line 3630
    const-wide v3, 0x1080000000bL

    :try_start_17
    iget-boolean v0, v1, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    invoke-virtual {v11, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3631
    const-wide v3, 0x1080000000cL

    iget-boolean v0, v1, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    invoke-virtual {v11, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    goto :goto_d

    .line 3635
    .end local v22    # "settingsToken":J
    :catchall_8
    move-exception v0

    move-object/from16 v12, v24

    goto :goto_e

    .line 3633
    .restart local v22    # "settingsToken":J
    :cond_12
    :goto_d
    :try_start_18
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    const-wide v5, 0x10b00000014L

    move-object v4, v11

    move-wide/from16 v7, v27

    move-object/from16 v12, v24

    .end local v24    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v12, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    move-wide v9, v15

    :try_start_19
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/job/JobConcurrencyManager;->dumpProtoLocked(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 3635
    .end local v22    # "settingsToken":J
    monitor-exit v19
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    .line 3637
    invoke-virtual {v11}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 3638
    return-void

    .line 3635
    .end local v12    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v24    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_9
    move-exception v0

    move-object/from16 v12, v24

    .end local v24    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v12    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    goto :goto_e

    .end local v25    # "filterUidFinal":I
    .restart local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v12, "filterUidFinal":I
    :catchall_a
    move-exception v0

    move/from16 v2, p2

    move/from16 v25, v12

    move-object v12, v10

    .end local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v12, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v25    # "filterUidFinal":I
    goto :goto_e

    .end local v25    # "filterUidFinal":I
    .end local v27    # "now":J
    .restart local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v12, "filterUidFinal":I
    .local v13, "now":J
    :catchall_b
    move-exception v0

    move/from16 v2, p2

    move-object/from16 v19, v8

    move/from16 v25, v12

    move-wide/from16 v27, v13

    move-object v12, v10

    .end local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v13    # "now":J
    .local v12, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v25    # "filterUidFinal":I
    .restart local v27    # "now":J
    :goto_e
    :try_start_1a
    monitor-exit v19
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    throw v0

    :catchall_c
    move-exception v0

    goto :goto_e
.end method

.method evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I
    .locals 4
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2469
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getPriority()I

    move-result v0

    .line 2470
    .local v0, "priority":I
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 2471
    invoke-direct {p0, v0, p1}, Lcom/android/server/job/JobSchedulerService;->adjustJobPriority(ILcom/android/server/job/controllers/JobStatus;)I

    move-result v1

    return v1

    .line 2473
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 2474
    .local v1, "override":I
    if-eqz v1, :cond_1

    .line 2475
    invoke-direct {p0, v1, p1}, Lcom/android/server/job/JobSchedulerService;->adjustJobPriority(ILcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    return v2

    .line 2477
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/android/server/job/JobSchedulerService;->adjustJobPriority(ILcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    return v2
.end method

.method executeCancelCommand(Ljava/io/PrintWriter;Ljava/lang/String;IZI)I
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "hasJobId"    # Z
    .param p5, "jobId"    # I

    .line 3072
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeCancelCommand(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3076
    :cond_0
    const/4 v0, -0x1

    .line 3078
    .local v0, "pkgUid":I
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 3079
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v2, p2, v1, p3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    goto :goto_0

    .line 3080
    :catch_0
    move-exception v2

    :goto_0
    nop

    .line 3082
    if-gez v0, :cond_1

    .line 3083
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3084
    const/16 v1, -0x3e8

    return v1

    .line 3087
    :cond_1
    const-string v2, " in user "

    if-nez p4, :cond_2

    .line 3088
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Canceling all jobs for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3089
    const-string v2, "cancel shell command for package"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3090
    const-string v2, "No matching jobs found."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 3093
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Canceling job "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3094
    const/16 v2, 0x7d0

    invoke-virtual {p0, v0, p5, v2}, Lcom/android/server/job/JobSchedulerService;->cancelJob(III)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3095
    const-string v2, "No matching job found."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3099
    :cond_3
    :goto_1
    return v1
.end method

.method executeHeartbeatCommand(Ljava/io/PrintWriter;I)I
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "numBeats"    # I

    .line 3236
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    .line 3237
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getCurrentHeartbeat()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 3238
    return v0

    .line 3241
    :cond_0
    const-string v1, "Advancing standby heartbeat by "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3242
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 3243
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3244
    int-to-long v2, p2

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/android/server/job/JobSchedulerService;->advanceHeartbeatLocked(J)V

    .line 3245
    monitor-exit v1

    .line 3246
    return v0

    .line 3245
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method executeRunCommand(Ljava/lang/String;IIZ)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "jobId"    # I
    .param p4, "force"    # Z

    .line 3009
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeRunCommand(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 3016
    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    move v2, p2

    goto :goto_0

    :cond_1
    move v2, v0

    .line 3015
    :goto_0
    invoke-interface {v1, p1, v0, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    .line 3017
    .local v1, "uid":I
    if-gez v1, :cond_2

    .line 3018
    const/16 v0, -0x3e8

    return v0

    .line 3021
    :cond_2
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3022
    :try_start_1
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, v1, p3}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    .line 3023
    .local v3, "js":Lcom/android/server/job/controllers/JobStatus;
    if-nez v3, :cond_3

    .line 3024
    const/16 v4, -0x3e9

    monitor-exit v2

    return v4

    .line 3027
    :cond_3
    if-eqz p4, :cond_4

    const/4 v4, 0x2

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    :goto_1
    iput v4, v3, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 3028
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied()Z

    move-result v4

    if-nez v4, :cond_5

    .line 3029
    iput v0, v3, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 3030
    const/16 v4, -0x3ea

    monitor-exit v2

    return v4

    .line 3033
    :cond_5
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->queueReadyJobsForExecutionLocked()V

    .line 3034
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    .line 3035
    .end local v3    # "js":Lcom/android/server/job/controllers/JobStatus;
    monitor-exit v2

    .line 3038
    .end local v1    # "uid":I
    goto :goto_2

    .line 3035
    .restart local v1    # "uid":I
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .end local p1    # "pkgName":Ljava/lang/String;
    .end local p2    # "userId":I
    .end local p3    # "jobId":I
    .end local p4    # "force":Z
    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3036
    .end local v1    # "uid":I
    .restart local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .restart local p1    # "pkgName":Ljava/lang/String;
    .restart local p2    # "userId":I
    .restart local p3    # "jobId":I
    .restart local p4    # "force":Z
    :catch_0
    move-exception v1

    .line 3039
    :goto_2
    return v0
.end method

.method executeTimeoutCommand(Ljava/io/PrintWriter;Ljava/lang/String;IZI)I
    .locals 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "hasJobId"    # Z
    .param p5, "jobId"    # I

    .line 3045
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeTimeoutCommand(): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p3

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p5

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "JobScheduler"

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3045
    :cond_0
    move-object/from16 v3, p2

    move/from16 v10, p3

    move/from16 v11, p5

    .line 3049
    :goto_0
    iget-object v12, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 3050
    const/4 v0, 0x0

    .line 3051
    .local v0, "foundSome":Z
    const/4 v13, 0x0

    move v4, v13

    move v14, v0

    move v0, v4

    .local v0, "i":I
    .local v14, "foundSome":Z
    :goto_1
    :try_start_0
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 3052
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/JobServiceContext;

    .line 3053
    .local v4, "jc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v4}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v5

    move-object v15, v5

    .line 3054
    .local v15, "js":Lcom/android/server/job/controllers/JobStatus;
    const-string/jumbo v9, "shell"

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/job/JobServiceContext;->timeoutIfExecutingLocked(Ljava/lang/String;IZILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3055
    const/4 v5, 0x1

    .line 3056
    .end local v14    # "foundSome":Z
    .local v5, "foundSome":Z
    const-string v6, "Timing out: "

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3057
    invoke-virtual {v15, v2}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 3058
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3059
    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v14, v5

    .line 3051
    .end local v4    # "jc":Lcom/android/server/job/JobServiceContext;
    .end local v5    # "foundSome":Z
    .end local v15    # "js":Lcom/android/server/job/controllers/JobStatus;
    .restart local v14    # "foundSome":Z
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3062
    .end local v0    # "i":I
    :cond_2
    if-nez v14, :cond_3

    .line 3063
    const-string v0, "No matching executing jobs found."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3065
    .end local v14    # "foundSome":Z
    :cond_3
    monitor-exit v12

    .line 3066
    return v13

    .line 3065
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getBatteryCharging()Z
    .locals 2

    .line 3117
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3118
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    if-eqz v1, :cond_0

    .line 3119
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController;->getTracker()Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isOnStablePower()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    .line 3118
    return v1

    .line 3120
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getBatteryNotLow()Z
    .locals 2

    .line 3124
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3125
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    if-eqz v1, :cond_0

    .line 3126
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController;->getTracker()Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isBatteryNotLow()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    .line 3125
    return v1

    .line 3127
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getBatterySeq()I
    .locals 2

    .line 3111
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3112
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController;->getTracker()Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->getSeq()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    monitor-exit v0

    return v1

    .line 3113
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConstants()Lcom/android/server/job/JobSchedulerService$Constants;
    .locals 1

    .line 971
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    return-object v0
.end method

.method getCurrentHeartbeat()J
    .locals 3

    .line 3144
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3145
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    monitor-exit v0

    return-wide v1

    .line 3146
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getJobState(Ljava/io/PrintWriter;Ljava/lang/String;II)I
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "jobId"    # I

    .line 3152
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 3153
    const/4 v2, -0x1

    if-eq p3, v2, :cond_0

    move v2, p3

    goto :goto_0

    :cond_0
    move v2, v0

    .line 3152
    :goto_0
    invoke-interface {v1, p2, v0, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    .line 3154
    .local v1, "uid":I
    if-gez v1, :cond_1

    .line 3155
    const-string/jumbo v2, "unknown("

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3156
    const/16 v0, -0x3e8

    return v0

    .line 3159
    :cond_1
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3160
    :try_start_1
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, v1, p4}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    .line 3161
    .local v3, "js":Lcom/android/server/job/controllers/JobStatus;
    sget-boolean v4, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "JobScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get-job-state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    :cond_2
    if-nez v3, :cond_3

    .line 3163
    const-string/jumbo v4, "unknown("

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p1, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3164
    const-string v4, "/jid"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ")"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3165
    const/16 v4, -0x3e9

    monitor-exit v2

    return v4

    .line 3168
    :cond_3
    const/4 v4, 0x0

    .line 3169
    .local v4, "printed":Z
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3170
    const-string/jumbo v5, "pending"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3171
    const/4 v4, 0x1

    .line 3173
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3174
    if-eqz v4, :cond_5

    .line 3175
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3177
    :cond_5
    const/4 v4, 0x1

    .line 3178
    const-string v5, "active"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3180
    :cond_6
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-nez v5, :cond_8

    .line 3181
    if-eqz v4, :cond_7

    .line 3182
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3184
    :cond_7
    const/4 v4, 0x1

    .line 3185
    const-string/jumbo v5, "user-stopped"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3187
    :cond_8
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-nez v5, :cond_a

    .line 3188
    if-eqz v4, :cond_9

    .line 3189
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3191
    :cond_9
    const/4 v4, 0x1

    .line 3192
    const-string/jumbo v5, "source-user-stopped"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3194
    :cond_a
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_c

    .line 3195
    if-eqz v4, :cond_b

    .line 3196
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3198
    :cond_b
    const/4 v4, 0x1

    .line 3199
    const-string v5, "backing-up"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3201
    :cond_c
    const/4 v5, 0x0

    .line 3203
    .local v5, "componentPresent":Z
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    .line 3204
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v7

    const/high16 v8, 0x10000000

    .line 3206
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v9

    .line 3203
    invoke-interface {v6, v7, v8, v9}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v6
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_d

    const/4 v6, 0x1

    goto :goto_1

    :cond_d
    move v6, v0

    :goto_1
    move v5, v6

    .line 3208
    goto :goto_2

    .line 3207
    :catch_0
    move-exception v6

    .line 3209
    :goto_2
    if-nez v5, :cond_f

    .line 3210
    if-eqz v4, :cond_e

    .line 3211
    :try_start_3
    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3213
    :cond_e
    const/4 v4, 0x1

    .line 3214
    const-string/jumbo v6, "no-component"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3216
    :cond_f
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 3217
    if-eqz v4, :cond_10

    .line 3218
    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3220
    :cond_10
    const/4 v4, 0x1

    .line 3221
    const-string/jumbo v6, "ready"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3223
    :cond_11
    if-nez v4, :cond_12

    .line 3224
    const-string/jumbo v6, "waiting"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3226
    :cond_12
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3227
    .end local v3    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v4    # "printed":Z
    .end local v5    # "componentPresent":Z
    monitor-exit v2

    .line 3230
    .end local v1    # "uid":I
    goto :goto_3

    .line 3227
    .restart local v1    # "uid":I
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "pkgName":Ljava/lang/String;
    .end local p3    # "userId":I
    .end local p4    # "jobId":I
    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 3228
    .end local v1    # "uid":I
    .restart local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    .restart local p2    # "pkgName":Ljava/lang/String;
    .restart local p3    # "userId":I
    .restart local p4    # "jobId":I
    :catch_1
    move-exception v1

    .line 3231
    :goto_3
    return v0
.end method

.method public getJobStore()Lcom/android/server/job/JobStore;
    .locals 1

    .line 967
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    return-object v0
.end method

.method public getLock()Ljava/lang/Object;
    .locals 1

    .line 963
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getPendingJob(II)Landroid/app/job/JobInfo;
    .locals 5
    .param p1, "uid"    # I
    .param p2, "jobId"    # I

    .line 1112
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1113
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object v1

    .line 1114
    .local v1, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1115
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 1116
    .local v3, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 1117
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    monitor-exit v0

    return-object v4

    .line 1114
    .end local v3    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1120
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 1121
    .end local v1    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPendingJobs(I)Ljava/util/List;
    .locals 6
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    .line 1100
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1101
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object v1

    .line 1102
    .local v1, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1103
    .local v2, "outList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/job/JobInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 1104
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 1105
    .local v4, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1103
    nop

    .end local v4    # "job":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1107
    .end local v3    # "i":I
    :cond_0
    monitor-exit v0

    return-object v2

    .line 1108
    .end local v1    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v2    # "outList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/job/JobInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getRescheduleJobForFailureLocked(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;
    .locals 26
    .param p1, "failureToReschedule"    # Lcom/android/server/job/controllers/JobStatus;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1592
    move-object/from16 v0, p0

    move-object/from16 v14, p1

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v15

    .line 1593
    .local v15, "elapsedNowMillis":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v17

    .line 1595
    .local v17, "job":Landroid/app/job/JobInfo;
    invoke-virtual/range {v17 .. v17}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v18

    .line 1596
    .local v18, "initialBackoffMillis":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v1

    const/4 v2, 0x1

    add-int/lit8 v12, v1, 0x1

    .line 1599
    .local v12, "backoffAttempts":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasWorkLocked()Z

    move-result v1

    const/4 v3, 0x0

    const-string v4, ": attempt #"

    const-string v5, "Not rescheduling "

    const-string v6, "JobScheduler"

    if-eqz v1, :cond_0

    .line 1600
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_WORK_RESCHEDULE_COUNT:I

    if-le v12, v1, :cond_1

    .line 1601
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > work limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_STANDARD_RESCHEDULE_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    return-object v3

    .line 1606
    :cond_0
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_STANDARD_RESCHEDULE_COUNT:I

    if-le v12, v1, :cond_1

    .line 1607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > std limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_STANDARD_RESCHEDULE_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    return-object v3

    .line 1612
    :cond_1
    invoke-virtual/range {v17 .. v17}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v1

    if-eqz v1, :cond_4

    if-eq v1, v2, :cond_2

    .line 1621
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 1622
    const-string v1, "Unrecognised back-off policy, defaulting to exponential."

    invoke-static {v6, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    :cond_2
    move-wide/from16 v1, v18

    .line 1626
    .local v1, "backoff":J
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v3, v3, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_3

    .line 1627
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v1, v3, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME:J

    .line 1629
    :cond_3
    long-to-float v3, v1

    add-int/lit8 v4, v12, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->scalb(FI)F

    move-result v3

    float-to-long v1, v3

    .local v1, "delayMillis":J
    goto :goto_0

    .line 1614
    .end local v1    # "delayMillis":J
    :cond_4
    move-wide/from16 v1, v18

    .line 1615
    .local v1, "backoff":J
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v3, v3, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_5

    .line 1616
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v1, v3, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME:J

    .line 1618
    :cond_5
    int-to-long v3, v12

    mul-long/2addr v1, v3

    .line 1619
    .local v1, "delayMillis":J
    nop

    .line 1632
    :goto_0
    const-wide/32 v3, 0x112a880

    .line 1633
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    .line 1634
    .end local v1    # "delayMillis":J
    .local v20, "delayMillis":J
    new-instance v22, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobSchedulerService;->getCurrentHeartbeat()J

    move-result-wide v3

    add-long v5, v15, v20

    const-wide v7, 0x7fffffffffffffffL

    .line 1637
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastSuccessfulRunTime()J

    move-result-wide v10

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v23

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move v9, v12

    move/from16 v25, v12

    .end local v12    # "backoffAttempts":I
    .local v25, "backoffAttempts":I
    move-wide/from16 v12, v23

    invoke-direct/range {v1 .. v13}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJJIJJ)V

    .line 1638
    .local v1, "newJob":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual/range {v17 .. v17}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1639
    nop

    .line 1640
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getOriginalLatestRunTimeElapsed()J

    move-result-wide v2

    .line 1639
    invoke-virtual {v1, v2, v3}, Lcom/android/server/job/controllers/JobStatus;->setOriginalLatestRunTimeElapsed(J)V

    .line 1642
    :cond_6
    const/4 v2, 0x0

    .local v2, "ic":I
    :goto_1
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 1643
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/StateController;

    .line 1644
    .local v3, "controller":Lcom/android/server/job/controllers/StateController;
    invoke-virtual {v3, v1, v14}, Lcom/android/server/job/controllers/StateController;->rescheduleForFailureLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 1642
    .end local v3    # "controller":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1646
    .end local v2    # "ic":I
    :cond_7
    return-object v1
.end method

.method getRescheduleJobForPeriodic(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;
    .locals 41
    .param p1, "periodicToReschedule"    # Lcom/android/server/job/controllers/JobStatus;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1676
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1679
    .local v0, "elapsedNow":J
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v2

    .line 1680
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v4

    const-wide v6, 0x757b12c00L

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 1679
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 1682
    .local v2, "period":J
    invoke-static {}, Landroid/app/job/JobInfo;->getMinFlexMillis()J

    move-result-wide v4

    .line 1683
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 1682
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 1684
    .local v4, "flex":J
    const-wide/16 v6, 0x0

    .line 1686
    .local v6, "rescheduleBuffer":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getOriginalLatestRunTimeElapsed()J

    move-result-wide v8

    .line 1687
    .local v8, "olrte":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    const-string v11, "JobScheduler"

    if-ltz v10, :cond_0

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v10, v8, v12

    if-nez v10, :cond_1

    .line 1688
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid periodic job original latest run time: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    move-wide v8, v0

    .line 1691
    :cond_1
    move-wide v12, v8

    .line 1693
    .local v12, "latestRunTimeElapsed":J
    sub-long v14, v0, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    .line 1694
    .local v14, "diffMs":J
    cmp-long v10, v0, v12

    move-wide/from16 v16, v6

    .end local v6    # "rescheduleBuffer":J
    .local v16, "rescheduleBuffer":J
    const-wide/32 v6, 0x1b7740

    if-lez v10, :cond_6

    .line 1697
    sget-boolean v10, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v10, :cond_2

    .line 1698
    const-string v10, "Periodic job ran after its intended window."

    invoke-static {v11, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    :cond_2
    div-long v18, v14, v2

    const-wide/16 v20, 0x1

    add-long v18, v18, v20

    .line 1701
    .local v18, "numSkippedWindows":J
    cmp-long v10, v2, v4

    if-eqz v10, :cond_4

    sub-long v22, v2, v4

    const-wide/16 v24, 0x2

    move-wide/from16 v26, v8

    .end local v8    # "olrte":J
    .local v26, "olrte":J
    div-long v8, v22, v24

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    cmp-long v6, v14, v6

    if-lez v6, :cond_5

    .line 1703
    sget-boolean v6, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 1704
    const-string v6, "Custom flex job ran too close to next window."

    invoke-static {v11, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    :cond_3
    add-long v18, v18, v20

    goto :goto_0

    .line 1701
    .end local v26    # "olrte":J
    .restart local v8    # "olrte":J
    :cond_4
    move-wide/from16 v26, v8

    .line 1710
    .end local v8    # "olrte":J
    .restart local v26    # "olrte":J
    :cond_5
    :goto_0
    mul-long v6, v2, v18

    add-long/2addr v6, v12

    .line 1711
    .end local v18    # "numSkippedWindows":J
    .local v6, "newLatestRuntimeElapsed":J
    goto :goto_1

    .line 1712
    .end local v6    # "newLatestRuntimeElapsed":J
    .end local v26    # "olrte":J
    .restart local v8    # "olrte":J
    :cond_6
    move-wide/from16 v26, v8

    .end local v8    # "olrte":J
    .restart local v26    # "olrte":J
    add-long v8, v12, v2

    .line 1713
    .local v8, "newLatestRuntimeElapsed":J
    cmp-long v10, v14, v6

    if-gez v10, :cond_7

    const-wide/16 v18, 0x6

    div-long v20, v2, v18

    cmp-long v10, v14, v20

    if-gez v10, :cond_7

    .line 1716
    div-long v18, v2, v18

    move-wide/from16 v20, v8

    .end local v8    # "newLatestRuntimeElapsed":J
    .local v20, "newLatestRuntimeElapsed":J
    sub-long v8, v18, v14

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    move-wide/from16 v16, v6

    move-wide/from16 v6, v20

    .end local v16    # "rescheduleBuffer":J
    .local v6, "rescheduleBuffer":J
    goto :goto_1

    .line 1713
    .end local v6    # "rescheduleBuffer":J
    .end local v20    # "newLatestRuntimeElapsed":J
    .restart local v8    # "newLatestRuntimeElapsed":J
    .restart local v16    # "rescheduleBuffer":J
    :cond_7
    move-wide/from16 v20, v8

    .line 1720
    .end local v8    # "newLatestRuntimeElapsed":J
    .restart local v20    # "newLatestRuntimeElapsed":J
    move-wide/from16 v6, v20

    .end local v20    # "newLatestRuntimeElapsed":J
    .local v6, "newLatestRuntimeElapsed":J
    :goto_1
    cmp-long v8, v6, v0

    if-gez v8, :cond_8

    .line 1721
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rescheduling calculated latest runtime in the past: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    new-instance v8, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobSchedulerService;->getCurrentHeartbeat()J

    move-result-wide v30

    add-long v9, v0, v2

    sub-long v32, v9, v4

    add-long v34, v0, v2

    const/16 v36, 0x0

    sget-object v9, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 1726
    invoke-virtual {v9}, Ljava/time/Clock;->millis()J

    move-result-wide v37

    .line 1727
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v39

    move-object/from16 v28, v8

    move-object/from16 v29, p1

    invoke-direct/range {v28 .. v40}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJJIJJ)V

    .line 1723
    return-object v8

    .line 1730
    :cond_8
    sub-long v8, v2, v16

    .line 1731
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    sub-long v8, v6, v8

    .line 1733
    .local v8, "newEarliestRunTimeElapsed":J
    sget-boolean v10, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v10, :cond_9

    .line 1734
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v18, v0

    .end local v0    # "elapsedNow":J
    .local v18, "elapsedNow":J
    const-string v0, "Rescheduling executed periodic. New execution window ["

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v0, 0x3e8

    move-wide/from16 v20, v2

    .end local v2    # "period":J
    .local v20, "period":J
    div-long v2, v8, v0

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v0, v6, v0

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]s"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1733
    .end local v18    # "elapsedNow":J
    .end local v20    # "period":J
    .restart local v0    # "elapsedNow":J
    .restart local v2    # "period":J
    :cond_9
    move-wide/from16 v18, v0

    move-wide/from16 v20, v2

    .line 1738
    .end local v0    # "elapsedNow":J
    .end local v2    # "period":J
    .restart local v18    # "elapsedNow":J
    .restart local v20    # "period":J
    :goto_2
    new-instance v0, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobSchedulerService;->getCurrentHeartbeat()J

    move-result-wide v30

    const/16 v36, 0x0

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 1741
    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v37

    .line 1742
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v39

    move-object/from16 v28, v0

    move-object/from16 v29, p1

    move-wide/from16 v32, v8

    move-wide/from16 v34, v6

    invoke-direct/range {v28 .. v40}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJJIJJ)V

    .line 1738
    return-object v0
.end method

.method getStorageNotLow()Z
    .locals 2

    .line 3137
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3138
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    if-eqz v1, :cond_0

    .line 3139
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/StorageController;->getTracker()Lcom/android/server/job/controllers/StorageController$StorageTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->isStorageNotLow()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    .line 3138
    return v1

    .line 3140
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getStorageSeq()I
    .locals 2

    .line 3131
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3132
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/StorageController;->getTracker()Lcom/android/server/job/controllers/StorageController$StorageTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->getSeq()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    monitor-exit v0

    return v1

    .line 3133
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTestableContext()Landroid/content/Context;
    .locals 1

    .line 959
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method heartbeatWhenJobsLastRun(Lcom/android/server/job/controllers/JobStatus;)J
    .locals 2
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1784
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobSchedulerService;->heartbeatWhenJobsLastRun(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method heartbeatWhenJobsLastRun(Ljava/lang/String;I)J
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1752
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_BEATS:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    neg-int v0, v0

    int-to-long v0, v0

    .line 1753
    .local v0, "heartbeat":J
    const/4 v2, 0x0

    .line 1754
    .local v2, "cacheHit":Z
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1755
    :try_start_0
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mLastJobHeartbeats:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 1756
    .local v4, "jobPackages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-wide v5, 0x7fffffffffffffffL

    if-eqz v4, :cond_0

    .line 1757
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, p1, v7}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 1758
    .local v7, "cachedValue":J
    cmp-long v9, v7, v5

    if-gez v9, :cond_0

    .line 1759
    const/4 v2, 0x1

    .line 1760
    move-wide v0, v7

    .line 1763
    .end local v7    # "cachedValue":J
    :cond_0
    if-nez v2, :cond_2

    .line 1765
    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v7, p1, p2}, Landroid/app/usage/UsageStatsManagerInternal;->getTimeSinceLastJobRun(Ljava/lang/String;I)J

    move-result-wide v7

    .line 1766
    .local v7, "timeSinceJob":J
    cmp-long v5, v7, v5

    if-gez v5, :cond_1

    .line 1769
    iget-wide v5, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    iget-object v9, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v9, v9, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_HEARTBEAT_TIME:J

    div-long v9, v7, v9

    sub-long/2addr v5, v9

    move-wide v0, v5

    .line 1773
    :cond_1
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/job/JobSchedulerService;->setLastJobHeartbeatLocked(Ljava/lang/String;IJ)V

    .line 1775
    .end local v4    # "jobPackages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v7    # "timeSinceJob":J
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1776
    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_3

    .line 1777
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Last job heartbeat "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "JobScheduler"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    :cond_3
    return-wide v0

    .line 1775
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public isChainedAttributionEnabled()Z
    .locals 1

    .line 975
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/WorkSource;->isChainedBatteryAttributionEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$new$1$JobSchedulerService()V
    .locals 10

    .line 1392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1393
    .local v0, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/job/controllers/JobStatus;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1394
    .local v1, "toAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1397
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/android/server/job/JobStore;->getRtcCorrectedJobsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1401
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1402
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 1403
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 1404
    .local v5, "oldJob":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/JobStatus;

    .line 1405
    .local v6, "newJob":Lcom/android/server/job/controllers/JobStatus;
    sget-boolean v7, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 1406
    const-string v7, "JobScheduler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  replacing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    :cond_0
    const-string v7, "deferred rtc calculation"

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V

    .line 1402
    .end local v5    # "oldJob":Lcom/android/server/job/controllers/JobStatus;
    .end local v6    # "newJob":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1410
    .end local v3    # "N":I
    .end local v4    # "i":I
    :cond_1
    monitor-exit v2

    .line 1411
    return-void

    .line 1410
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public synthetic lambda$onBootPhase$2$JobSchedulerService(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1483
    const/4 v0, 0x0

    .local v0, "controller":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1484
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/StateController;

    .line 1485
    .local v1, "sc":Lcom/android/server/job/controllers/StateController;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/job/controllers/StateController;->maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 1483
    .end local v1    # "sc":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1487
    .end local v0    # "controller":I
    :cond_0
    return-void
.end method

.method maybeRunPendingJobsLocked()V
    .locals 2

    .line 2449
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pending queue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " jobs."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v0}, Lcom/android/server/job/JobConcurrencyManager;->assignJobsToContextsLocked()V

    .line 2453
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    .line 2454
    return-void
.end method

.method noteJobsNonpending(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 1572
    .local p1, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1573
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 1574
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1572
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1576
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method noteJobsPending(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 1565
    .local p1, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1566
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 1567
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1565
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1569
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public onBootPhase(I)V
    .locals 13
    .param p1, "phase"    # I

    .line 1420
    const/16 v0, 0x1f4

    if-ne v0, p1, :cond_2

    .line 1421
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->start(Landroid/content/ContentResolver;)V

    .line 1422
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/StateController;

    .line 1423
    .local v1, "controller":Lcom/android/server/job/controllers/StateController;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/StateController;->onSystemServicesReady()V

    .line 1424
    .end local v1    # "controller":Lcom/android/server/job/controllers/StateController;
    goto :goto_0

    .line 1426
    :cond_0
    const-class v0, Lcom/android/server/AppStateTracker;

    .line 1427
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppStateTracker;

    .line 1426
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppStateTracker;

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 1428
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->USE_HEARTBEATS:Z

    if-eqz v0, :cond_1

    .line 1429
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->setNextHeartbeatAlarm()V

    .line 1433
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1434
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1435
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1436
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1437
    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1438
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1439
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1441
    new-instance v10, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-direct {v10, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1442
    .local v10, "userFilter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1445
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mUidObserver:Landroid/app/IUidObserver;

    const/16 v4, 0xf

    const/4 v5, -0x1

    invoke-interface {v2, v3, v4, v5, v1}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1451
    goto :goto_1

    .line 1449
    :catch_0
    move-exception v2

    .line 1453
    :goto_1
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v2}, Lcom/android/server/job/JobConcurrencyManager;->onSystemReady()V

    .line 1456
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForNonExistentUsers()V

    .line 1458
    nop

    .line 1459
    const-string/jumbo v2, "thermalservice"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1458
    invoke-static {v2}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mThermalService:Landroid/os/IThermalService;

    .line 1460
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mThermalService:Landroid/os/IThermalService;

    if-eqz v2, :cond_4

    .line 1462
    :try_start_1
    new-instance v3, Lcom/android/server/job/JobSchedulerService$ThermalStatusListener;

    invoke-direct {v3, p0, v1}, Lcom/android/server/job/JobSchedulerService$ThermalStatusListener;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobSchedulerService$1;)V

    invoke-interface {v2, v3}, Landroid/os/IThermalService;->registerThermalStatusListener(Landroid/os/IThermalStatusListener;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1465
    goto :goto_3

    .line 1463
    :catch_1
    move-exception v1

    .line 1464
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "JobScheduler"

    const-string v3, "Failed to register thermal callback."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1467
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v10    # "userFilter":Landroid/content/IntentFilter;
    :cond_2
    const/16 v0, 0x258

    if-ne p1, v0, :cond_4

    .line 1468
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1470
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    .line 1471
    const-string v2, "batterystats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 1473
    const-class v2, Lcom/android/server/DeviceIdleController$LocalService;

    .line 1474
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DeviceIdleController$LocalService;

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    .line 1476
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    const/16 v3, 0x10

    if-ge v2, v3, :cond_3

    .line 1477
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    new-instance v4, Lcom/android/server/job/JobServiceContext;

    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 1479
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/android/server/job/JobServiceContext;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Landroid/os/Looper;)V

    .line 1477
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1476
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1482
    .end local v2    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    new-instance v3, Lcom/android/server/job/-$$Lambda$JobSchedulerService$Lfddr1PhKRLtm92W7niRGMWO69M;

    invoke-direct {v3, p0}, Lcom/android/server/job/-$$Lambda$JobSchedulerService$Lfddr1PhKRLtm92W7niRGMWO69M;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-virtual {v2, v3}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 1489
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1490
    monitor-exit v0

    goto :goto_4

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1467
    :cond_4
    :goto_3
    nop

    .line 1492
    :goto_4
    return-void
.end method

.method public onControllerStateChanged()V
    .locals 2

    .line 1859
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1860
    return-void
.end method

.method public onDeviceIdleStateChanged(Z)V
    .locals 7
    .param p1, "deviceIdle"    # Z

    .line 1245
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1246
    :try_start_0
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1247
    const-string v1, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Doze state changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 1252
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1253
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobServiceContext;

    .line 1254
    .local v3, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v4

    .line 1255
    .local v4, "executing":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v4, :cond_1

    .line 1256
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result v5

    and-int/2addr v5, v1

    if-nez v5, :cond_1

    .line 1257
    const/4 v5, 0x4

    const-string v6, "cancelled due to doze"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(ILjava/lang/String;)V

    .line 1252
    .end local v3    # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v4    # "executing":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_2
    goto :goto_1

    .line 1263
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-eqz v2, :cond_5

    .line 1264
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    if-eqz v2, :cond_4

    .line 1265
    iget-boolean v2, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    if-nez v2, :cond_4

    .line 1266
    iput-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    .line 1267
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {v2, v1}, Lcom/android/server/DeviceIdleController$LocalService;->setJobsActive(Z)V

    .line 1270
    :cond_4
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1273
    :cond_5
    :goto_1
    monitor-exit v0

    .line 1274
    return-void

    .line 1273
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onJobCompletedLocked(Lcom/android/server/job/controllers/JobStatus;Z)V
    .locals 7
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "needsReschedule"    # Z

    .line 1807
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v1, "JobScheduler"

    if-eqz v0, :cond_0

    .line 1808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Completed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reschedule="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    :cond_0
    if-eqz p2, :cond_1

    .line 1815
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getRescheduleJobForFailureLocked(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1819
    .local v0, "rescheduledJob":Lcom/android/server/job/controllers/JobStatus;
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/job/JobSchedulerService;->stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v2

    const/4 v3, 0x3

    if-nez v2, :cond_3

    .line 1820
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 1821
    const-string v2, "Could not find job to remove. Was job removed while executing?"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    :cond_2
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1826
    return-void

    .line 1829
    :cond_3
    const-string v2, "Unable to regrant job permissions for "

    if-eqz v0, :cond_4

    .line 1831
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked(Landroid/app/IActivityManager;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1834
    goto :goto_1

    .line 1832
    :catch_0
    move-exception v4

    .line 1833
    .local v4, "e":Ljava/lang/SecurityException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    .end local v4    # "e":Ljava/lang/SecurityException;
    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_3

    .line 1836
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1837
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getRescheduleJobForPeriodic(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v4

    .line 1839
    .local v4, "rescheduledPeriodic":Lcom/android/server/job/controllers/JobStatus;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked(Landroid/app/IActivityManager;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1842
    goto :goto_2

    .line 1840
    :catch_1
    move-exception v5

    .line 1841
    .local v5, "e":Ljava/lang/SecurityException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    .end local v5    # "e":Ljava/lang/SecurityException;
    :goto_2
    invoke-direct {p0, v4, p1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 1845
    .end local v4    # "rescheduledPeriodic":Lcom/android/server/job/controllers/JobStatus;
    :cond_5
    :goto_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/job/controllers/JobStatus;->unprepareLocked(Landroid/app/IActivityManager;)V

    .line 1846
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    .line 1847
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1848
    return-void
.end method

.method public onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1864
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1865
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1415
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    const-string/jumbo v1, "jobscheduler"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/job/JobSchedulerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1416
    return-void
.end method

.method public onStartUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 980
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 981
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 982
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 984
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 985
    return-void

    .line 982
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onStopUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 995
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 996
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

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

.method public onUnlockUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 990
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 991
    return-void
.end method

.method reportActiveLocked()V
    .locals 6

    .line 1278
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1279
    .local v0, "active":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 1280
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1281
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobServiceContext;

    .line 1282
    .local v3, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v4

    .line 1283
    .local v4, "job":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v4, :cond_1

    .line 1284
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v5

    and-int/2addr v5, v1

    if-nez v5, :cond_1

    iget-boolean v5, v4, Lcom/android/server/job/controllers/JobStatus;->dozeWhitelisted:Z

    if-nez v5, :cond_1

    iget-boolean v5, v4, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    if-nez v5, :cond_1

    .line 1289
    const/4 v0, 0x1

    .line 1290
    goto :goto_2

    .line 1280
    .end local v3    # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v4    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1295
    .end local v2    # "i":I
    :cond_2
    :goto_2
    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    if-eq v1, v0, :cond_3

    .line 1296
    iput-boolean v0, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    .line 1297
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    if-eqz v1, :cond_3

    .line 1298
    invoke-virtual {v1, v0}, Lcom/android/server/DeviceIdleController$LocalService;->setJobsActive(Z)V

    .line 1301
    :cond_3
    return-void
.end method

.method reportAppUsage(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1306
    return-void
.end method

.method public scheduleAsPackage(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;ILjava/lang/String;ILjava/lang/String;)I
    .locals 19
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "work"    # Landroid/app/job/JobWorkItem;
    .param p3, "uId"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "tag"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    .line 1012
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1013
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1012
    invoke-interface {v0, v12, v4}, Landroid/app/IActivityManager;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1014
    const-string v0, "JobScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not scheduling job "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -- package not allowed to start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1016
    const/4 v0, 0x0

    return v0

    .line 1019
    :cond_0
    goto :goto_0

    .line 1018
    :catch_0
    move-exception v0

    .line 1021
    :goto_0
    iget-object v14, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1022
    :try_start_1
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getId()I

    move-result v4

    invoke-virtual {v0, v12, v4}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    .line 1024
    .local v0, "toCancel":Lcom/android/server/job/controllers/JobStatus;
    const/4 v15, 0x1

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 1027
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/job/JobInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1029
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/android/server/job/controllers/JobStatus;->enqueueWorkLocked(Landroid/app/IActivityManager;Landroid/app/job/JobWorkItem;)V

    .line 1033
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mIsUidActivePredicate:Ljava/util/function/Predicate;

    invoke-virtual {v0, v4}, Lcom/android/server/job/controllers/JobStatus;->maybeAddForegroundExemption(Ljava/util/function/Predicate;)V

    .line 1035
    monitor-exit v14

    return v15

    .line 1039
    :cond_1
    move/from16 v11, p5

    move-object/from16 v10, p6

    invoke-static {v2, v12, v13, v11, v10}, Lcom/android/server/job/controllers/JobStatus;->createFromJobInfo(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v4

    move-object v9, v4

    .line 1045
    .local v9, "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mIsUidActivePredicate:Ljava/util/function/Predicate;

    invoke-virtual {v9, v4}, Lcom/android/server/job/controllers/JobStatus;->maybeAddForegroundExemption(Ljava/util/function/Predicate;)V

    .line 1047
    sget-boolean v4, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "JobScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SCHEDULE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    :cond_2
    if-nez v13, :cond_4

    .line 1050
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v4, v12}, Lcom/android/server/job/JobStore;->countJobsForUid(I)I

    move-result v4

    const/16 v5, 0x64

    if-gt v4, v5, :cond_3

    goto :goto_1

    .line 1051
    :cond_3
    const-string v4, "JobScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Too many jobs for uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Apps may not schedule more than 100 distinct jobs"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .end local p1    # "job":Landroid/app/job/JobInfo;
    .end local p2    # "work":Landroid/app/job/JobWorkItem;
    .end local p3    # "uId":I
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p5    # "userId":I
    .end local p6    # "tag":Ljava/lang/String;
    throw v4

    .line 1058
    .restart local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .restart local p1    # "job":Landroid/app/job/JobInfo;
    .restart local p2    # "work":Landroid/app/job/JobWorkItem;
    .restart local p3    # "uId":I
    .restart local p4    # "packageName":Ljava/lang/String;
    .restart local p5    # "userId":I
    .restart local p6    # "tag":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked(Landroid/app/IActivityManager;)V

    .line 1060
    if-eqz v3, :cond_5

    .line 1062
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {v9, v4, v3}, Lcom/android/server/job/controllers/JobStatus;->enqueueWorkLocked(Landroid/app/IActivityManager;Landroid/app/job/JobWorkItem;)V

    .line 1065
    :cond_5
    if-eqz v0, :cond_6

    .line 1067
    const-string/jumbo v4, "job rescheduled by app"

    invoke-direct {v1, v0, v9, v4}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V

    goto :goto_2

    .line 1069
    :cond_6
    const/4 v4, 0x0

    invoke-direct {v1, v9, v4}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 1071
    :goto_2
    const/16 v4, 0x8

    const/4 v6, 0x0

    .line 1072
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    const/16 v16, 0x0

    .line 1074
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v17

    .line 1075
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v18

    .line 1071
    move/from16 v5, p3

    move-object v15, v9

    .end local v9    # "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    .local v15, "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    move/from16 v9, v16

    move/from16 v10, v17

    move/from16 v11, v18

    invoke-static/range {v4 .. v11}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;IIII)I

    .line 1086
    invoke-direct {v1, v15}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1089
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v4, v15}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1090
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/server/job/JobSchedulerService;->mEnqueueTimeComparator:Ljava/util/Comparator;

    invoke-static {v4, v15, v5}, Lcom/android/server/job/JobSchedulerService;->addOrderedItem(Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1091
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    goto :goto_3

    .line 1093
    :cond_7
    invoke-direct {v1, v15}, Lcom/android/server/job/JobSchedulerService;->evaluateControllerStatesLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1095
    .end local v0    # "toCancel":Lcom/android/server/job/controllers/JobStatus;
    .end local v15    # "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    :goto_3
    monitor-exit v14

    .line 1096
    const/4 v0, 0x1

    return v0

    .line 1095
    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method setLastJobHeartbeatLocked(Ljava/lang/String;IJ)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "heartbeat"    # J

    .line 1788
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLastJobHeartbeats:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1789
    .local v0, "jobPackages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v0, :cond_0

    .line 1790
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 1791
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLastJobHeartbeats:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1793
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1794
    return-void
.end method

.method setMonitorBattery(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 3103
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3104
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    if-eqz v1, :cond_0

    .line 3105
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController;->getTracker()Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->setMonitorBatteryLocked(Z)V

    .line 3107
    :cond_0
    monitor-exit v0

    .line 3108
    return-void

    .line 3107
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setNextHeartbeatAlarm()V
    .locals 20

    .line 2209
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2210
    :try_start_0
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->USE_HEARTBEATS:Z

    if-nez v0, :cond_0

    .line 2211
    monitor-exit v2

    return-void

    .line 2213
    :cond_0
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v3, v0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_HEARTBEAT_TIME:J

    .line 2214
    .local v3, "heartbeatLength":J
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2215
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    .line 2216
    .local v5, "now":J
    add-long v7, v5, v3

    div-long/2addr v7, v3

    .line 2217
    .local v7, "nextBeatOrdinal":J
    mul-long v14, v7, v3

    .line 2218
    .local v14, "nextHeartbeat":J
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v0, :cond_1

    .line 2219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting heartbeat alarm for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v9, v14, v5

    .line 2220
    invoke-static {v9, v10}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2219
    const-string v2, "JobScheduler"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2223
    .local v0, "am":Landroid/app/AlarmManager;
    const/4 v10, 0x3

    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mHeartbeatAlarm:Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;

    iget-object v13, v1, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const-string v16, "*job.heartbeat*"

    move-object v9, v0

    move-wide v11, v14

    move-object/from16 v17, v13

    move-object/from16 v13, v16

    move-wide/from16 v18, v14

    .end local v14    # "nextHeartbeat":J
    .local v18, "nextHeartbeat":J
    move-object v14, v2

    move-object/from16 v15, v17

    invoke-virtual/range {v9 .. v15}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 2225
    return-void

    .line 2214
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v3    # "heartbeatLength":J
    .end local v5    # "now":J
    .end local v7    # "nextBeatOrdinal":J
    .end local v18    # "nextHeartbeat":J
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method triggerDockState(Z)V
    .locals 3
    .param p1, "idleState"    # Z

    .line 3251
    if-eqz p1, :cond_0

    .line 3252
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOCK_IDLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "dockIntent":Landroid/content/Intent;
    goto :goto_0

    .line 3254
    .end local v0    # "dockIntent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOCK_ACTIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3256
    .restart local v0    # "dockIntent":Landroid/content/Intent;
    :goto_0
    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3257
    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3258
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3259
    return-void
.end method

.method updateUidState(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .line 1227
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1228
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 1232
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    const/16 v2, 0x28

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 1240
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1233
    :cond_0
    const/4 v1, 0x5

    if-gt p2, v1, :cond_1

    .line 1234
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    const/16 v2, 0x23

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 1235
    :cond_1
    const/4 v1, 0x6

    if-gt p2, v1, :cond_2

    .line 1236
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    const/16 v2, 0x1e

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 1238
    :cond_2
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1240
    :goto_0
    monitor-exit v0

    .line 1241
    return-void

    .line 1240
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
