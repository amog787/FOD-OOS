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
        Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;,
        Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;,
        Lcom/android/server/job/JobSchedulerService$JobHandler;,
        Lcom/android/server/job/JobSchedulerService$Constants;,
        Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;,
        Lcom/android/server/job/JobSchedulerService$MaxJobCounts;,
        Lcom/android/server/job/JobSchedulerService$ConstantsObserver;,
        Lcom/android/server/job/JobSchedulerService$MySimpleClock;
    }
.end annotation


# static fields
.field public static final ACTIVE_INDEX:I = 0x0

.field public static final DEBUG:Z

.field public static final DEBUG_STANDBY:Z

.field private static final ENFORCE_MAX_JOBS:Z = true

.field public static final FREQUENT_INDEX:I = 0x2

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

.field private static final QUOTA_CATEGORIZER:Lcom/android/server/utils/quota/Categorizer;

.field private static final QUOTA_TRACKER_CATEGORY_SCHEDULE_LOGGED:Lcom/android/server/utils/quota/Category;

.field private static final QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

.field private static final QUOTA_TRACKER_SCHEDULE_LOGGED:Ljava/lang/String; = ".schedulePersisted out-of-quota logged"

.field private static final QUOTA_TRACKER_SCHEDULE_PERSISTED_TAG:Ljava/lang/String; = ".schedulePersisted()"

.field public static final RARE_INDEX:I = 0x3

.field public static final RESTRICTED_INDEX:I = 0x5

.field public static final TAG:Ljava/lang/String; = "JobScheduler"

.field public static final WORKING_INDEX:I = 0x1

.field public static sElapsedRealtimeClock:Ljava/time/Clock;

.field private static final sPendingJobComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static sSystemClock:Ljava/time/Clock;

.field public static sUptimeMillisClock:Ljava/time/Clock;


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

.field private final mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

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

.field final mDebuggableApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

.field final mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

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

.field private final mJobRestrictions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/restrictions/JobRestriction;",
            ">;"
        }
    .end annotation
.end field

.field final mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

.field private final mJobTimeUpdater:Ljava/lang/Runnable;

.field final mJobs:Lcom/android/server/job/JobStore;

.field mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

.field mLocalPM:Landroid/content/pm/PackageManagerInternal;

.field final mLock:Ljava/lang/Object;

.field private final mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

.field final mPendingJobs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mQuotaController:Lcom/android/server/job/controllers/QuotaController;

.field private final mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

.field private final mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

.field mReadyToRock:Z

.field mReportedActive:Z

.field private final mRestrictiveControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/RestrictingController;",
            ">;"
        }
    .end annotation
.end field

.field final mStandbyTracker:Lcom/android/server/job/JobSchedulerService$StandbyTracker;

.field mStartedUsers:[I

.field private final mStorageController:Lcom/android/server/job/controllers/StorageController;

.field private final mSystemGalleryPackage:Ljava/lang/String;

.field private final mTimeSetReceiver:Landroid/content/BroadcastReceiver;

.field private final mUidObserver:Landroid/app/IUidObserver;

.field final mUidPriorityOverride:Landroid/util/SparseIntArray;

.field final mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 150
    const-string v0, "JobScheduler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 151
    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    .line 161
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v0

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 195
    new-instance v0, Lcom/android/server/job/JobSchedulerService$1;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v0, v1}, Lcom/android/server/job/JobSchedulerService$1;-><init>(Ljava/time/ZoneId;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    .line 203
    new-instance v0, Lcom/android/server/job/JobSchedulerService$2;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v0, v1}, Lcom/android/server/job/JobSchedulerService$2;-><init>(Ljava/time/ZoneId;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 264
    new-instance v0, Lcom/android/server/utils/quota/Category;

    const-string v1, ".schedulePersisted()"

    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    .line 266
    new-instance v0, Lcom/android/server/utils/quota/Category;

    const-string v1, ".schedulePersisted out-of-quota logged"

    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_LOGGED:Lcom/android/server/utils/quota/Category;

    .line 268
    sget-object v0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$vjPMLQ-SEWWeqjJkyucZKbr772U;->INSTANCE:Lcom/android/server/job/-$$Lambda$JobSchedulerService$vjPMLQ-SEWWeqjJkyucZKbr772U;

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_CATEGORIZER:Lcom/android/server/utils/quota/Categorizer;

    .line 791
    sget-object v0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$SyDoBnH1urvVqu31d-xC2ZPsCBo;->INSTANCE:Lcom/android/server/job/-$$Lambda$JobSchedulerService$SyDoBnH1urvVqu31d-xC2ZPsCBo;

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sPendingJobComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 1409
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 211
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 217
    new-instance v0, Lcom/android/server/job/JobPackageTracker;

    invoke-direct {v0}, Lcom/android/server/job/JobPackageTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    .line 281
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 312
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    .line 317
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    .line 322
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    .line 816
    new-instance v0, Lcom/android/server/job/JobSchedulerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$3;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 943
    new-instance v0, Lcom/android/server/job/JobSchedulerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$4;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidObserver:Landroid/app/IUidObserver;

    .line 1014
    new-instance v0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$AauD0it1BcgWldVm_V1m2Jo7_Zc;

    invoke-direct {v0, p0}, Lcom/android/server/job/-$$Lambda$JobSchedulerService$AauD0it1BcgWldVm_V1m2Jo7_Zc;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mIsUidActivePredicate:Ljava/util/function/Predicate;

    .line 1484
    new-instance v0, Lcom/android/server/job/JobSchedulerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$5;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mTimeSetReceiver:Landroid/content/BroadcastReceiver;

    .line 1504
    new-instance v0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$oCsDzEV0rgDVnZl-2bTNBQfZW9I;

    invoke-direct {v0, p0}, Lcom/android/server/job/-$$Lambda$JobSchedulerService$oCsDzEV0rgDVnZl-2bTNBQfZW9I;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobTimeUpdater:Ljava/lang/Runnable;

    .line 2117
    new-instance v0, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    .line 2207
    new-instance v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    .line 1411
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLocalPM:Landroid/content/pm/PackageManagerInternal;

    .line 1412
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 1413
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 1412
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 1415
    new-instance v0, Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;-><init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 1416
    new-instance v0, Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-direct {v0}, Lcom/android/server/job/JobSchedulerService$Constants;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 1417
    new-instance v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;-><init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    .line 1418
    new-instance v0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    .line 1420
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobConcurrencyManager;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 1423
    new-instance v0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$StandbyTracker;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStandbyTracker:Lcom/android/server/job/JobSchedulerService$StandbyTracker;

    .line 1424
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 1425
    new-instance v0, Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_CATEGORIZER:Lcom/android/server/utils/quota/Categorizer;

    invoke-direct {v0, p1, v1}, Lcom/android/server/utils/quota/CountQuotaTracker;-><init>(Landroid/content/Context;Lcom/android/server/utils/quota/Categorizer;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 1426
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_COUNT:I

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v3, v3, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_WINDOW_MS:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    .line 1430
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_LOGGED:Lcom/android/server/utils/quota/Category;

    const/4 v2, 0x1

    const-wide/32 v3, 0xea60

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    .line 1432
    const-class v0, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    .line 1433
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStandbyTracker:Lcom/android/server/job/JobSchedulerService$StandbyTracker;

    invoke-interface {v0, v1}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 1436
    const-class v0, Lcom/android/server/job/JobSchedulerInternal;

    new-instance v1, Lcom/android/server/job/JobSchedulerService$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/job/JobSchedulerService$LocalService;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobSchedulerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1439
    invoke-static {p0}, Lcom/android/server/job/JobStore;->initAndGet(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/JobStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 1442
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 1443
    new-instance v0, Lcom/android/server/job/controllers/ConnectivityController;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/ConnectivityController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 1444
    .local v0, "connectivityController":Lcom/android/server/job/controllers/ConnectivityController;
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1445
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    new-instance v2, Lcom/android/server/job/controllers/TimeController;

    invoke-direct {v2, p0}, Lcom/android/server/job/controllers/TimeController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1446
    new-instance v1, Lcom/android/server/job/controllers/IdleController;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/IdleController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 1447
    .local v1, "idleController":Lcom/android/server/job/controllers/IdleController;
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1448
    new-instance v2, Lcom/android/server/job/controllers/BatteryController;

    invoke-direct {v2, p0}, Lcom/android/server/job/controllers/BatteryController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    .line 1449
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1450
    new-instance v2, Lcom/android/server/job/controllers/StorageController;

    invoke-direct {v2, p0}, Lcom/android/server/job/controllers/StorageController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    .line 1451
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1452
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    new-instance v3, Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-direct {v3, p0}, Lcom/android/server/job/controllers/BackgroundJobsController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1453
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    new-instance v3, Lcom/android/server/job/controllers/ContentObserverController;

    invoke-direct {v3, p0}, Lcom/android/server/job/controllers/ContentObserverController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1454
    new-instance v2, Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-direct {v2, p0}, Lcom/android/server/job/controllers/DeviceIdleJobsController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 1455
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1456
    new-instance v2, Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {v2, p0}, Lcom/android/server/job/controllers/QuotaController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    .line 1457
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1459
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    .line 1460
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1461
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1462
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1465
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    .line 1466
    new-instance v3, Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    invoke-direct {v3, p0}, Lcom/android/server/job/restrictions/ThermalStatusRestriction;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1468
    nop

    .line 1469
    const v2, 0x1040027

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1468
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mSystemGalleryPackage:Ljava/lang/String;

    .line 1473
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v2}, Lcom/android/server/job/JobStore;->jobTimesInflatedValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1474
    const-string v2, "JobScheduler"

    const-string v3, "!!! RTC not yet good; tracking time updates for job scheduling"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mTimeSetReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.TIME_SET"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1482
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/job/JobSchedulerService;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/JobSchedulerService;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 147
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/job/JobSchedulerService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/JobSchedulerService;

    .line 147
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobTimeUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Comparator;
    .locals 1

    .line 147
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sPendingJobComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/JobSchedulerService;

    .line 147
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->queueReadyJobsForExecutionLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/JobSchedulerService;

    .line 147
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->maybeQueueReadyJobsForExecutionLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/JobSchedulerService;
    .param p1, "x1"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "x2"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "x3"    # Ljava/lang/String;

    .line 147
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/JobSchedulerService;

    .line 147
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/job/JobSchedulerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/JobSchedulerService;

    .line 147
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mSystemGalleryPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/JobSchedulerService;
    .param p1, "x1"    # Lcom/android/server/job/controllers/JobStatus;

    .line 147
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0
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

    .line 805
    .local p0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "newItem":Ljava/lang/Object;, "TT;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    invoke-static {p0, p1, p2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 806
    .local v0, "where":I
    if-gez v0, :cond_0

    .line 807
    not-int v0, v0

    .line 809
    :cond_0
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 810
    return-void
.end method

.method private adjustJobPriority(ILcom/android/server/job/controllers/JobStatus;)I
    .locals 2
    .param p1, "curPriority"    # I
    .param p2, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2407
    const/16 v0, 0x28

    if-ge p1, v0, :cond_1

    .line 2408
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v0, p2}, Lcom/android/server/job/JobPackageTracker;->getLoadFactor(Lcom/android/server/job/controllers/JobStatus;)F

    move-result v0

    .line 2409
    .local v0, "factor":F
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 2410
    add-int/lit8 p1, p1, -0x50

    goto :goto_0

    .line 2411
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    .line 2412
    add-int/lit8 p1, p1, -0x28

    .line 2415
    .end local v0    # "factor":F
    :cond_1
    :goto_0
    return p1
.end method

.method private areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 3
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2221
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    .line 2222
    .local v0, "sourceStarted":Z
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2223
    return v0

    .line 2225
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

    .line 1276
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

    .line 1277
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->unprepareLocked()V

    .line 1278
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/job/JobSchedulerService;->stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z

    .line 1280
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1281
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1284
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/job/JobSchedulerService;->stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;ILjava/lang/String;)Z

    .line 1286
    if-eqz p2, :cond_3

    .line 1287
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

    .line 1288
    :cond_2
    invoke-direct {p0, p2, p1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 1290
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    .line 1291
    return-void
.end method

.method private cancelJobsForNonExistentUsers()V
    .locals 4

    .line 1202
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    .line 1203
    .local v0, "umi":Landroid/os/UserManagerInternal;
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1204
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/job/JobStore;->removeJobsOfNonUsers([I)V

    .line 1205
    monitor-exit v1

    .line 1206
    return-void

    .line 1205
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;
    .locals 4
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2023
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    .line 2025
    return-object v1

    .line 2027
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2028
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/restrictions/JobRestriction;

    .line 2029
    .local v2, "restriction":Lcom/android/server/job/restrictions/JobRestriction;
    invoke-virtual {v2, p1}, Lcom/android/server/job/restrictions/JobRestriction;->isJobRestricted(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2030
    return-object v2

    .line 2027
    .end local v2    # "restriction":Lcom/android/server/job/restrictions/JobRestriction;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2033
    .end local v0    # "i":I
    :cond_2
    return-object v1
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 3163
    const-string v0, "Job Scheduler (jobscheduler) dump options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3164
    const-string v0, "  [-h] [package] ..."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3165
    const-string v0, "    -h: print this help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3166
    const-string v0, "  [package] is an optional package name to limit the output to."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3167
    return-void
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 938
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 939
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 940
    .local v1, "pkg":Ljava/lang/String;
    :goto_0
    return-object v1
.end method

.method private isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 5
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2319
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 2320
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 2321
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v3

    .line 2319
    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2324
    .local v0, "service":Landroid/content/pm/ServiceInfo;
    nop

    .line 2326
    const-string v1, "JobScheduler"

    if-nez v0, :cond_1

    .line 2327
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 2328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isComponentUsable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " component not present"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 2335
    :cond_1
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/app/ActivityManagerInternal;->isAppBad(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    .line 2336
    .local v2, "appIsBad":Z
    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 2337
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

    .line 2339
    :cond_2
    xor-int/lit8 v1, v2, 0x1

    return v1

    .line 2322
    .end local v0    # "service":Landroid/content/pm/ServiceInfo;
    .end local v2    # "appIsBad":Z
    :catch_0
    move-exception v0

    .line 2323
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 5
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1672
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1673
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    .line 1674
    .local v1, "serviceContext":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    .line 1675
    .local v2, "running":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/job/controllers/JobStatus;->matches(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1676
    const/4 v3, 0x1

    return v3

    .line 1672
    .end local v1    # "serviceContext":Lcom/android/server/job/JobServiceContext;
    .end local v2    # "running":Lcom/android/server/job/controllers/JobStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1679
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isUidActive(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 1011
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

.method static synthetic lambda$dumpInternal$4(ILcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p0, "filterUidFinal"    # I
    .param p1, "js"    # Lcom/android/server/job/controllers/JobStatus;

    .line 3193
    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eq v0, p0, :cond_1

    .line 3194
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

    .line 3193
    :goto_1
    return v0
.end method

.method static synthetic lambda$dumpInternalProto$5(ILcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p0, "filterUidFinal"    # I
    .param p1, "js"    # Lcom/android/server/job/controllers/JobStatus;

    .line 3383
    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eq v0, p0, :cond_1

    .line 3384
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

    .line 3383
    :goto_1
    return v0
.end method

.method static synthetic lambda$static$0(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/Category;
    .locals 1
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 269
    const-string v0, ".schedulePersisted()"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    return-object v0

    .line 272
    :cond_0
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_LOGGED:Lcom/android/server/utils/quota/Category;

    return-object v0
.end method

.method static synthetic lambda$static$1(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)I
    .locals 4
    .param p0, "o1"    # Lcom/android/server/job/controllers/JobStatus;
    .param p1, "o2"    # Lcom/android/server/job/controllers/JobStatus;

    .line 794
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    if-eq v0, v1, :cond_0

    .line 796
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    sub-int/2addr v0, v1

    return v0

    .line 798
    :cond_0
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    iget-wide v2, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 799
    const/4 v0, -0x1

    return v0

    .line 801
    :cond_1
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    iget-wide v2, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeQueueReadyJobsForExecutionLocked()V
    .locals 2

    .line 2210
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "JobScheduler"

    const-string v1, "Maybe queuing ready jobs..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService;->noteJobsNonpending(Ljava/util/List;)V

    .line 2213
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2214
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->stopNonReadyActiveJobsLocked()V

    .line 2215
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 2216
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->postProcess()V

    .line 2217
    return-void
.end method

.method private queueReadyJobsForExecutionLocked()V
    .locals 4

    .line 2073
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v1, "JobScheduler"

    if-eqz v0, :cond_0

    .line 2074
    const-string/jumbo v0, "queuing all ready jobs for execution:"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService;->noteJobsNonpending(Ljava/util/List;)V

    .line 2077
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2078
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->stopNonReadyActiveJobsLocked()V

    .line 2079
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 2080
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;->postProcess()V

    .line 2082
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 2083
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2084
    .local v0, "queuedJobs":I
    if-nez v0, :cond_1

    .line 2085
    const-string v2, "No jobs pending."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2087
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " jobs queued."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
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

    .line 3171
    .local p0, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    new-instance v0, Lcom/android/server/job/JobSchedulerService$6;

    invoke-direct {v0}, Lcom/android/server/job/JobSchedulerService$6;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3184
    return-void
.end method

.method public static standbyBucketForPackage(Ljava/lang/String;IJ)I
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "elapsedNow"    # J

    .line 2580
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 2582
    .local v0, "usageStats":Landroid/app/usage/UsageStatsManagerInternal;
    if-eqz v0, :cond_0

    .line 2583
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v1

    goto :goto_0

    .line 2584
    :cond_0
    const/4 v1, 0x0

    :goto_0
    nop

    .line 2586
    .local v1, "bucket":I
    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketToBucketIndex(I)I

    move-result v1

    .line 2588
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v2, :cond_1

    .line 2589
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

    .line 2591
    :cond_1
    return v1
.end method

.method public static standbyBucketToBucketIndex(I)I
    .locals 1
    .param p0, "bucket"    # I

    .line 2563
    const/16 v0, 0x32

    if-ne p0, v0, :cond_0

    .line 2564
    const/4 v0, 0x4

    return v0

    .line 2565
    :cond_0
    const/16 v0, 0x28

    if-le p0, v0, :cond_1

    .line 2566
    const/4 v0, 0x5

    return v0

    .line 2567
    :cond_1
    const/16 v0, 0x1e

    if-le p0, v0, :cond_2

    .line 2568
    const/4 v0, 0x3

    return v0

    .line 2569
    :cond_2
    const/16 v0, 0x14

    if-le p0, v0, :cond_3

    .line 2570
    const/4 v0, 0x2

    return v0

    .line 2571
    :cond_3
    const/16 v0, 0xa

    if-le p0, v0, :cond_4

    .line 2572
    const/4 v0, 0x1

    return v0

    .line 2574
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 5
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1618
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPreparedLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not yet prepared when started tracking: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    :cond_0
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 1622
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 1623
    .local v0, "update":Z
    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-eqz v1, :cond_2

    .line 1624
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1625
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    .line 1626
    .local v2, "controller":Lcom/android/server/job/controllers/StateController;
    if-eqz v0, :cond_1

    .line 1627
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/job/controllers/StateController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V

    .line 1629
    :cond_1
    invoke-virtual {v2, p1, p2}, Lcom/android/server/job/controllers/StateController;->maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 1624
    .end local v2    # "controller":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1632
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;ILjava/lang/String;)Z
    .locals 5
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "reason"    # I
    .param p3, "debugReason"    # Ljava/lang/String;

    .line 1655
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1656
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    .line 1657
    .local v1, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    .line 1658
    .local v2, "executing":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/job/controllers/JobStatus;->matches(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1659
    invoke-virtual {v1, p2, p3}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(ILjava/lang/String;)V

    .line 1660
    const/4 v3, 0x1

    return v3

    .line 1655
    .end local v1    # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v2    # "executing":Lcom/android/server/job/controllers/JobStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1663
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private stopNonReadyActiveJobsLocked()V
    .locals 7

    .line 2037
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 2038
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    .line 2039
    .local v1, "serviceContext":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    .line 2040
    .local v2, "running":Lcom/android/server/job/controllers/JobStatus;
    if-nez v2, :cond_0

    .line 2041
    goto :goto_1

    .line 2043
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2047
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 2048
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->areDynamicConstraintsSatisfied()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2049
    const/4 v3, 0x6

    const-string v4, "cancelled due to restricted bucket"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(ILjava/lang/String;)V

    goto :goto_1

    .line 2053
    :cond_1
    const/4 v3, 0x1

    const-string v4, "cancelled due to unsatisfied constraints"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(ILjava/lang/String;)V

    goto :goto_1

    .line 2058
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v3

    .line 2059
    .local v3, "restriction":Lcom/android/server/job/restrictions/JobRestriction;
    if-eqz v3, :cond_3

    .line 2060
    invoke-virtual {v3}, Lcom/android/server/job/restrictions/JobRestriction;->getReason()I

    move-result v4

    .line 2061
    .local v4, "reason":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "restricted due to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2062
    invoke-static {v4}, Landroid/app/job/JobParameters;->getReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2061
    invoke-virtual {v1, v4, v5}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(ILjava/lang/String;)V

    .line 2037
    .end local v1    # "serviceContext":Lcom/android/server/job/JobServiceContext;
    .end local v2    # "running":Lcom/android/server/job/controllers/JobStatus;
    .end local v3    # "restriction":Lcom/android/server/job/restrictions/JobRestriction;
    .end local v4    # "reason":I
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2066
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method private stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z
    .locals 4
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "removeFromPersisted"    # Z

    .line 1641
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1644
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/job/JobStore;->remove(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v0

    .line 1645
    .local v0, "removed":Z
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-eqz v1, :cond_0

    .line 1646
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1647
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    .line 1648
    .local v2, "controller":Lcom/android/server/job/controllers/StateController;
    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/server/job/controllers/StateController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V

    .line 1646
    .end local v2    # "controller":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1651
    .end local v1    # "i":I
    :cond_0
    return v0
.end method


# virtual methods
.method public areComponentsInPlaceLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 6
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2358
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore;->containsJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 2359
    .local v0, "jobExists":Z
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    .line 2360
    .local v1, "userStarted":Z
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 2362
    .local v2, "backingUp":Z
    :goto_0
    sget-boolean v4, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 2363
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "areComponentsInPlaceLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " exists="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " userStarted="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " backingUp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JobScheduler"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    :cond_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eqz v2, :cond_2

    goto :goto_1

    .line 2374
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2375
    return v3

    .line 2382
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    return v3

    .line 2371
    :cond_4
    :goto_1
    return v3
.end method

.method public cancelJob(III)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "jobId"    # I
    .param p3, "callingUid"    # I

    .line 1258
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1259
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    .line 1260
    .local v1, "toCancel":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v1, :cond_0

    .line 1261
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

    .line 1265
    :cond_0
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 1266
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

    .line 1209
    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1210
    const-string v0, "JobScheduler"

    const-string v1, "Can\'t cancel all jobs for system package"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    return-void

    .line 1213
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1214
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p2}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object v1

    .line 1215
    .local v1, "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1216
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 1217
    .local v3, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1218
    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, p3}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V

    .line 1215
    .end local v3    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1221
    .end local v1    # "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v2    # "i":I
    :cond_2
    monitor-exit v0

    .line 1222
    return-void

    .line 1221
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

    .line 1232
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 1233
    const-string v0, "JobScheduler"

    const-string v1, "Can\'t cancel all jobs for system uid"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    const/4 v0, 0x0

    return v0

    .line 1237
    :cond_0
    const/4 v0, 0x0

    .line 1238
    .local v0, "jobsCanceled":Z
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1239
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v2, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object v2

    .line 1240
    .local v2, "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1241
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 1242
    .local v4, "toRemove":Lcom/android/server/job/controllers/JobStatus;
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, p2}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V

    .line 1243
    const/4 v0, 0x1

    .line 1240
    .end local v4    # "toRemove":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1245
    .end local v2    # "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v3    # "i":I
    :cond_1
    monitor-exit v1

    .line 1246
    return v0

    .line 1245
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method cancelJobsForUser(I)V
    .locals 6
    .param p1, "userHandle"    # I

    .line 1192
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1193
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobStore;->getJobsByUser(I)Ljava/util/List;

    move-result-object v1

    .line 1194
    .local v1, "jobsForUser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1195
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 1196
    .local v3, "toRemove":Lcom/android/server/job/controllers/JobStatus;
    const/4 v4, 0x0

    const-string/jumbo v5, "user removed"

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V

    .line 1194
    .end local v3    # "toRemove":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1198
    .end local v1    # "jobsForUser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 1199
    return-void

    .line 1198
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dumpInternal(Lcom/android/internal/util/IndentingPrintWriter;I)V
    .locals 22
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "filterUid"    # I

    .line 3187
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    .line 3188
    .local v9, "filterUidFinal":I
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v10

    .line 3189
    .local v10, "now":J
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v12

    .line 3190
    .local v12, "nowElapsed":J
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v14

    .line 3192
    .local v14, "nowUptime":J
    new-instance v6, Lcom/android/server/job/-$$Lambda$JobSchedulerService$VVCk0M0TpfxhVRrY-28dggbYJQc;

    .local v6, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-direct {v6, v9}, Lcom/android/server/job/-$$Lambda$JobSchedulerService$VVCk0M0TpfxhVRrY-28dggbYJQc;-><init>(I)V

    .line 3196
    iget-object v7, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3197
    :try_start_0
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-virtual {v0, v8}, Lcom/android/server/job/JobSchedulerService$Constants;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3198
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

    .line 3199
    .local v2, "controller":Lcom/android/server/job/controllers/StateController;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3200
    invoke-virtual {v2, v8}, Lcom/android/server/job/controllers/StateController;->dumpConstants(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3201
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3202
    nop

    .end local v2    # "controller":Lcom/android/server/job/controllers/StateController;
    goto :goto_0

    .line 3372
    :catchall_0
    move-exception v0

    move-object/from16 v17, v6

    move/from16 v16, v9

    move-wide/from16 v20, v10

    move/from16 v9, p2

    move-object v11, v7

    goto/16 :goto_12

    .line 3203
    :cond_0
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3205
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    const/16 v16, 0x1

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 3206
    :try_start_3
    const-string v2, "    "

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3207
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/restrictions/JobRestriction;

    invoke-virtual {v2, v8}, Lcom/android/server/job/restrictions/JobRestriction;->dumpConstants(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3208
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3205
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 3210
    .end local v0    # "i":I
    :cond_1
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3212
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-virtual {v0, v8}, Lcom/android/server/utils/quota/CountQuotaTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3213
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3215
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

    .line 3216
    const-string v0, "Registered "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3217
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->size()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3218
    const-string v0, " jobs:"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3219
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->size()I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-lez v0, :cond_c

    .line 3220
    :try_start_5
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v0, v0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore$JobSet;->getAllJobs()Ljava/util/List;

    move-result-object v0

    .line 3221
    .local v0, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->sortJobs(Ljava/util/List;)V

    .line 3222
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    move-object v5, v2

    .line 3223
    .local v5, "job":Lcom/android/server/job/controllers/JobStatus;
    const-string v2, "  JOB #"

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    const-string v2, ": "

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3224
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->toShortStringExceptUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3227
    invoke-interface {v6, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3228
    goto :goto_2

    .line 3231
    :cond_2
    const-string v4, "    "
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/16 v18, 0x1

    move-object v2, v5

    move-object/from16 v3, p1

    move-object/from16 v19, v0

    move-object v0, v5

    .end local v5    # "job":Lcom/android/server/job/controllers/JobStatus;
    .local v0, "job":Lcom/android/server/job/controllers/JobStatus;
    .local v19, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    move/from16 v5, v18

    move-wide/from16 v20, v10

    move-object v10, v6

    move-object v11, v7

    .end local v6    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v10, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v20, "now":J
    move-wide v6, v12

    :try_start_6
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/controllers/JobStatus;->dump(Ljava/io/PrintWriter;Ljava/lang/String;ZJ)V

    .line 3234
    const-string v2, "    Restricted due to:"

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3235
    invoke-direct {v1, v0}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v2

    if-eqz v2, :cond_3

    move/from16 v2, v16

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 3236
    .local v2, "isRestricted":Z
    :goto_3
    if-eqz v2, :cond_6

    .line 3237
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_4
    if-ltz v4, :cond_5

    .line 3238
    iget-object v5, v1, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/restrictions/JobRestriction;

    .line 3239
    .local v5, "restriction":Lcom/android/server/job/restrictions/JobRestriction;
    invoke-virtual {v5, v0}, Lcom/android/server/job/restrictions/JobRestriction;->isJobRestricted(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3240
    invoke-virtual {v5}, Lcom/android/server/job/restrictions/JobRestriction;->getReason()I

    move-result v6

    .line 3241
    .local v6, "reason":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroid/app/job/JobParameters;->getReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3237
    .end local v5    # "restriction":Lcom/android/server/job/restrictions/JobRestriction;
    .end local v6    # "reason":I
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .end local v4    # "i":I
    :cond_5
    goto :goto_5

    .line 3245
    :cond_6
    const-string v3, " none"

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3247
    :goto_5
    const-string v3, "."

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3249
    const-string v3, "    Ready: "

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3250
    invoke-virtual {v1, v0}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3251
    const-string v3, " (job="

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3252
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v3

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3253
    const-string v3, " user="

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3254
    invoke-direct {v1, v0}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3255
    const-string v3, " !restricted="

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3256
    if-nez v2, :cond_7

    move/from16 v3, v16

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    :goto_6
    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3257
    const-string v3, " !pending="

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3258
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move/from16 v3, v16

    goto :goto_7

    :cond_8
    const/4 v3, 0x0

    :goto_7
    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3259
    const-string v3, " !active="

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3260
    invoke-direct {v1, v0}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    if-nez v3, :cond_9

    move/from16 v3, v16

    goto :goto_8

    :cond_9
    const/4 v3, 0x0

    :goto_8
    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3261
    const-string v3, " !backingup="

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3262
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_a

    move/from16 v3, v16

    goto :goto_9

    :cond_a
    const/4 v3, 0x0

    :goto_9
    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3263
    const-string v3, " comp="

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3264
    invoke-direct {v1, v0}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3265
    const-string v3, ")"

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 3266
    .end local v0    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "isRestricted":Z
    move-object v6, v10

    move-object v7, v11

    move-object/from16 v0, v19

    move-wide/from16 v10, v20

    goto/16 :goto_2

    .line 3222
    .end local v19    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v20    # "now":J
    .local v0, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v6, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v10, "now":J
    :cond_b
    move-object/from16 v19, v0

    move-wide/from16 v20, v10

    move-object v10, v6

    move-object v11, v7

    .line 3267
    .end local v0    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v6    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v10, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v20    # "now":J
    goto :goto_a

    .line 3372
    .end local v20    # "now":J
    .restart local v6    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v10, "now":J
    :catchall_1
    move-exception v0

    move-wide/from16 v20, v10

    move-object v11, v7

    move-object/from16 v17, v6

    move/from16 v16, v9

    move/from16 v9, p2

    .end local v6    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v10, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v20    # "now":J
    goto/16 :goto_12

    .line 3268
    .end local v20    # "now":J
    .restart local v6    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v10, "now":J
    :cond_c
    move-wide/from16 v20, v10

    move-object v10, v6

    move-object v11, v7

    .end local v6    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v10, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v20    # "now":J
    :try_start_7
    const-string v0, "  None."

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3270
    :goto_a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-ge v0, v2, :cond_d

    .line 3271
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3272
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

    .line 3273
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3274
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v2, v8, v10}, Lcom/android/server/job/controllers/StateController;->dumpControllerStateLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V

    .line 3275
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 3270
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 3372
    .end local v0    # "i":I
    :catchall_2
    move-exception v0

    move/from16 v16, v9

    move-object/from16 v17, v10

    move/from16 v9, p2

    goto/16 :goto_12

    .line 3277
    :cond_d
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3278
    const-string v0, "Uid priority overrides:"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3279
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_c
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    const/4 v6, -0x1

    if-ge v0, v2, :cond_10

    .line 3280
    :try_start_a
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 3281
    .local v2, "uid":I
    if-eq v9, v6, :cond_e

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v9, v3, :cond_f

    .line 3282
    :cond_e
    const-string v3, "  "

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3283
    const-string v3, ": "

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 3279
    .end local v2    # "uid":I
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 3286
    .end local v0    # "i":I
    :cond_10
    :try_start_b
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-lez v0, :cond_15

    .line 3287
    :try_start_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3288
    const-string v0, "Backing up uids:"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3289
    const/4 v0, 0x1

    .line 3290
    .local v0, "first":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_14

    .line 3291
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 3292
    .local v3, "uid":I
    if-eq v9, v6, :cond_11

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-ne v9, v4, :cond_13

    .line 3293
    :cond_11
    if-eqz v0, :cond_12

    .line 3294
    const-string v4, "  "

    invoke-virtual {v8, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3295
    const/4 v0, 0x0

    goto :goto_e

    .line 3297
    :cond_12
    const-string v4, ", "

    invoke-virtual {v8, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3299
    :goto_e
    invoke-static {v3}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3290
    .end local v3    # "uid":I
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 3302
    .end local v2    # "i":I
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 3304
    .end local v0    # "first":Z
    :cond_15
    :try_start_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3305
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    const-string v2, ""

    invoke-virtual {v0, v8, v2, v9}, Lcom/android/server/job/JobPackageTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 3306
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3307
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    const-string v2, ""

    invoke-virtual {v0, v8, v2, v9}, Lcom/android/server/job/JobPackageTracker;->dumpHistory(Ljava/io/PrintWriter;Ljava/lang/String;I)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-eqz v0, :cond_16

    .line 3308
    :try_start_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 3310
    :cond_16
    :try_start_f
    const-string v0, "Pending queue:"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3311
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 3312
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    move-object v7, v2

    .line 3313
    .local v7, "job":Lcom/android/server/job/controllers/JobStatus;
    const-string v2, "  Pending #"

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3314
    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3315
    const-string v4, "    "
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    const/4 v5, 0x0

    move-object v2, v7

    move-object/from16 v3, p1

    move/from16 v16, v9

    move-object/from16 v17, v10

    move v10, v6

    move-object v9, v7

    .end local v7    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v9, "job":Lcom/android/server/job/controllers/JobStatus;
    .local v16, "filterUidFinal":I
    .local v17, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    move-wide v6, v12

    :try_start_10
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/controllers/JobStatus;->dump(Ljava/io/PrintWriter;Ljava/lang/String;ZJ)V

    .line 3316
    invoke-virtual {v1, v9}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    .line 3317
    .local v2, "priority":I
    const-string v3, "    Evaluated priority: "

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3318
    invoke-static {v2}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3320
    const-string v3, "    Tag: "

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3321
    const-string v3, "    Enq: "

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3322
    iget-wide v3, v9, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    sub-long/2addr v3, v14

    invoke-static {v3, v4, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3323
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3311
    .end local v2    # "priority":I
    .end local v9    # "job":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v0, v0, 0x1

    move v6, v10

    move/from16 v9, v16

    move-object/from16 v10, v17

    goto :goto_f

    .end local v16    # "filterUidFinal":I
    .end local v17    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v9, "filterUidFinal":I
    .restart local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_17
    move/from16 v16, v9

    move-object/from16 v17, v10

    move v10, v6

    .line 3325
    .end local v0    # "i":I
    .end local v9    # "filterUidFinal":I
    .end local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v16    # "filterUidFinal":I
    .restart local v17    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3326
    const-string v0, "Active jobs:"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3327
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_10
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1a

    .line 3328
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    move-object v9, v2

    .line 3329
    .local v9, "jsc":Lcom/android/server/job/JobServiceContext;
    const-string v2, "  Slot #"

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3330
    invoke-virtual {v9}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    move-object v6, v2

    .line 3331
    .local v6, "job":Lcom/android/server/job/controllers/JobStatus;
    if-nez v6, :cond_19

    .line 3332
    iget-object v2, v9, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    if-eqz v2, :cond_18

    .line 3333
    const-string v2, "inactive since "

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3334
    iget-wide v2, v9, Lcom/android/server/job/JobServiceContext;->mStoppedTime:J

    invoke-static {v2, v3, v12, v13, v8}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3335
    const-string v2, ", stopped because: "

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3336
    iget-object v2, v9, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_11

    .line 3338
    :cond_18
    const-string v2, "inactive"

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3340
    goto :goto_11

    .line 3342
    :cond_19
    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3343
    const-string v2, "    Running for: "

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3344
    invoke-virtual {v9}, Lcom/android/server/job/JobServiceContext;->getExecutionStartTimeElapsed()J

    move-result-wide v2

    sub-long v2, v12, v2

    invoke-static {v2, v3, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3345
    const-string v2, ", timeout at: "

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3346
    invoke-virtual {v9}, Lcom/android/server/job/JobServiceContext;->getTimeoutElapsed()J

    move-result-wide v2

    sub-long/2addr v2, v12

    invoke-static {v2, v3, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3347
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3348
    const-string v4, "    "

    const/4 v5, 0x0

    move-object v2, v6

    move-object/from16 v3, p1

    move-object v10, v6

    .end local v6    # "job":Lcom/android/server/job/controllers/JobStatus;
    .local v10, "job":Lcom/android/server/job/controllers/JobStatus;
    move-wide v6, v12

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/controllers/JobStatus;->dump(Ljava/io/PrintWriter;Ljava/lang/String;ZJ)V

    .line 3349
    invoke-virtual {v9}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    .line 3350
    .restart local v2    # "priority":I
    const-string v3, "    Evaluated priority: "

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3351
    invoke-static {v2}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3353
    const-string v3, "    Active at "

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3354
    iget-wide v3, v10, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    sub-long/2addr v3, v14

    invoke-static {v3, v4, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3355
    const-string v3, ", pending for "

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3356
    iget-wide v3, v10, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    iget-wide v5, v10, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3357
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 3327
    .end local v2    # "priority":I
    .end local v9    # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v10    # "job":Lcom/android/server/job/controllers/JobStatus;
    :goto_11
    add-int/lit8 v0, v0, 0x1

    const/4 v10, -0x1

    goto/16 :goto_10

    .line 3360
    .end local v0    # "i":I
    :cond_1a
    move/from16 v9, p2

    const/4 v0, -0x1

    if-ne v9, v0, :cond_1b

    .line 3361
    :try_start_11
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3362
    const-string/jumbo v0, "mReadyToRock="

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3363
    const-string/jumbo v0, "mReportedActive="

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3365
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3367
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    move-object/from16 v3, p1

    move-wide/from16 v4, v20

    move-wide v6, v12

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/JobConcurrencyManager;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;JJ)V

    .line 3369
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3370
    const-string v0, "PersistStats: "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3371
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3372
    monitor-exit v11
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 3373
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3374
    return-void

    .line 3372
    :catchall_3
    move-exception v0

    move/from16 v9, p2

    goto :goto_12

    .end local v16    # "filterUidFinal":I
    .end local v17    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v9, "filterUidFinal":I
    .local v10, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_4
    move-exception v0

    move/from16 v16, v9

    move-object/from16 v17, v10

    move/from16 v9, p2

    .end local v9    # "filterUidFinal":I
    .end local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v16    # "filterUidFinal":I
    .restart local v17    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    goto :goto_12

    .end local v16    # "filterUidFinal":I
    .end local v17    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v20    # "now":J
    .local v6, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v9    # "filterUidFinal":I
    .local v10, "now":J
    :catchall_5
    move-exception v0

    move-object/from16 v17, v6

    move/from16 v16, v9

    move-wide/from16 v20, v10

    move/from16 v9, p2

    move-object v11, v7

    .end local v6    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v9    # "filterUidFinal":I
    .end local v10    # "now":J
    .restart local v16    # "filterUidFinal":I
    .restart local v17    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v20    # "now":J
    :goto_12
    :try_start_12
    monitor-exit v11
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_12
.end method

.method dumpInternalProto(Ljava/io/FileDescriptor;I)V
    .locals 35
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "filterUid"    # I

    .line 3377
    move-object/from16 v1, p0

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v11, v0

    .line 3378
    .local v11, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    .line 3379
    .local v12, "filterUidFinal":I
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v13

    .line 3380
    .local v13, "now":J
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v15

    .line 3381
    .local v15, "nowElapsed":J
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v17

    .line 3382
    .local v17, "nowUptime":J
    new-instance v10, Lcom/android/server/job/-$$Lambda$JobSchedulerService$eQqdX2w3FwBMn_LMfN2Y0HQCDq4;

    .local v10, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-direct {v10, v12}, Lcom/android/server/job/-$$Lambda$JobSchedulerService$eQqdX2w3FwBMn_LMfN2Y0HQCDq4;-><init>(I)V

    .line 3387
    iget-object v8, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 3388
    const-wide v5, 0x10b00000001L

    :try_start_0
    invoke-virtual {v11, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 3389
    .local v3, "settingsToken":J
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-virtual {v0, v11}, Lcom/android/server/job/JobSchedulerService$Constants;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 3390
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    if-eqz v7, :cond_0

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/StateController;

    .line 3391
    .local v7, "controller":Lcom/android/server/job/controllers/StateController;
    invoke-virtual {v7, v11}, Lcom/android/server/job/controllers/StateController;->dumpConstants(Landroid/util/proto/ProtoOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3392
    .end local v7    # "controller":Lcom/android/server/job/controllers/StateController;
    goto :goto_0

    .line 3534
    .end local v3    # "settingsToken":J
    :catchall_0
    move-exception v0

    move/from16 v24, v12

    move-wide/from16 v29, v13

    move/from16 v12, p2

    move-object v14, v8

    move-object v13, v10

    goto/16 :goto_10

    .line 3393
    .restart local v3    # "settingsToken":J
    :cond_0
    :try_start_2
    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3395
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    const/16 v19, 0x1

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 3396
    :try_start_3
    iget-object v7, v1, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/restrictions/JobRestriction;

    invoke-virtual {v7, v11}, Lcom/android/server/job/restrictions/JobRestriction;->dumpConstants(Landroid/util/proto/ProtoOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3395
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 3399
    .end local v0    # "i":I
    :cond_1
    :try_start_4
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    array-length v7, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    const/16 v20, 0x0

    move/from16 v9, v20

    :goto_2
    if-ge v9, v7, :cond_2

    :try_start_5
    aget v21, v0, v9

    move/from16 v22, v21

    .line 3400
    .local v22, "u":I
    const-wide v5, 0x20500000002L

    move-object/from16 v21, v0

    move/from16 v0, v22

    .end local v22    # "u":I
    .local v0, "u":I
    invoke-virtual {v11, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3399
    .end local v0    # "u":I
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v21

    const-wide v5, 0x10b00000001L

    goto :goto_2

    .line 3403
    :cond_2
    :try_start_6
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-wide v5, 0x10b00000016L

    invoke-virtual {v0, v11, v5, v6}, Lcom/android/server/utils/quota/CountQuotaTracker;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3405
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->size()I

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_a

    if-lez v0, :cond_8

    .line 3406
    :try_start_7
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v0, v0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore$JobSet;->getAllJobs()Ljava/util/List;

    move-result-object v0

    .line 3407
    .local v0, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->sortJobs(Ljava/util/List;)V

    .line 3408
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/JobStatus;

    move-object v9, v7

    .line 3409
    .local v9, "job":Lcom/android/server/job/controllers/JobStatus;
    const-wide v5, 0x20b00000003L

    invoke-virtual {v11, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 3410
    .local v5, "rjToken":J
    move-wide/from16 v25, v5

    const-wide v5, 0x10b00000001L

    .end local v5    # "rjToken":J
    .local v25, "rjToken":J
    invoke-virtual {v9, v11, v5, v6}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3413
    invoke-interface {v10, v9}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v7, :cond_3

    .line 3414
    goto :goto_3

    .line 3417
    :cond_3
    const-wide v22, 0x10b00000002L

    const/4 v7, 0x1

    move-wide/from16 v27, v3

    .end local v3    # "settingsToken":J
    .local v27, "settingsToken":J
    move-object v3, v9

    move-object v4, v11

    move/from16 v24, v12

    move-wide/from16 v29, v13

    const-wide v12, 0x1080000000bL

    .end local v12    # "filterUidFinal":I
    .end local v13    # "now":J
    .local v24, "filterUidFinal":I
    .local v29, "now":J
    move-wide/from16 v5, v22

    move-object v14, v8

    move-object v12, v9

    .end local v9    # "job":Lcom/android/server/job/controllers/JobStatus;
    .local v12, "job":Lcom/android/server/job/controllers/JobStatus;
    move-wide v8, v15

    :try_start_8
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/proto/ProtoOutputStream;JZJ)V

    .line 3419
    const-wide v3, 0x1080000000aL

    .line 3421
    invoke-virtual {v1, v12}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    .line 3419
    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3422
    const-wide v3, 0x10800000003L

    .line 3423
    invoke-virtual {v12}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v5

    .line 3422
    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3424
    const-wide v3, 0x10800000004L

    .line 3425
    invoke-direct {v1, v12}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    .line 3424
    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3426
    nop

    .line 3428
    invoke-direct {v1, v12}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v3

    if-eqz v3, :cond_4

    move/from16 v3, v19

    goto :goto_4

    :cond_4
    move/from16 v3, v20

    .line 3426
    :goto_4
    const-wide v4, 0x1080000000bL

    invoke-virtual {v11, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3429
    const-wide v3, 0x10800000005L

    iget-object v5, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    .line 3430
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 3429
    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3431
    const-wide v3, 0x10800000006L

    .line 3432
    invoke-direct {v1, v12}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    .line 3431
    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3433
    const-wide v3, 0x10800000007L

    iget-object v5, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    .line 3434
    invoke-virtual {v12}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_5

    move/from16 v5, v19

    goto :goto_5

    :cond_5
    move/from16 v5, v20

    .line 3433
    :goto_5
    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3435
    const-wide v3, 0x10800000008L

    .line 3436
    invoke-direct {v1, v12}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    .line 3435
    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3438
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/restrictions/JobRestriction;

    .line 3439
    .local v4, "restriction":Lcom/android/server/job/restrictions/JobRestriction;
    const-wide v5, 0x20b0000000cL

    invoke-virtual {v11, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 3441
    .local v5, "restrictionsToken":J
    const-wide v7, 0x10e00000001L

    .line 3442
    invoke-virtual {v4}, Lcom/android/server/job/restrictions/JobRestriction;->getReason()I

    move-result v9

    .line 3441
    invoke-virtual {v11, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3443
    const-wide v7, 0x10800000002L

    .line 3444
    invoke-virtual {v4, v12}, Lcom/android/server/job/restrictions/JobRestriction;->isJobRestricted(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v9

    .line 3443
    invoke-virtual {v11, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3445
    invoke-virtual {v11, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3446
    .end local v4    # "restriction":Lcom/android/server/job/restrictions/JobRestriction;
    .end local v5    # "restrictionsToken":J
    goto :goto_6

    .line 3448
    :cond_6
    move-wide/from16 v3, v25

    .end local v25    # "rjToken":J
    .local v3, "rjToken":J
    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 3449
    .end local v3    # "rjToken":J
    .end local v12    # "job":Lcom/android/server/job/controllers/JobStatus;
    move-object v8, v14

    move/from16 v12, v24

    move-wide/from16 v3, v27

    move-wide/from16 v13, v29

    goto/16 :goto_3

    .line 3408
    .end local v24    # "filterUidFinal":I
    .end local v27    # "settingsToken":J
    .end local v29    # "now":J
    .local v3, "settingsToken":J
    .local v12, "filterUidFinal":I
    .restart local v13    # "now":J
    :cond_7
    move-wide/from16 v27, v3

    move/from16 v24, v12

    move-wide/from16 v29, v13

    move-object v14, v8

    .end local v3    # "settingsToken":J
    .end local v12    # "filterUidFinal":I
    .end local v13    # "now":J
    .restart local v24    # "filterUidFinal":I
    .restart local v27    # "settingsToken":J
    .restart local v29    # "now":J
    goto :goto_7

    .line 3534
    .end local v0    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v24    # "filterUidFinal":I
    .end local v27    # "settingsToken":J
    .end local v29    # "now":J
    .restart local v12    # "filterUidFinal":I
    .restart local v13    # "now":J
    :catchall_1
    move-exception v0

    move-wide/from16 v29, v13

    move-object v14, v8

    move-object v13, v10

    move/from16 v24, v12

    move/from16 v12, p2

    .end local v12    # "filterUidFinal":I
    .end local v13    # "now":J
    .restart local v24    # "filterUidFinal":I
    .restart local v29    # "now":J
    goto/16 :goto_10

    .line 3405
    .end local v24    # "filterUidFinal":I
    .end local v29    # "now":J
    .restart local v3    # "settingsToken":J
    .restart local v12    # "filterUidFinal":I
    .restart local v13    # "now":J
    :cond_8
    move-wide/from16 v27, v3

    move/from16 v24, v12

    move-wide/from16 v29, v13

    move-object v14, v8

    .line 3451
    .end local v3    # "settingsToken":J
    .end local v12    # "filterUidFinal":I
    .end local v13    # "now":J
    .restart local v24    # "filterUidFinal":I
    .restart local v27    # "settingsToken":J
    .restart local v29    # "now":J
    :goto_7
    :try_start_9
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    if-eqz v3, :cond_9

    :try_start_a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/StateController;

    .line 3452
    .local v3, "controller":Lcom/android/server/job/controllers/StateController;
    const-wide v4, 0x20b00000004L

    invoke-virtual {v3, v11, v4, v5, v10}, Lcom/android/server/job/controllers/StateController;->dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 3454
    .end local v3    # "controller":Lcom/android/server/job/controllers/StateController;
    goto :goto_8

    .line 3534
    .end local v27    # "settingsToken":J
    :catchall_2
    move-exception v0

    move/from16 v12, p2

    move-object v13, v10

    goto/16 :goto_10

    .line 3455
    .restart local v27    # "settingsToken":J
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    :try_start_b
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    const/4 v12, -0x1

    if-ge v0, v3, :cond_c

    .line 3456
    :try_start_c
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 3457
    .local v3, "uid":I
    move/from16 v13, v24

    .end local v24    # "filterUidFinal":I
    .local v13, "filterUidFinal":I
    if-eq v13, v12, :cond_a

    :try_start_d
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-ne v13, v4, :cond_b

    .line 3458
    :cond_a
    const-wide v4, 0x20b00000005L

    invoke-virtual {v11, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 3459
    .local v4, "pToken":J
    const-wide v6, 0x10500000001L

    invoke-virtual {v11, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3460
    const-wide v6, 0x11100000002L

    iget-object v8, v1, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    .line 3461
    invoke-virtual {v8, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    .line 3460
    invoke-virtual {v11, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3462
    invoke-virtual {v11, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 3455
    .end local v3    # "uid":I
    .end local v4    # "pToken":J
    :cond_b
    add-int/lit8 v0, v0, 0x1

    move/from16 v24, v13

    goto :goto_9

    .line 3534
    .end local v0    # "i":I
    .end local v27    # "settingsToken":J
    :catchall_3
    move-exception v0

    move/from16 v12, p2

    move/from16 v24, v13

    move-object v13, v10

    goto/16 :goto_10

    .end local v13    # "filterUidFinal":I
    .restart local v24    # "filterUidFinal":I
    :catchall_4
    move-exception v0

    move/from16 v12, p2

    move-object v13, v10

    .end local v24    # "filterUidFinal":I
    .restart local v13    # "filterUidFinal":I
    goto/16 :goto_10

    .line 3455
    .end local v13    # "filterUidFinal":I
    .restart local v0    # "i":I
    .restart local v24    # "filterUidFinal":I
    .restart local v27    # "settingsToken":J
    :cond_c
    move/from16 v13, v24

    .line 3465
    .end local v0    # "i":I
    .end local v24    # "filterUidFinal":I
    .restart local v13    # "filterUidFinal":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_a
    :try_start_e
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    if-ge v0, v3, :cond_f

    .line 3466
    :try_start_f
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 3467
    .restart local v3    # "uid":I
    if-eq v13, v12, :cond_d

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-ne v13, v4, :cond_e

    .line 3468
    :cond_d
    const-wide v4, 0x20500000006L

    invoke-virtual {v11, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 3465
    .end local v3    # "uid":I
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 3472
    .end local v0    # "i":I
    :cond_f
    :try_start_10
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    const-wide v3, 0x10b00000008L

    invoke-virtual {v0, v11, v3, v4, v13}, Lcom/android/server/job/JobPackageTracker;->dump(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3474
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    const-wide v3, 0x10b00000007L

    invoke-virtual {v0, v11, v3, v4, v13}, Lcom/android/server/job/JobPackageTracker;->dumpHistory(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3477
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    if-eqz v3, :cond_10

    :try_start_11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    move-object v8, v3

    .line 3478
    .local v8, "job":Lcom/android/server/job/controllers/JobStatus;
    const-wide v3, 0x20b00000009L

    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    move-wide v5, v3

    .line 3480
    .local v5, "pjToken":J
    const-wide v3, 0x10b00000001L

    invoke-virtual {v8, v11, v3, v4}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 3481
    const-wide v19, 0x10b00000002L

    const/4 v7, 0x0

    move/from16 v24, v13

    move-wide v12, v3

    .end local v13    # "filterUidFinal":I
    .restart local v24    # "filterUidFinal":I
    move-object v3, v8

    move-object v4, v11

    move-wide v12, v5

    .end local v5    # "pjToken":J
    .local v12, "pjToken":J
    move-wide/from16 v5, v19

    move-object/from16 v19, v0

    move-object v0, v8

    .end local v8    # "job":Lcom/android/server/job/controllers/JobStatus;
    .local v0, "job":Lcom/android/server/job/controllers/JobStatus;
    move-wide v8, v15

    :try_start_12
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/proto/ProtoOutputStream;JZJ)V

    .line 3482
    const-wide v3, 0x11100000003L

    invoke-virtual {v1, v0}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v5

    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3483
    const-wide v3, 0x10300000004L

    iget-wide v5, v0, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    sub-long v5, v17, v5

    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3485
    invoke-virtual {v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 3486
    .end local v0    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v12    # "pjToken":J
    move-object/from16 v0, v19

    move/from16 v13, v24

    const/4 v12, -0x1

    goto :goto_b

    .line 3534
    .end local v24    # "filterUidFinal":I
    .end local v27    # "settingsToken":J
    .restart local v13    # "filterUidFinal":I
    :catchall_5
    move-exception v0

    move/from16 v24, v13

    move/from16 v12, p2

    move-object v13, v10

    .end local v13    # "filterUidFinal":I
    .restart local v24    # "filterUidFinal":I
    goto/16 :goto_10

    .line 3487
    .end local v24    # "filterUidFinal":I
    .restart local v13    # "filterUidFinal":I
    .restart local v27    # "settingsToken":J
    :cond_10
    move/from16 v24, v13

    .end local v13    # "filterUidFinal":I
    .restart local v24    # "filterUidFinal":I
    :try_start_13
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    if-eqz v3, :cond_13

    :try_start_14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobServiceContext;

    move-object v12, v3

    .line 3488
    .local v12, "jsc":Lcom/android/server/job/JobServiceContext;
    const-wide v3, 0x20b0000000aL

    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    move-wide v8, v3

    .line 3489
    .local v8, "ajToken":J
    invoke-virtual {v12}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    move-object v13, v3

    .line 3491
    .local v13, "job":Lcom/android/server/job/controllers/JobStatus;
    if-nez v13, :cond_12

    .line 3492
    const-wide v3, 0x10b00000001L

    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    move-wide v3, v5

    .line 3494
    .local v3, "ijToken":J
    iget-wide v5, v12, Lcom/android/server/job/JobServiceContext;->mStoppedTime:J

    sub-long v5, v15, v5

    move-wide/from16 v22, v8

    const-wide v7, 0x10300000001L

    .end local v8    # "ajToken":J
    .local v22, "ajToken":J
    invoke-virtual {v11, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3496
    iget-object v5, v12, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    if-eqz v5, :cond_11

    .line 3497
    const-wide v5, 0x10900000002L

    iget-object v7, v12, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    invoke-virtual {v11, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3501
    :cond_11
    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3502
    .end local v3    # "ijToken":J
    move-wide/from16 v31, v22

    const-wide v19, 0x10b00000001L

    goto/16 :goto_d

    .line 3503
    .end local v22    # "ajToken":J
    .restart local v8    # "ajToken":J
    :cond_12
    move-wide/from16 v22, v8

    .end local v8    # "ajToken":J
    .restart local v22    # "ajToken":J
    const-wide v3, 0x10b00000002L

    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    move-wide v8, v3

    .line 3505
    .local v8, "rjToken":J
    const-wide v5, 0x10b00000001L

    invoke-virtual {v13, v11, v5, v6}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3507
    const-wide v3, 0x10300000002L

    .line 3508
    invoke-virtual {v12}, Lcom/android/server/job/JobServiceContext;->getExecutionStartTimeElapsed()J

    move-result-wide v19

    sub-long v5, v15, v19

    .line 3507
    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3509
    const-wide v3, 0x10300000003L

    .line 3510
    invoke-virtual {v12}, Lcom/android/server/job/JobServiceContext;->getTimeoutElapsed()J

    move-result-wide v5

    sub-long/2addr v5, v15

    .line 3509
    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3512
    const-wide v5, 0x10b00000004L

    const/4 v7, 0x0

    move-object v3, v13

    move-object v4, v11

    const-wide v19, 0x10b00000001L

    move-wide/from16 v33, v8

    move-wide/from16 v31, v22

    .end local v8    # "rjToken":J
    .end local v22    # "ajToken":J
    .local v31, "ajToken":J
    .local v33, "rjToken":J
    move-wide v8, v15

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/proto/ProtoOutputStream;JZJ)V

    .line 3514
    const-wide v3, 0x11100000005L

    .line 3515
    invoke-virtual {v12}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v5

    .line 3514
    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3517
    const-wide v3, 0x10300000006L

    iget-wide v5, v13, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    sub-long v5, v17, v5

    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3519
    const-wide v3, 0x10300000007L

    iget-wide v5, v13, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    iget-wide v7, v13, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    sub-long/2addr v5, v7

    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3522
    move-wide/from16 v3, v33

    .end local v33    # "rjToken":J
    .local v3, "rjToken":J
    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3524
    .end local v3    # "rjToken":J
    :goto_d
    move-wide/from16 v3, v31

    .end local v31    # "ajToken":J
    .local v3, "ajToken":J
    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 3525
    .end local v3    # "ajToken":J
    .end local v12    # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v13    # "job":Lcom/android/server/job/controllers/JobStatus;
    goto/16 :goto_c

    .line 3526
    :cond_13
    move/from16 v12, p2

    const/4 v0, -0x1

    if-ne v12, v0, :cond_14

    .line 3527
    :try_start_15
    iget-boolean v0, v1, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    const-wide v3, 0x1080000000bL

    invoke-virtual {v11, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3528
    const-wide v3, 0x1080000000cL

    iget-boolean v0, v1, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    invoke-virtual {v11, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    goto :goto_e

    .line 3534
    .end local v27    # "settingsToken":J
    :catchall_6
    move-exception v0

    move-object v13, v10

    goto :goto_10

    .line 3530
    .restart local v27    # "settingsToken":J
    :cond_14
    :goto_e
    :try_start_16
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    const-wide v5, 0x10b00000014L

    move-object v4, v11

    move-wide/from16 v7, v29

    move-object v13, v10

    .end local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v13, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    move-wide v9, v15

    :try_start_17
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/job/JobConcurrencyManager;->dumpProtoLocked(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 3533
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    const-wide v3, 0x10b00000015L

    invoke-virtual {v0, v11, v3, v4}, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3534
    .end local v27    # "settingsToken":J
    monitor-exit v14
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    .line 3536
    invoke-virtual {v11}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 3537
    return-void

    .line 3534
    .end local v13    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_7
    move-exception v0

    goto :goto_f

    .end local v24    # "filterUidFinal":I
    .local v13, "filterUidFinal":I
    :catchall_8
    move-exception v0

    move/from16 v12, p2

    move/from16 v24, v13

    move-object v13, v10

    .end local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v13, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v24    # "filterUidFinal":I
    goto :goto_10

    .end local v13    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_9
    move-exception v0

    move/from16 v12, p2

    :goto_f
    move-object v13, v10

    .end local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v13    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    goto :goto_10

    .end local v24    # "filterUidFinal":I
    .end local v29    # "now":J
    .restart local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v12, "filterUidFinal":I
    .local v13, "now":J
    :catchall_a
    move-exception v0

    move/from16 v24, v12

    move-wide/from16 v29, v13

    move/from16 v12, p2

    move-object v14, v8

    move-object v13, v10

    .end local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v12    # "filterUidFinal":I
    .local v13, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v24    # "filterUidFinal":I
    .restart local v29    # "now":J
    :goto_10
    :try_start_18
    monitor-exit v14
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    throw v0

    :catchall_b
    move-exception v0

    goto :goto_10
.end method

.method evaluateControllerStatesLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2344
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "c":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2345
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/StateController;

    .line 2346
    .local v1, "sc":Lcom/android/server/job/controllers/StateController;
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/StateController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 2344
    .end local v1    # "sc":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2348
    .end local v0    # "c":I
    :cond_0
    return-void
.end method

.method evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I
    .locals 4
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2419
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getPriority()I

    move-result v0

    .line 2420
    .local v0, "priority":I
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 2421
    invoke-direct {p0, v0, p1}, Lcom/android/server/job/JobSchedulerService;->adjustJobPriority(ILcom/android/server/job/controllers/JobStatus;)I

    move-result v1

    return v1

    .line 2423
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 2424
    .local v1, "override":I
    if-eqz v1, :cond_1

    .line 2425
    invoke-direct {p0, v1, p1}, Lcom/android/server/job/JobSchedulerService;->adjustJobPriority(ILcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    return v2

    .line 2427
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

    .line 2986
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2987
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

    .line 2990
    :cond_0
    const/4 v0, -0x1

    .line 2992
    .local v0, "pkgUid":I
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 2993
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v2, p2, v1, p3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    goto :goto_0

    .line 2994
    :catch_0
    move-exception v2

    :goto_0
    nop

    .line 2996
    if-gez v0, :cond_1

    .line 2997
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

    .line 2998
    const/16 v1, -0x3e8

    return v1

    .line 3001
    :cond_1
    const-string v2, " in user "

    if-nez p4, :cond_2

    .line 3002
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

    .line 3003
    const-string v2, "cancel shell command for package"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3004
    const-string v2, "No matching jobs found."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 3007
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

    .line 3008
    const/16 v2, 0x7d0

    invoke-virtual {p0, v0, p5, v2}, Lcom/android/server/job/JobSchedulerService;->cancelJob(III)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3009
    const-string v2, "No matching job found."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3013
    :cond_3
    :goto_1
    return v1
.end method

.method executeRunCommand(Ljava/lang/String;IIZZ)I
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "jobId"    # I
    .param p4, "satisfied"    # Z
    .param p5, "force"    # Z

    .line 2917
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

    const-string v1, " s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2921
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 2922
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    move v2, p2

    goto :goto_0

    :cond_0
    move v2, v0

    .line 2921
    :goto_0
    invoke-interface {v1, p1, v0, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    .line 2923
    .local v1, "uid":I
    if-gez v1, :cond_1

    .line 2924
    const/16 v0, -0x3e8

    return v0

    .line 2927
    :cond_1
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2928
    :try_start_1
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, v1, p3}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    .line 2929
    .local v3, "js":Lcom/android/server/job/controllers/JobStatus;
    if-nez v3, :cond_2

    .line 2930
    const/16 v4, -0x3e9

    monitor-exit v2

    return v4

    .line 2933
    :cond_2
    const/4 v4, 0x1

    if-eqz p5, :cond_3

    const/4 v5, 0x3

    goto :goto_1

    .line 2934
    :cond_3
    if-eqz p4, :cond_4

    move v5, v4

    goto :goto_1

    :cond_4
    const/4 v5, 0x2

    :goto_1
    iput v5, v3, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 2938
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    .local v5, "c":I
    :goto_2
    if-ltz v5, :cond_5

    .line 2939
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v4, v1}, Lcom/android/server/job/controllers/StateController;->reevaluateStateLocked(I)V

    .line 2938
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 2942
    .end local v5    # "c":I
    :cond_5
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied()Z

    move-result v4

    if-nez v4, :cond_6

    .line 2943
    iput v0, v3, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 2944
    const/16 v4, -0x3ea

    monitor-exit v2

    return v4

    .line 2947
    :cond_6
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->queueReadyJobsForExecutionLocked()V

    .line 2948
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    .line 2949
    .end local v3    # "js":Lcom/android/server/job/controllers/JobStatus;
    monitor-exit v2

    .line 2952
    .end local v1    # "uid":I
    goto :goto_3

    .line 2949
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
    .end local p4    # "satisfied":Z
    .end local p5    # "force":Z
    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2950
    .end local v1    # "uid":I
    .restart local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .restart local p1    # "pkgName":Ljava/lang/String;
    .restart local p2    # "userId":I
    .restart local p3    # "jobId":I
    .restart local p4    # "satisfied":Z
    .restart local p5    # "force":Z
    :catch_0
    move-exception v1

    .line 2953
    :goto_3
    return v0
.end method

.method executeTimeoutCommand(Ljava/io/PrintWriter;Ljava/lang/String;IZI)I
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "hasJobId"    # Z
    .param p5, "jobId"    # I

    .line 2959
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeTimeoutCommand(): "

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

    .line 2963
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2964
    const/4 v1, 0x0

    .line 2965
    .local v1, "foundSome":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2966
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/job/JobServiceContext;

    .line 2967
    .local v4, "jc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v4}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    .line 2968
    .local v3, "js":Lcom/android/server/job/controllers/JobStatus;
    const-string/jumbo v9, "shell"

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/job/JobServiceContext;->timeoutIfExecutingLocked(Ljava/lang/String;IZILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2969
    const/4 v1, 0x1

    .line 2970
    const-string v5, "Timing out: "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2971
    invoke-virtual {v3, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 2972
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2973
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2965
    .end local v3    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v4    # "jc":Lcom/android/server/job/JobServiceContext;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2976
    .end local v2    # "i":I
    :cond_2
    if-nez v1, :cond_3

    .line 2977
    const-string v2, "No matching executing jobs found."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2979
    .end local v1    # "foundSome":Z
    :cond_3
    monitor-exit v0

    .line 2980
    const/4 v0, 0x0

    return v0

    .line 2979
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getBatteryCharging()Z
    .locals 2

    .line 3031
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3032
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    if-eqz v1, :cond_0

    .line 3033
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

    .line 3032
    return v1

    .line 3034
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getBatteryNotLow()Z
    .locals 2

    .line 3038
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3039
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    if-eqz v1, :cond_0

    .line 3040
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

    .line 3039
    return v1

    .line 3041
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getBatterySeq()I
    .locals 2

    .line 3025
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3026
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

    .line 3027
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConstants()Lcom/android/server/job/JobSchedulerService$Constants;
    .locals 1

    .line 978
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    return-object v0
.end method

.method getJobState(Ljava/io/PrintWriter;Ljava/lang/String;II)I
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "jobId"    # I

    .line 3060
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 3061
    const/4 v2, -0x1

    if-eq p3, v2, :cond_0

    move v2, p3

    goto :goto_0

    :cond_0
    move v2, v0

    .line 3060
    :goto_0
    invoke-interface {v1, p2, v0, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    .line 3062
    .local v1, "uid":I
    if-gez v1, :cond_1

    .line 3063
    const-string/jumbo v2, "unknown("

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3064
    const/16 v0, -0x3e8

    return v0

    .line 3067
    :cond_1
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3068
    :try_start_1
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, v1, p4}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    .line 3069
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

    .line 3070
    :cond_2
    if-nez v3, :cond_3

    .line 3071
    const-string/jumbo v4, "unknown("

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p1, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3072
    const-string v4, "/jid"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ")"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3073
    const/16 v4, -0x3e9

    monitor-exit v2

    return v4

    .line 3076
    :cond_3
    const/4 v4, 0x0

    .line 3077
    .local v4, "printed":Z
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3078
    const-string/jumbo v5, "pending"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3079
    const/4 v4, 0x1

    .line 3081
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3082
    if-eqz v4, :cond_5

    .line 3083
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3085
    :cond_5
    const/4 v4, 0x1

    .line 3086
    const-string v5, "active"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3088
    :cond_6
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-nez v5, :cond_8

    .line 3089
    if-eqz v4, :cond_7

    .line 3090
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3092
    :cond_7
    const/4 v4, 0x1

    .line 3093
    const-string/jumbo v5, "user-stopped"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3095
    :cond_8
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-nez v5, :cond_a

    .line 3096
    if-eqz v4, :cond_9

    .line 3097
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3099
    :cond_9
    const/4 v4, 0x1

    .line 3100
    const-string/jumbo v5, "source-user-stopped"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3102
    :cond_a
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_c

    .line 3103
    if-eqz v4, :cond_b

    .line 3104
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3106
    :cond_b
    const/4 v4, 0x1

    .line 3107
    const-string v5, "backing-up"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3109
    :cond_c
    const/4 v5, 0x0

    .line 3111
    .local v5, "componentPresent":Z
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    .line 3112
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v7

    const/high16 v8, 0x10000000

    .line 3114
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v9

    .line 3111
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

    .line 3116
    goto :goto_2

    .line 3115
    :catch_0
    move-exception v6

    .line 3117
    :goto_2
    if-nez v5, :cond_f

    .line 3118
    if-eqz v4, :cond_e

    .line 3119
    :try_start_3
    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3121
    :cond_e
    const/4 v4, 0x1

    .line 3122
    const-string/jumbo v6, "no-component"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3124
    :cond_f
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 3125
    if-eqz v4, :cond_10

    .line 3126
    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3128
    :cond_10
    const/4 v4, 0x1

    .line 3129
    const-string/jumbo v6, "ready"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3131
    :cond_11
    if-nez v4, :cond_12

    .line 3132
    const-string/jumbo v6, "waiting"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3134
    :cond_12
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3135
    .end local v3    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v4    # "printed":Z
    .end local v5    # "componentPresent":Z
    monitor-exit v2

    .line 3138
    .end local v1    # "uid":I
    goto :goto_3

    .line 3135
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

    .line 3136
    .end local v1    # "uid":I
    .restart local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    .restart local p2    # "pkgName":Ljava/lang/String;
    .restart local p3    # "userId":I
    .restart local p4    # "jobId":I
    :catch_1
    move-exception v1

    .line 3139
    :goto_3
    return v0
.end method

.method public getJobStore()Lcom/android/server/job/JobStore;
    .locals 1

    .line 974
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    return-object v0
.end method

.method public getLock()Ljava/lang/Object;
    .locals 1

    .line 970
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getMaxJobExecutionTimeMs(Lcom/android/server/job/controllers/JobStatus;)J
    .locals 5
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2387
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2388
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/QuotaController;->getMaxJobExecutionTimeMsLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v1

    const-wide/32 v3, 0x927c0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 2390
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPendingJob(II)Landroid/app/job/JobInfo;
    .locals 5
    .param p1, "uid"    # I
    .param p2, "jobId"    # I

    .line 1179
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1180
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object v1

    .line 1181
    .local v1, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1182
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 1183
    .local v3, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 1184
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    monitor-exit v0

    return-object v4

    .line 1181
    .end local v3    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1187
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 1188
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

    .line 1167
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1168
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object v1

    .line 1169
    .local v1, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1170
    .local v2, "outList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/job/JobInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 1171
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 1172
    .local v4, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    nop

    .end local v4    # "job":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1174
    .end local v3    # "i":I
    :cond_0
    monitor-exit v0

    return-object v2

    .line 1175
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
    .locals 21
    .param p1, "failureToReschedule"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1710
    move-object/from16 v0, p0

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 1711
    .local v1, "elapsedNowMillis":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v3

    .line 1713
    .local v3, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v4

    .line 1714
    .local v4, "initialBackoffMillis":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    .line 1717
    .local v6, "backoffAttempts":I
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v8

    if-eqz v8, :cond_2

    if-eq v8, v7, :cond_0

    .line 1726
    sget-boolean v7, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 1727
    const-string v7, "JobScheduler"

    const-string v8, "Unrecognised back-off policy, defaulting to exponential."

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    :cond_0
    move-wide v7, v4

    .line 1731
    .local v7, "backoff":J
    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v9, v9, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME:J

    cmp-long v9, v7, v9

    if-gez v9, :cond_1

    .line 1732
    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v7, v9, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME:J

    .line 1734
    :cond_1
    long-to-float v9, v7

    add-int/lit8 v10, v6, -0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->scalb(FI)F

    move-result v9

    float-to-long v9, v9

    .local v9, "delayMillis":J
    goto :goto_0

    .line 1719
    .end local v7    # "backoff":J
    .end local v9    # "delayMillis":J
    :cond_2
    move-wide v7, v4

    .line 1720
    .restart local v7    # "backoff":J
    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v9, v9, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME:J

    cmp-long v9, v7, v9

    if-gez v9, :cond_3

    .line 1721
    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v7, v9, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME:J

    .line 1723
    :cond_3
    int-to-long v9, v6

    mul-long/2addr v9, v7

    .line 1724
    .end local v7    # "backoff":J
    .restart local v9    # "delayMillis":J
    nop

    .line 1737
    :goto_0
    const-wide/32 v7, 0x112a880

    .line 1738
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v19

    .line 1739
    .end local v9    # "delayMillis":J
    .local v19, "delayMillis":J
    new-instance v7, Lcom/android/server/job/controllers/JobStatus;

    add-long v10, v1, v19

    const-wide v12, 0x7fffffffffffffffL

    .line 1742
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastSuccessfulRunTime()J

    move-result-wide v15

    sget-object v8, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v8}, Ljava/time/Clock;->millis()J

    move-result-wide v17

    move-object v8, v7

    move-object/from16 v9, p1

    move v14, v6

    invoke-direct/range {v8 .. v18}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJIJJ)V

    .line 1743
    .local v7, "newJob":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1744
    nop

    .line 1745
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getOriginalLatestRunTimeElapsed()J

    move-result-wide v8

    .line 1744
    invoke-virtual {v7, v8, v9}, Lcom/android/server/job/controllers/JobStatus;->setOriginalLatestRunTimeElapsed(J)V

    .line 1747
    :cond_4
    const/4 v8, 0x0

    .local v8, "ic":I
    :goto_1
    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 1748
    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/StateController;

    .line 1749
    .local v9, "controller":Lcom/android/server/job/controllers/StateController;
    move-object/from16 v10, p1

    invoke-virtual {v9, v7, v10}, Lcom/android/server/job/controllers/StateController;->rescheduleForFailureLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 1747
    .end local v9    # "controller":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v10, p1

    .line 1751
    .end local v8    # "ic":I
    return-object v7
.end method

.method getRescheduleJobForPeriodic(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;
    .locals 39
    .param p1, "periodicToReschedule"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1780
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1783
    .local v0, "elapsedNow":J
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v2

    .line 1784
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v4

    const-wide v6, 0x757b12c00L

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 1783
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 1786
    .local v2, "period":J
    invoke-static {}, Landroid/app/job/JobInfo;->getMinFlexMillis()J

    move-result-wide v4

    .line 1787
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 1786
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 1788
    .local v4, "flex":J
    const-wide/16 v6, 0x0

    .line 1790
    .local v6, "rescheduleBuffer":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getOriginalLatestRunTimeElapsed()J

    move-result-wide v8

    .line 1791
    .local v8, "olrte":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    const-string v11, "JobScheduler"

    if-ltz v10, :cond_0

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v10, v8, v12

    if-nez v10, :cond_1

    .line 1792
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid periodic job original latest run time: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    move-wide v8, v0

    .line 1795
    :cond_1
    move-wide v12, v8

    .line 1797
    .local v12, "latestRunTimeElapsed":J
    sub-long v14, v0, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    .line 1798
    .local v14, "diffMs":J
    cmp-long v10, v0, v12

    move-wide/from16 v16, v6

    .end local v6    # "rescheduleBuffer":J
    .local v16, "rescheduleBuffer":J
    const-wide/32 v6, 0x1b7740

    if-lez v10, :cond_6

    .line 1801
    sget-boolean v10, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v10, :cond_2

    .line 1802
    const-string v10, "Periodic job ran after its intended window."

    invoke-static {v11, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    :cond_2
    div-long v18, v14, v2

    const-wide/16 v20, 0x1

    add-long v18, v18, v20

    .line 1805
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

    .line 1807
    sget-boolean v6, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 1808
    const-string v6, "Custom flex job ran too close to next window."

    invoke-static {v11, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    :cond_3
    add-long v18, v18, v20

    goto :goto_0

    .line 1805
    .end local v26    # "olrte":J
    .restart local v8    # "olrte":J
    :cond_4
    move-wide/from16 v26, v8

    .line 1814
    .end local v8    # "olrte":J
    .restart local v26    # "olrte":J
    :cond_5
    :goto_0
    mul-long v6, v2, v18

    add-long/2addr v6, v12

    .line 1815
    .end local v18    # "numSkippedWindows":J
    .local v6, "newLatestRuntimeElapsed":J
    goto :goto_1

    .line 1816
    .end local v6    # "newLatestRuntimeElapsed":J
    .end local v26    # "olrte":J
    .restart local v8    # "olrte":J
    :cond_6
    move-wide/from16 v26, v8

    .end local v8    # "olrte":J
    .restart local v26    # "olrte":J
    add-long v8, v12, v2

    .line 1817
    .local v8, "newLatestRuntimeElapsed":J
    cmp-long v10, v14, v6

    if-gez v10, :cond_7

    const-wide/16 v18, 0x6

    div-long v20, v2, v18

    cmp-long v10, v14, v20

    if-gez v10, :cond_7

    .line 1820
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

    .line 1817
    .end local v6    # "rescheduleBuffer":J
    .end local v20    # "newLatestRuntimeElapsed":J
    .restart local v8    # "newLatestRuntimeElapsed":J
    .restart local v16    # "rescheduleBuffer":J
    :cond_7
    move-wide/from16 v20, v8

    .line 1824
    .end local v8    # "newLatestRuntimeElapsed":J
    .restart local v20    # "newLatestRuntimeElapsed":J
    move-wide/from16 v6, v20

    .end local v20    # "newLatestRuntimeElapsed":J
    .local v6, "newLatestRuntimeElapsed":J
    :goto_1
    cmp-long v8, v6, v0

    if-gez v8, :cond_8

    .line 1825
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rescheduling calculated latest runtime in the past: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    new-instance v8, Lcom/android/server/job/controllers/JobStatus;

    add-long v9, v0, v2

    sub-long v30, v9, v4

    add-long v32, v0, v2

    const/16 v34, 0x0

    sget-object v9, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 1830
    invoke-virtual {v9}, Ljava/time/Clock;->millis()J

    move-result-wide v35

    .line 1831
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v37

    move-object/from16 v28, v8

    move-object/from16 v29, p1

    invoke-direct/range {v28 .. v38}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJIJJ)V

    .line 1827
    return-object v8

    .line 1834
    :cond_8
    sub-long v8, v2, v16

    .line 1835
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    sub-long v8, v6, v8

    .line 1837
    .local v8, "newEarliestRunTimeElapsed":J
    sget-boolean v10, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v10, :cond_9

    .line 1838
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

    .line 1837
    .end local v18    # "elapsedNow":J
    .end local v20    # "period":J
    .restart local v0    # "elapsedNow":J
    .restart local v2    # "period":J
    :cond_9
    move-wide/from16 v18, v0

    move-wide/from16 v20, v2

    .line 1842
    .end local v0    # "elapsedNow":J
    .end local v2    # "period":J
    .restart local v18    # "elapsedNow":J
    .restart local v20    # "period":J
    :goto_2
    new-instance v0, Lcom/android/server/job/controllers/JobStatus;

    const/16 v34, 0x0

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 1845
    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v35

    .line 1846
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v37

    move-object/from16 v28, v0

    move-object/from16 v29, p1

    move-wide/from16 v30, v8

    move-wide/from16 v32, v6

    invoke-direct/range {v28 .. v38}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJIJJ)V

    .line 1842
    return-object v0
.end method

.method getStorageNotLow()Z
    .locals 2

    .line 3051
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3052
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    if-eqz v1, :cond_0

    .line 3053
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

    .line 3052
    return v1

    .line 3054
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getStorageSeq()I
    .locals 2

    .line 3045
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3046
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

    .line 3047
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTestableContext()Landroid/content/Context;
    .locals 1

    .line 966
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public isChainedAttributionEnabled()Z
    .locals 1

    .line 982
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/WorkSource;->isChainedBatteryAttributionEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 10
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2239
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    .line 2241
    .local v0, "jobReady":Z
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string/jumbo v2, "isReadyToBeExecutedLocked: "

    const-string v3, "JobScheduler"

    if-eqz v1, :cond_0

    .line 2242
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

    .line 2249
    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 2250
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.jobscheduler.cts.jobtestapp"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    NOT READY: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    :cond_1
    return v1

    .line 2256
    :cond_2
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v4, p1}, Lcom/android/server/job/JobStore;->containsJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v4

    .line 2257
    .local v4, "jobExists":Z
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    .line 2258
    .local v5, "userStarted":Z
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v6

    if-ltz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    move v6, v1

    .line 2260
    .local v6, "backingUp":Z
    :goto_0
    sget-boolean v7, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v7, :cond_4

    .line 2261
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " exists="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " userStarted="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " backingUp="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    :cond_4
    if-eqz v4, :cond_b

    if-eqz v5, :cond_b

    if-eqz v6, :cond_5

    goto :goto_2

    .line 2272
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 2273
    return v1

    .line 2276
    :cond_6
    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 2277
    .local v7, "jobPending":Z
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v8

    .line 2279
    .local v8, "jobActive":Z
    sget-boolean v9, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v9, :cond_7

    .line 2280
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pending="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " active="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    :cond_7
    if-nez v7, :cond_a

    if-eqz v8, :cond_8

    goto :goto_1

    .line 2300
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    .line 2303
    .local v2, "componentPresent":Z
    if-eqz v2, :cond_9

    .line 2307
    invoke-static {p1}, Lcom/android/server/am/OpStartAppControlInjector;->canJobSchedulerGo(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 2308
    return v1

    .line 2311
    :cond_9
    return v2

    .line 2288
    .end local v2    # "componentPresent":Z
    :cond_a
    :goto_1
    return v1

    .line 2269
    .end local v7    # "jobPending":Z
    .end local v8    # "jobActive":Z
    :cond_b
    :goto_2
    return v1
.end method

.method public synthetic lambda$new$2$JobSchedulerService()V
    .locals 10

    .line 1505
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1506
    .local v0, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/job/controllers/JobStatus;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1507
    .local v1, "toAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1510
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/android/server/job/JobStore;->getRtcCorrectedJobsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1514
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1515
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 1516
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 1517
    .local v5, "oldJob":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/JobStatus;

    .line 1518
    .local v6, "newJob":Lcom/android/server/job/controllers/JobStatus;
    sget-boolean v7, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 1519
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

    .line 1521
    :cond_0
    const-string v7, "deferred rtc calculation"

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V

    .line 1515
    .end local v5    # "oldJob":Lcom/android/server/job/controllers/JobStatus;
    .end local v6    # "newJob":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1523
    .end local v3    # "N":I
    .end local v4    # "i":I
    :cond_1
    monitor-exit v2

    .line 1524
    return-void

    .line 1523
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public synthetic lambda$onBootPhase$3$JobSchedulerService(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 4
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1589
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 1592
    .local v0, "componentPresent":Z
    if-eqz v0, :cond_0

    .line 1596
    invoke-static {p1}, Lcom/android/server/am/OpStartAppControlInjector;->canJobSchedulerGo(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1597
    return-void

    .line 1601
    :cond_0
    const/4 v1, 0x0

    .local v1, "controller":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1602
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    .line 1603
    .local v2, "sc":Lcom/android/server/job/controllers/StateController;
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/server/job/controllers/StateController;->maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 1601
    .end local v2    # "sc":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1605
    .end local v1    # "controller":I
    :cond_1
    return-void
.end method

.method maybeRunPendingJobsLocked()V
    .locals 2

    .line 2399
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2400
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

    .line 2402
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v0}, Lcom/android/server/job/JobConcurrencyManager;->assignJobsToContextsLocked()V

    .line 2403
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    .line 2404
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

    .line 1690
    .local p1, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1691
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 1692
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1690
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1694
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

    .line 1683
    .local p1, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1684
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 1685
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1683
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1687
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public onBootPhase(I)V
    .locals 14
    .param p1, "phase"    # I

    .line 1533
    const/4 v0, 0x1

    const/16 v1, 0x1f4

    if-ne v1, p1, :cond_2

    .line 1534
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->start(Landroid/content/ContentResolver;)V

    .line 1535
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    .line 1536
    .local v2, "controller":Lcom/android/server/job/controllers/StateController;
    invoke-virtual {v2}, Lcom/android/server/job/controllers/StateController;->onSystemServicesReady()V

    .line 1537
    .end local v2    # "controller":Lcom/android/server/job/controllers/StateController;
    goto :goto_0

    .line 1539
    :cond_0
    const-class v1, Lcom/android/server/AppStateTracker;

    .line 1540
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppStateTracker;

    .line 1539
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Lcom/android/server/AppStateTracker;

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 1543
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1544
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1545
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1546
    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1547
    const-string v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1548
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1549
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1551
    new-instance v11, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-direct {v11, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1552
    .local v11, "userFilter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1555
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mUidObserver:Landroid/app/IUidObserver;

    const/16 v4, 0xf

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-interface {v2, v3, v4, v6, v5}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1561
    goto :goto_1

    .line 1559
    :catch_0
    move-exception v2

    .line 1563
    :goto_1
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v2}, Lcom/android/server/job/JobConcurrencyManager;->onSystemReady()V

    .line 1566
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForNonExistentUsers()V

    .line 1568
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_1

    .line 1569
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/restrictions/JobRestriction;

    invoke-virtual {v0}, Lcom/android/server/job/restrictions/JobRestriction;->onSystemServicesReady()V

    .line 1568
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "i":I
    .end local v11    # "userFilter":Landroid/content/IntentFilter;
    :cond_1
    goto :goto_4

    .line 1571
    :cond_2
    const/16 v1, 0x258

    if-ne p1, v1, :cond_4

    .line 1572
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1574
    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    .line 1575
    const-string v2, "batterystats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 1577
    const-class v2, Lcom/android/server/DeviceIdleInternal;

    .line 1578
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DeviceIdleInternal;

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    .line 1580
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    const/16 v3, 0x10

    if-ge v2, v3, :cond_3

    .line 1581
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    new-instance v4, Lcom/android/server/job/JobServiceContext;

    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 1583
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/android/server/job/JobServiceContext;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Landroid/os/Looper;)V

    .line 1581
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1580
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1586
    .end local v2    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    new-instance v3, Lcom/android/server/job/-$$Lambda$JobSchedulerService$0Wz_b63Vzxu3lYEmfPzreSihZzE;

    invoke-direct {v3, p0}, Lcom/android/server/job/-$$Lambda$JobSchedulerService$0Wz_b63Vzxu3lYEmfPzreSihZzE;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-virtual {v2, v3}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 1607
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1608
    monitor-exit v1

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1571
    :cond_4
    :goto_4
    nop

    .line 1610
    :goto_5
    return-void
.end method

.method public onControllerStateChanged()V
    .locals 2

    .line 1912
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1913
    return-void
.end method

.method public onDeviceIdleStateChanged(Z)V
    .locals 7
    .param p1, "deviceIdle"    # Z

    .line 1312
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1313
    :try_start_0
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1314
    const-string v1, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Doze state changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 1319
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1320
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobServiceContext;

    .line 1321
    .local v3, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v4

    .line 1322
    .local v4, "executing":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v4, :cond_1

    .line 1323
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result v5

    and-int/2addr v5, v1

    if-nez v5, :cond_1

    .line 1324
    const/4 v5, 0x4

    const-string v6, "cancelled due to doze"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(ILjava/lang/String;)V

    .line 1319
    .end local v3    # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v4    # "executing":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_2
    goto :goto_1

    .line 1330
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-eqz v2, :cond_5

    .line 1331
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    if-eqz v2, :cond_4

    .line 1332
    iget-boolean v2, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    if-nez v2, :cond_4

    .line 1333
    iput-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    .line 1334
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    invoke-interface {v2, v1}, Lcom/android/server/DeviceIdleInternal;->setJobsActive(Z)V

    .line 1337
    :cond_4
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1340
    :cond_5
    :goto_1
    monitor-exit v0

    .line 1341
    return-void

    .line 1340
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

    .line 1860
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v1, "JobScheduler"

    if-eqz v0, :cond_0

    .line 1861
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

    .line 1867
    :cond_0
    if-eqz p2, :cond_1

    .line 1868
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getRescheduleJobForFailureLocked(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1872
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

    .line 1873
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 1874
    const-string v2, "Could not find job to remove. Was job removed while executing?"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    :cond_2
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1879
    return-void

    .line 1882
    :cond_3
    const-string v2, "Unable to regrant job permissions for "

    if-eqz v0, :cond_4

    .line 1884
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1887
    goto :goto_1

    .line 1885
    :catch_0
    move-exception v4

    .line 1886
    .local v4, "e":Ljava/lang/SecurityException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    .end local v4    # "e":Ljava/lang/SecurityException;
    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_3

    .line 1889
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1890
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getRescheduleJobForPeriodic(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v4

    .line 1892
    .local v4, "rescheduledPeriodic":Lcom/android/server/job/controllers/JobStatus;
    :try_start_1
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1895
    goto :goto_2

    .line 1893
    :catch_1
    move-exception v5

    .line 1894
    .local v5, "e":Ljava/lang/SecurityException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    .end local v5    # "e":Ljava/lang/SecurityException;
    :goto_2
    invoke-direct {p0, v4, p1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 1898
    .end local v4    # "rescheduledPeriodic":Lcom/android/server/job/controllers/JobStatus;
    :cond_5
    :goto_3
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->unprepareLocked()V

    .line 1899
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    .line 1900
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1901
    return-void
.end method

.method public onRestrictedBucketChanged(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 1345
    .local p1, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1346
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 1347
    const-string v1, "JobScheduler"

    const-string/jumbo v2, "onRestrictedBucketChanged called with no jobs"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    return-void

    .line 1350
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1351
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 1352
    :try_start_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 1353
    .local v4, "js":Lcom/android/server/job/controllers/JobStatus;
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    .local v5, "j":I
    :goto_1
    if-ltz v5, :cond_2

    .line 1356
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v3

    const/4 v6, 0x5

    if-ne v3, v6, :cond_1

    .line 1357
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/RestrictingController;

    invoke-virtual {v3, v4}, Lcom/android/server/job/controllers/RestrictingController;->startTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_2

    .line 1359
    :cond_1
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/RestrictingController;

    invoke-virtual {v3, v4}, Lcom/android/server/job/controllers/RestrictingController;->stopTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1353
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 1351
    .end local v4    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v5    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1363
    .end local v2    # "i":I
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1364
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1365
    return-void

    .line 1363
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1917
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1918
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1528
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    const-string/jumbo v1, "jobscheduler"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/job/JobSchedulerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1529
    return-void
.end method

.method public onStartUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 987
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 988
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 989
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 991
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 992
    return-void

    .line 989
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

    .line 1002
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1003
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 1004
    monitor-exit v0

    .line 1005
    return-void

    .line 1004
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

    .line 997
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 998
    return-void
.end method

.method reportActiveLocked()V
    .locals 6

    .line 1369
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1370
    .local v0, "active":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 1371
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1372
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobServiceContext;

    .line 1373
    .local v3, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v4

    .line 1374
    .local v4, "job":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v4, :cond_1

    .line 1375
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

    .line 1380
    const/4 v0, 0x1

    .line 1381
    goto :goto_2

    .line 1371
    .end local v3    # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v4    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1386
    .end local v2    # "i":I
    :cond_2
    :goto_2
    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    if-eq v1, v0, :cond_3

    .line 1387
    iput-boolean v0, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    .line 1388
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    if-eqz v1, :cond_3

    .line 1389
    invoke-interface {v1, v0}, Lcom/android/server/DeviceIdleInternal;->setJobsActive(Z)V

    .line 1392
    :cond_3
    return-void
.end method

.method reportAppUsage(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1397
    return-void
.end method

.method resetExecutionQuota(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3143
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/job/controllers/QuotaController;->clearAppStats(ILjava/lang/String;)V

    .line 3144
    return-void
.end method

.method resetScheduleQuota()V
    .locals 1

    .line 3147
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-virtual {v0}, Lcom/android/server/utils/quota/CountQuotaTracker;->clear()V

    .line 3148
    return-void
.end method

.method public scheduleAsPackage(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;ILjava/lang/String;ILjava/lang/String;)I
    .locals 31
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "work"    # Landroid/app/job/JobWorkItem;
    .param p3, "uId"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "tag"    # Ljava/lang/String;

    .line 1018
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v15, p3

    move-object/from16 v14, p4

    move/from16 v13, p5

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 1019
    .local v12, "servicePkg":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v0

    const/16 v20, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_9

    if-eqz v14, :cond_0

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1022
    :cond_0
    if-nez v14, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v14

    :goto_0
    move-object v5, v0

    .line 1023
    .local v5, "pkg":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string v6, ".schedulePersisted()"

    invoke-virtual {v0, v13, v5, v6}, Lcom/android/server/utils/quota/CountQuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1024
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string v6, ".schedulePersisted out-of-quota logged"

    invoke-virtual {v0, v13, v5, v6}, Lcom/android/server/utils/quota/CountQuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has called schedule() too many times"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "JobScheduler"

    invoke-static {v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string v6, ".schedulePersisted out-of-quota logged"

    invoke-virtual {v0, v13, v5, v6}, Lcom/android/server/utils/quota/CountQuotaTracker;->noteEvent(ILjava/lang/String;Ljava/lang/String;)Z

    .line 1029
    :cond_2
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    const/4 v6, 0x4

    invoke-interface {v0, v5, v13, v6}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;II)V

    .line 1031
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_THROW_EXCEPTION:Z

    if-eqz v0, :cond_7

    .line 1033
    iget-object v6, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1034
    :try_start_0
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_5

    .line 1036
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1037
    invoke-interface {v0, v5, v4, v13}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1038
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_4

    .line 1039
    iget-object v7, v1, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_3

    move/from16 v8, v20

    goto :goto_1

    :cond_3
    move v8, v4

    .line 1040
    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 1039
    invoke-virtual {v7, v14, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1046
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_2

    .line 1042
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_4
    :try_start_2
    monitor-exit v6

    return v4

    .line 1044
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 1045
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v5    # "pkg":Ljava/lang/String;
    .end local v12    # "servicePkg":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .end local p1    # "job":Landroid/app/job/JobInfo;
    .end local p2    # "work":Landroid/app/job/JobWorkItem;
    .end local p3    # "uId":I
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p5    # "userId":I
    .end local p6    # "tag":Ljava/lang/String;
    throw v4

    .line 1048
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v5    # "pkg":Ljava/lang/String;
    .restart local v12    # "servicePkg":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .restart local p1    # "job":Landroid/app/job/JobInfo;
    .restart local p2    # "work":Landroid/app/job/JobWorkItem;
    .restart local p3    # "uId":I
    .restart local p4    # "packageName":Ljava/lang/String;
    .restart local p5    # "userId":I
    .restart local p6    # "tag":Ljava/lang/String;
    :cond_5
    :goto_2
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1049
    .local v0, "isDebuggable":Z
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1050
    if-nez v0, :cond_6

    goto :goto_3

    .line 1052
    :cond_6
    new-instance v4, Landroid/os/LimitExceededException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "schedule()/enqueue() called more than "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v8, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    .line 1054
    invoke-virtual {v7, v8}, Lcom/android/server/utils/quota/CountQuotaTracker;->getLimit(Lcom/android/server/utils/quota/Category;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " times in the past "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v8, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    .line 1057
    invoke-virtual {v7, v8}, Lcom/android/server/utils/quota/CountQuotaTracker;->getWindowSizeMs(Lcom/android/server/utils/quota/Category;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms. See the documentation for more information."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/os/LimitExceededException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1049
    .end local v0    # "isDebuggable":Z
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1062
    :cond_7
    :goto_3
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT:Z

    if-eqz v0, :cond_8

    .line 1063
    return v4

    .line 1066
    :cond_8
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string v6, ".schedulePersisted()"

    invoke-virtual {v0, v13, v5, v6}, Lcom/android/server/utils/quota/CountQuotaTracker;->noteEvent(ILjava/lang/String;Ljava/lang/String;)Z

    .line 1070
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_9
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1071
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1070
    invoke-interface {v0, v15, v5}, Landroid/app/IActivityManager;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1072
    const-string v0, "JobScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not scheduling job "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -- package not allowed to start"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1074
    return v4

    .line 1077
    :cond_a
    goto :goto_4

    .line 1076
    :catch_1
    move-exception v0

    .line 1079
    :goto_4
    iget-object v11, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1080
    :try_start_5
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getId()I

    move-result v4

    invoke-virtual {v0, v15, v4}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1082
    .local v0, "toCancel":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v3, :cond_b

    if-eqz v0, :cond_b

    .line 1085
    :try_start_6
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/job/JobInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1087
    invoke-virtual {v0, v3}, Lcom/android/server/job/controllers/JobStatus;->enqueueWorkLocked(Landroid/app/job/JobWorkItem;)V

    .line 1091
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mIsUidActivePredicate:Ljava/util/function/Predicate;

    invoke-virtual {v0, v4}, Lcom/android/server/job/controllers/JobStatus;->maybeAddForegroundExemption(Ljava/util/function/Predicate;)V

    .line 1093
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return v20

    .line 1162
    .end local v0    # "toCancel":Lcom/android/server/job/controllers/JobStatus;
    :catchall_1
    move-exception v0

    move-object/from16 v29, v11

    move-object/from16 v30, v12

    goto/16 :goto_8

    .line 1097
    .restart local v0    # "toCancel":Lcom/android/server/job/controllers/JobStatus;
    :cond_b
    move-object/from16 v10, p6

    :try_start_7
    invoke-static {v2, v15, v14, v13, v10}, Lcom/android/server/job/controllers/JobStatus;->createFromJobInfo(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v4

    move-object v9, v4

    .line 1103
    .local v9, "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mIsUidActivePredicate:Ljava/util/function/Predicate;

    invoke-virtual {v9, v4}, Lcom/android/server/job/controllers/JobStatus;->maybeAddForegroundExemption(Ljava/util/function/Predicate;)V

    .line 1105
    sget-boolean v4, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v4, :cond_c

    :try_start_8
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

    .line 1107
    :cond_c
    if-nez v14, :cond_e

    .line 1108
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v4, v15}, Lcom/android/server/job/JobStore;->countJobsForUid(I)I

    move-result v4

    const/16 v5, 0x64

    if-gt v4, v5, :cond_d

    goto :goto_5

    .line 1109
    :cond_d
    const-string v4, "JobScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Too many jobs for uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Apps may not schedule more than 100 distinct jobs"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v12    # "servicePkg":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .end local p1    # "job":Landroid/app/job/JobInfo;
    .end local p2    # "work":Landroid/app/job/JobWorkItem;
    .end local p3    # "uId":I
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p5    # "userId":I
    .end local p6    # "tag":Ljava/lang/String;
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1116
    .restart local v12    # "servicePkg":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .restart local p1    # "job":Landroid/app/job/JobInfo;
    .restart local p2    # "work":Landroid/app/job/JobWorkItem;
    .restart local p3    # "uId":I
    .restart local p4    # "packageName":Ljava/lang/String;
    .restart local p5    # "userId":I
    .restart local p6    # "tag":Ljava/lang/String;
    :cond_e
    :goto_5
    :try_start_9
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1118
    if-eqz v0, :cond_f

    .line 1120
    :try_start_a
    const-string/jumbo v4, "job rescheduled by app"

    invoke-direct {v1, v0, v9, v4}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_6

    .line 1122
    :cond_f
    const/4 v4, 0x0

    :try_start_b
    invoke-direct {v1, v9, v4}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1125
    :goto_6
    if-eqz v3, :cond_10

    .line 1127
    :try_start_c
    invoke-virtual {v9, v3}, Lcom/android/server/job/controllers/JobStatus;->enqueueWorkLocked(Landroid/app/job/JobWorkItem;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1130
    :cond_10
    const/16 v4, 0x8

    const/4 v6, 0x0

    .line 1131
    :try_start_d
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    const/16 v16, 0x0

    .line 1133
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v17

    .line 1134
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v18

    .line 1135
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v19

    .line 1136
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->hasBatteryNotLowConstraint()Z

    move-result v21

    .line 1137
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->hasStorageNotLowConstraint()Z

    move-result v22

    .line 1138
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v23

    .line 1139
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v24

    .line 1140
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v25

    .line 1141
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v26

    .line 1142
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v27
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1130
    move/from16 v5, p3

    move-object/from16 v28, v9

    .end local v9    # "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    .local v28, "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    move/from16 v9, v16

    move/from16 v10, v17

    move-object/from16 v29, v11

    move/from16 v11, v18

    move-object/from16 v30, v12

    .end local v12    # "servicePkg":Ljava/lang/String;
    .local v30, "servicePkg":Ljava/lang/String;
    move/from16 v12, v19

    move/from16 v13, v21

    move/from16 v14, v22

    move/from16 v15, v23

    move/from16 v16, v24

    move/from16 v17, v25

    move/from16 v18, v26

    move/from16 v19, v27

    :try_start_e
    invoke-static/range {v4 .. v19}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;IIIIZZZZZZZZ)V

    .line 1153
    move-object/from16 v4, v28

    .end local v28    # "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    .local v4, "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1, v4}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1156
    iget-object v5, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v5, v4}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1157
    iget-object v5, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sPendingJobComparator:Ljava/util/Comparator;

    invoke-static {v5, v4, v6}, Lcom/android/server/job/JobSchedulerService;->addOrderedItem(Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1158
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    goto :goto_7

    .line 1160
    :cond_11
    invoke-virtual {v1, v4}, Lcom/android/server/job/JobSchedulerService;->evaluateControllerStatesLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1162
    .end local v0    # "toCancel":Lcom/android/server/job/controllers/JobStatus;
    .end local v4    # "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    :goto_7
    monitor-exit v29

    .line 1163
    return v20

    .line 1162
    .end local v30    # "servicePkg":Ljava/lang/String;
    .restart local v12    # "servicePkg":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v29, v11

    move-object/from16 v30, v12

    .end local v12    # "servicePkg":Ljava/lang/String;
    .restart local v30    # "servicePkg":Ljava/lang/String;
    :goto_8
    monitor-exit v29
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_8
.end method

.method setMonitorBattery(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 3017
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3018
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    if-eqz v1, :cond_0

    .line 3019
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController;->getTracker()Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->setMonitorBatteryLocked(Z)V

    .line 3021
    :cond_0
    monitor-exit v0

    .line 3022
    return-void

    .line 3021
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method triggerDockState(Z)V
    .locals 3
    .param p1, "idleState"    # Z

    .line 3152
    if-eqz p1, :cond_0

    .line 3153
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOCK_IDLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "dockIntent":Landroid/content/Intent;
    goto :goto_0

    .line 3155
    .end local v0    # "dockIntent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOCK_ACTIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3157
    .restart local v0    # "dockIntent":Landroid/content/Intent;
    :goto_0
    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3158
    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3159
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3160
    return-void
.end method

.method updateQuotaTracker()V
    .locals 5

    .line 379
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_API_QUOTAS:Z

    invoke-virtual {v0, v1}, Lcom/android/server/utils/quota/CountQuotaTracker;->setEnabled(Z)V

    .line 380
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_COUNT:I

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v3, v3, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_WINDOW_MS:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    .line 383
    return-void
.end method

.method updateUidState(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .line 1294
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1295
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 1299
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    const/16 v2, 0x28

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 1307
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1300
    :cond_0
    const/4 v1, 0x4

    if-gt p2, v1, :cond_1

    .line 1301
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    const/16 v2, 0x23

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 1302
    :cond_1
    const/4 v1, 0x5

    if-gt p2, v1, :cond_2

    .line 1303
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    const/16 v2, 0x1e

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 1305
    :cond_2
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1307
    :goto_0
    monitor-exit v0

    .line 1308
    return-void

    .line 1307
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
