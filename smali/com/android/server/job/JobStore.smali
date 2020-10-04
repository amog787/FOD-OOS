.class public final Lcom/android/server/job/JobStore;
.super Ljava/lang/Object;
.source "JobStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobStore$JobSet;,
        Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final JOBS_FILE_VERSION:I = 0x0

.field private static final JOB_PERSIST_DELAY:J = 0x7d0L

.field private static final TAG:Ljava/lang/String; = "JobStore"

.field private static final XML_TAG_EXTRAS:Ljava/lang/String; = "extras"

.field private static final XML_TAG_ONEOFF:Ljava/lang/String; = "one-off"

.field private static final XML_TAG_PARAMS_CONSTRAINTS:Ljava/lang/String; = "constraints"

.field private static final XML_TAG_PERIODIC:Ljava/lang/String; = "periodic"

.field private static sSingleton:Lcom/android/server/job/JobStore;

.field private static final sSingletonLock:Ljava/lang/Object;


# instance fields
.field final mContext:Landroid/content/Context;

.field private final mIoHandler:Landroid/os/Handler;

.field final mJobSet:Lcom/android/server/job/JobStore$JobSet;

.field private final mJobsFile:Landroid/util/AtomicFile;

.field final mLock:Ljava/lang/Object;

.field private mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

.field private mRtcGood:Z

.field private mWriteInProgress:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mWriteScheduleLock"
        }
    .end annotation
.end field

.field private final mWriteRunnable:Ljava/lang/Runnable;

.field final mWriteScheduleLock:Ljava/lang/Object;

.field private mWriteScheduled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mWriteScheduleLock"
        }
    .end annotation
.end field

.field private final mXmlTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/job/JobStore;->DEBUG:Z

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/job/JobStore;->sSingletonLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "dataDir"    # Ljava/io/File;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/JobStore;->mIoHandler:Landroid/os/Handler;

    .line 112
    new-instance v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    invoke-direct {v0}, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    .line 379
    new-instance v0, Lcom/android/server/job/JobStore$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobStore$1;-><init>(Lcom/android/server/job/JobStore;)V

    iput-object v0, p0, Lcom/android/server/job/JobStore;->mWriteRunnable:Ljava/lang/Runnable;

    .line 139
    iput-object p2, p0, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    .line 140
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    .line 141
    iput-object p1, p0, Lcom/android/server/job/JobStore;->mContext:Landroid/content/Context;

    .line 143
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "system"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    .local v0, "systemDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "job"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 145
    .local v1, "jobDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 146
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "jobs.xml"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v4, "jobs"

    invoke-direct {v2, v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/job/JobStore;->mJobsFile:Landroid/util/AtomicFile;

    .line 148
    new-instance v2, Lcom/android/server/job/JobStore$JobSet;

    invoke-direct {v2}, Lcom/android/server/job/JobStore$JobSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 161
    iget-object v2, p0, Lcom/android/server/job/JobStore;->mJobsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/job/JobStore;->mXmlTimestamp:J

    .line 162
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/job/JobStore;->mXmlTimestamp:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/job/JobStore;->mRtcGood:Z

    .line 164
    iget-object v2, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    iget-boolean v3, p0, Lcom/android/server/job/JobStore;->mRtcGood:Z

    invoke-virtual {p0, v2, v3}, Lcom/android/server/job/JobStore;->readJobMapFromDisk(Lcom/android/server/job/JobStore$JobSet;Z)V

    .line 165
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/job/JobStore;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/JobStore;
    .param p1, "x1"    # Z

    .line 84
    iput-boolean p1, p0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    return p1
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 84
    sget-boolean v0, Lcom/android/server/job/JobStore;->DEBUG:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/job/JobStore;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/JobStore;
    .param p1, "x1"    # Z

    .line 84
    iput-boolean p1, p0, Lcom/android/server/job/JobStore;->mWriteInProgress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/JobStatus;

    .line 84
    invoke-static {p0}, Lcom/android/server/job/JobStore;->isSyncJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/JobStore;

    .line 84
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobsFile:Landroid/util/AtomicFile;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/JobStore;

    .line 84
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    return-object v0
.end method

.method static synthetic access$600(Landroid/util/Pair;J)Landroid/util/Pair;
    .locals 1
    .param p0, "x0"    # Landroid/util/Pair;
    .param p1, "x1"    # J

    .line 84
    invoke-static {p0, p1, p2}, Lcom/android/server/job/JobStore;->convertRtcBoundsToElapsed(Landroid/util/Pair;J)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static convertRtcBoundsToElapsed(Landroid/util/Pair;J)Landroid/util/Pair;
    .locals 10
    .param p1, "nowElapsed"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 612
    .local p0, "rtcTimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 613
    .local v0, "nowWallclock":J
    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 614
    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-long/2addr v2, p1

    goto :goto_0

    .line 615
    :cond_0
    move-wide v2, v4

    :goto_0
    nop

    .line 616
    .local v2, "earliest":J
    iget-object v6, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 617
    iget-object v6, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    add-long v8, p1, v4

    goto :goto_1

    .line 618
    :cond_1
    nop

    :goto_1
    move-wide v4, v8

    .line 619
    .local v4, "latest":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    return-object v6
.end method

.method static initAndGet(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/JobStore;
    .locals 5
    .param p0, "jobManagerService"    # Lcom/android/server/job/JobSchedulerService;

    .line 116
    sget-object v0, Lcom/android/server/job/JobStore;->sSingletonLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_0
    sget-object v1, Lcom/android/server/job/JobStore;->sSingleton:Lcom/android/server/job/JobStore;

    if-nez v1, :cond_0

    .line 118
    new-instance v1, Lcom/android/server/job/JobStore;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 119
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getLock()Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/job/JobStore;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;)V

    sput-object v1, Lcom/android/server/job/JobStore;->sSingleton:Lcom/android/server/job/JobStore;

    .line 121
    :cond_0
    sget-object v1, Lcom/android/server/job/JobStore;->sSingleton:Lcom/android/server/job/JobStore;

    monitor-exit v0

    return-object v1

    .line 122
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static initAndGetForTesting(Landroid/content/Context;Ljava/io/File;)Lcom/android/server/job/JobStore;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dataDir"    # Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 130
    new-instance v0, Lcom/android/server/job/JobStore;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/job/JobStore;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;)V

    .line 131
    .local v0, "jobStoreUnderTest":Lcom/android/server/job/JobStore;
    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->clear()V

    .line 132
    return-object v0
.end method

.method private static isSyncJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 2
    .param p0, "status"    # Lcom/android/server/job/controllers/JobStatus;

    .line 623
    const-class v0, Lcom/android/server/content/SyncJobService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 624
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 623
    return v0
.end method

.method static synthetic lambda$getRtcCorrectedJobsLocked$0(JLandroid/app/IActivityManager;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 18
    .param p0, "elapsedNow"    # J
    .param p2, "am"    # Landroid/app/IActivityManager;
    .param p3, "toAdd"    # Ljava/util/ArrayList;
    .param p4, "toRemove"    # Ljava/util/ArrayList;
    .param p5, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 188
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/job/controllers/JobStatus;->getPersistedUtcTimes()Landroid/util/Pair;

    move-result-object v0

    .line 189
    .local v0, "utcTimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    .line 190
    nop

    .line 191
    move-wide/from16 v1, p0

    invoke-static {v0, v1, v2}, Lcom/android/server/job/JobStore;->convertRtcBoundsToElapsed(Landroid/util/Pair;J)Landroid/util/Pair;

    move-result-object v3

    .line 192
    .local v3, "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v17, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/job/controllers/JobStatus;->getBaseHeartbeat()J

    move-result-wide v6

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    .line 193
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    .line 194
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/job/controllers/JobStatus;->getLastSuccessfulRunTime()J

    move-result-wide v13

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v15

    move-object/from16 v4, v17

    move-object/from16 v5, p5

    invoke-direct/range {v4 .. v16}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJJIJJ)V

    .line 195
    .local v4, "newJob":Lcom/android/server/job/controllers/JobStatus;
    move-object/from16 v5, p2

    invoke-virtual {v4, v5}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked(Landroid/app/IActivityManager;)V

    .line 196
    move-object/from16 v6, p3

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-virtual/range {p4 .. p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    .end local v3    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v4    # "newJob":Lcom/android/server/job/controllers/JobStatus;
    :cond_0
    move-wide/from16 v1, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 199
    :goto_0
    return-void
.end method

.method private maybeWriteStatusToDiskAsync()V
    .locals 5

    .line 331
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    if-nez v1, :cond_1

    .line 333
    sget-boolean v1, Lcom/android/server/job/JobStore;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 334
    const-string v1, "JobStore"

    const-string v2, "Scheduling persist of jobs to disk."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobStore;->mIoHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/job/JobStore;->mWriteRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 337
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/job/JobStore;->mWriteInProgress:Z

    iput-boolean v1, p0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    .line 339
    :cond_1
    monitor-exit v0

    .line 340
    return-void

    .line 339
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public add(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 3
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 209
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 210
    .local v0, "replaced":Z
    iget-object v1, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobStore$JobSet;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 211
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    .line 214
    :cond_0
    sget-boolean v1, Lcom/android/server/job/JobStore;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added job status to store: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JobStore"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_1
    return v0
.end method

.method public clear()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore$JobSet;->clear()V

    .line 266
    invoke-direct {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    .line 267
    return-void
.end method

.method public clockNowValidToInflate(J)Z
    .locals 2
    .param p1, "now"    # J

    .line 172
    iget-wide v0, p0, Lcom/android/server/job/JobStore;->mXmlTimestamp:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method containsJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 221
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0
.end method

.method public countJobsForUid(I)I
    .locals 1
    .param p1, "uid"    # I

    .line 233
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->countJobsForUid(I)I

    move-result v0

    return v0
.end method

.method public forEachJob(ILjava/util/function/Consumer;)V
    .locals 1
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 310
    .local p2, "functor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/JobStore$JobSet;->forEachJob(ILjava/util/function/Consumer;)V

    .line 311
    return-void
.end method

.method public forEachJob(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 301
    .local p1, "functor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/job/JobStore$JobSet;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 302
    return-void
.end method

.method public forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 306
    .local p1, "filterPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local p2, "functor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/JobStore$JobSet;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 307
    return-void
.end method

.method public forEachJobForSourceUid(ILjava/util/function/Consumer;)V
    .locals 1
    .param p1, "sourceUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 314
    .local p2, "functor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/JobStore$JobSet;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    .line 315
    return-void
.end method

.method public getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;
    .locals 1
    .param p1, "uid"    # I
    .param p2, "jobId"    # I

    .line 291
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/JobStore$JobSet;->get(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    return-object v0
.end method

.method public getJobsByUid(I)Ljava/util/List;
    .locals 1
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->getJobsByUid(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getJobsByUser(I)Ljava/util/List;
    .locals 1
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->getJobsByUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    return-object v0
.end method

.method public getRtcCorrectedJobsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 182
    .local p1, "toAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/job/controllers/JobStatus;>;"
    .local p2, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/job/controllers/JobStatus;>;"
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    .line 183
    .local v7, "elapsedNow":J
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 187
    .local v0, "am":Landroid/app/IActivityManager;
    new-instance v9, Lcom/android/server/job/-$$Lambda$JobStore$aR-nUP_cO7r3CFj_LAjeNjVBP-4;

    move-object v1, v9

    move-wide v2, v7

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/job/-$$Lambda$JobStore$aR-nUP_cO7r3CFj_LAjeNjVBP-4;-><init>(JLandroid/app/IActivityManager;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v9}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 200
    return-void
.end method

.method public jobTimesInflatedValid()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/android/server/job/JobStore;->mRtcGood:Z

    return v0
.end method

.method public readJobMapFromDisk(Lcom/android/server/job/JobStore$JobSet;Z)V
    .locals 1
    .param p1, "jobSet"    # Lcom/android/server/job/JobStore$JobSet;
    .param p2, "rtcGood"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 344
    new-instance v0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;-><init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$JobSet;Z)V

    invoke-virtual {v0}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->run()V

    .line 345
    return-void
.end method

.method public remove(Lcom/android/server/job/controllers/JobStatus;Z)Z
    .locals 3
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "writeBack"    # Z

    .line 242
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 243
    .local v0, "removed":Z
    if-nez v0, :cond_1

    .line 244
    sget-boolean v1, Lcom/android/server/job/JobStore;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t remove job: didn\'t exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JobStore"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 249
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 250
    invoke-direct {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    .line 252
    :cond_2
    return v0
.end method

.method public removeJobsOfNonUsers([I)V
    .locals 1
    .param p1, "whitelist"    # [I

    .line 260
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->removeJobsOfNonUsers([I)V

    .line 261
    return-void
.end method

.method public size()I
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore$JobSet;->size()I

    move-result v0

    return v0
.end method

.method public waitForWriteToCompleteForTesting(J)Z
    .locals 10
    .param p1, "maxWaitMillis"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 355
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 356
    .local v0, "start":J
    add-long v2, v0, p1

    .line 357
    .local v2, "end":J
    iget-object v4, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    monitor-enter v4

    .line 358
    :goto_0
    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/job/JobStore;->mWriteInProgress:Z

    if-eqz v5, :cond_1

    .line 359
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 360
    .local v5, "now":J
    cmp-long v7, v5, v2

    if-ltz v7, :cond_0

    .line 362
    const/4 v7, 0x0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v7

    .line 365
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    sub-long v8, v5, v0

    add-long/2addr v8, p1

    invoke-virtual {v7, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    nop

    .line 370
    .end local v5    # "now":J
    goto :goto_0

    .line 366
    .restart local v5    # "now":J
    :catch_0
    move-exception v7

    .line 371
    .end local v5    # "now":J
    :cond_1
    :try_start_2
    monitor-exit v4

    .line 372
    const/4 v4, 0x1

    return v4

    .line 371
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method
