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

.field private final mWriteRunnable:Ljava/lang/Runnable;

.field final mWriteScheduleLock:Ljava/lang/Object;

.field private mWriteScheduled:Z

.field private final mXmlTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/job/JobStore;->DEBUG:Z

    .line 104
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

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/JobStore;->mIoHandler:Landroid/os/Handler;

    .line 110
    new-instance v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    invoke-direct {v0}, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    .line 390
    new-instance v0, Lcom/android/server/job/JobStore$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobStore$1;-><init>(Lcom/android/server/job/JobStore;)V

    iput-object v0, p0, Lcom/android/server/job/JobStore;->mWriteRunnable:Ljava/lang/Runnable;

    .line 137
    iput-object p2, p0, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    .line 139
    iput-object p1, p0, Lcom/android/server/job/JobStore;->mContext:Landroid/content/Context;

    .line 141
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "system"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    .local v0, "systemDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "job"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 143
    .local v1, "jobDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 144
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "jobs.xml"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v4, "jobs"

    invoke-direct {v2, v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/job/JobStore;->mJobsFile:Landroid/util/AtomicFile;

    .line 146
    new-instance v2, Lcom/android/server/job/JobStore$JobSet;

    invoke-direct {v2}, Lcom/android/server/job/JobStore$JobSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 159
    iget-object v2, p0, Lcom/android/server/job/JobStore;->mJobsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/job/JobStore;->mXmlTimestamp:J

    .line 160
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

    .line 162
    iget-object v3, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/job/JobStore;->readJobMapFromDisk(Lcom/android/server/job/JobStore$JobSet;Z)V

    .line 163
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/job/JobStore;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/JobStore;
    .param p1, "x1"    # Z

    .line 82
    iput-boolean p1, p0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    return p1
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 82
    sget-boolean v0, Lcom/android/server/job/JobStore;->DEBUG:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/job/JobStore;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/JobStore;
    .param p1, "x1"    # Z

    .line 82
    iput-boolean p1, p0, Lcom/android/server/job/JobStore;->mWriteInProgress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/JobStatus;

    .line 82
    invoke-static {p0}, Lcom/android/server/job/JobStore;->isSyncJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/JobStore;

    .line 82
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobsFile:Landroid/util/AtomicFile;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/JobStore;

    .line 82
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    return-object v0
.end method

.method static synthetic access$600(Landroid/util/Pair;J)Landroid/util/Pair;
    .locals 1
    .param p0, "x0"    # Landroid/util/Pair;
    .param p1, "x1"    # J

    .line 82
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

    .line 623
    .local p0, "rtcTimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 624
    .local v0, "nowWallclock":J
    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 625
    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-long/2addr v2, p1

    goto :goto_0

    .line 626
    :cond_0
    move-wide v2, v4

    :goto_0
    nop

    .line 627
    .local v2, "earliest":J
    iget-object v6, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 628
    iget-object v6, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    add-long v8, p1, v4

    goto :goto_1

    .line 629
    :cond_1
    nop

    :goto_1
    move-wide v4, v8

    .line 630
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

    .line 114
    sget-object v0, Lcom/android/server/job/JobStore;->sSingletonLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_0
    sget-object v1, Lcom/android/server/job/JobStore;->sSingleton:Lcom/android/server/job/JobStore;

    if-nez v1, :cond_0

    .line 116
    new-instance v1, Lcom/android/server/job/JobStore;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 117
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getLock()Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/job/JobStore;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;)V

    sput-object v1, Lcom/android/server/job/JobStore;->sSingleton:Lcom/android/server/job/JobStore;

    .line 119
    :cond_0
    sget-object v1, Lcom/android/server/job/JobStore;->sSingleton:Lcom/android/server/job/JobStore;

    monitor-exit v0

    return-object v1

    .line 120
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

    .line 128
    new-instance v0, Lcom/android/server/job/JobStore;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/job/JobStore;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;)V

    .line 129
    .local v0, "jobStoreUnderTest":Lcom/android/server/job/JobStore;
    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->clear()V

    .line 130
    return-object v0
.end method

.method private static isSyncJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 2
    .param p0, "status"    # Lcom/android/server/job/controllers/JobStatus;

    .line 634
    const-class v0, Lcom/android/server/content/SyncJobService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 635
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 634
    return v0
.end method

.method static synthetic lambda$getRtcCorrectedJobsLocked$0(JLjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 16
    .param p0, "elapsedNow"    # J
    .param p2, "toAdd"    # Ljava/util/ArrayList;
    .param p3, "toRemove"    # Ljava/util/ArrayList;
    .param p4, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 185
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/job/controllers/JobStatus;->getPersistedUtcTimes()Landroid/util/Pair;

    move-result-object v0

    .line 186
    .local v0, "utcTimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    .line 187
    nop

    .line 188
    move-wide/from16 v1, p0

    invoke-static {v0, v1, v2}, Lcom/android/server/job/JobStore;->convertRtcBoundsToElapsed(Landroid/util/Pair;J)Landroid/util/Pair;

    move-result-object v3

    .line 189
    .local v3, "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v15, Lcom/android/server/job/controllers/JobStatus;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    .line 190
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v10, 0x0

    .line 191
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/job/controllers/JobStatus;->getLastSuccessfulRunTime()J

    move-result-wide v11

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v13

    move-object v4, v15

    move-object/from16 v5, p4

    invoke-direct/range {v4 .. v14}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJIJJ)V

    .line 192
    .local v4, "newJob":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V

    .line 193
    move-object/from16 v5, p2

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual/range {p3 .. p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    .end local v3    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v4    # "newJob":Lcom/android/server/job/controllers/JobStatus;
    :cond_0
    move-wide/from16 v1, p0

    move-object/from16 v5, p2

    .line 196
    :goto_0
    return-void
.end method

.method private maybeWriteStatusToDiskAsync()V
    .locals 5

    .line 329
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    if-nez v1, :cond_1

    .line 331
    sget-boolean v1, Lcom/android/server/job/JobStore;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 332
    const-string v1, "JobStore"

    const-string v2, "Scheduling persist of jobs to disk."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobStore;->mIoHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/job/JobStore;->mWriteRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 335
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/job/JobStore;->mWriteInProgress:Z

    iput-boolean v1, p0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    .line 337
    :cond_1
    monitor-exit v0

    .line 338
    return-void

    .line 337
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

    .line 206
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 207
    .local v0, "replaced":Z
    iget-object v1, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobStore$JobSet;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 208
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    .line 211
    :cond_0
    sget-boolean v1, Lcom/android/server/job/JobStore;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added job status to store: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JobStore"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_1
    return v0
.end method

.method public clear()V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore$JobSet;->clear()V

    .line 264
    invoke-direct {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    .line 265
    return-void
.end method

.method public clockNowValidToInflate(J)Z
    .locals 2
    .param p1, "now"    # J

    .line 170
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

    .line 218
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0
.end method

.method public countJobsForUid(I)I
    .locals 1
    .param p1, "uid"    # I

    .line 230
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

    .line 308
    .local p2, "functor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/JobStore$JobSet;->forEachJob(ILjava/util/function/Consumer;)V

    .line 309
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

    .line 299
    .local p1, "functor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/job/JobStore$JobSet;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 300
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

    .line 304
    .local p1, "filterPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local p2, "functor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/JobStore$JobSet;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 305
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

    .line 312
    .local p2, "functor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/JobStore$JobSet;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    .line 313
    return-void
.end method

.method public getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;
    .locals 1
    .param p1, "uid"    # I
    .param p2, "jobId"    # I

    .line 289
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

    .line 280
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

    .line 272
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->getJobsByUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    return-object v0
.end method

.method public getRtcCorrectedJobsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
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

    .line 180
    .local p1, "toAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/job/controllers/JobStatus;>;"
    .local p2, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/job/controllers/JobStatus;>;"
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 184
    .local v0, "elapsedNow":J
    new-instance v2, Lcom/android/server/job/-$$Lambda$JobStore$apkqpwp0Wau6LvC-MCNG2GidMkM;

    invoke-direct {v2, v0, v1, p1, p2}, Lcom/android/server/job/-$$Lambda$JobStore$apkqpwp0Wau6LvC-MCNG2GidMkM;-><init>(JLjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v2}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 197
    return-void
.end method

.method public jobTimesInflatedValid()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcom/android/server/job/JobStore;->mRtcGood:Z

    return v0
.end method

.method public readJobMapFromDisk(Lcom/android/server/job/JobStore$JobSet;Z)V
    .locals 1
    .param p1, "jobSet"    # Lcom/android/server/job/JobStore$JobSet;
    .param p2, "rtcGood"    # Z

    .line 342
    new-instance v0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;-><init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$JobSet;Z)V

    invoke-virtual {v0}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->run()V

    .line 343
    return-void
.end method

.method public remove(Lcom/android/server/job/controllers/JobStatus;Z)Z
    .locals 3
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "removeFromPersisted"    # Z

    .line 240
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 241
    .local v0, "removed":Z
    if-nez v0, :cond_1

    .line 242
    sget-boolean v1, Lcom/android/server/job/JobStore;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t remove job: didn\'t exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JobStore"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 247
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 248
    invoke-direct {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    .line 250
    :cond_2
    return v0
.end method

.method public removeJobsOfNonUsers([I)V
    .locals 1
    .param p1, "whitelist"    # [I

    .line 258
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->removeJobsOfNonUsers([I)V

    .line 259
    return-void
.end method

.method public size()I
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore$JobSet;->size()I

    move-result v0

    return v0
.end method

.method public waitForWriteToCompleteForTesting(J)Z
    .locals 10
    .param p1, "maxWaitMillis"    # J

    .line 366
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 367
    .local v0, "start":J
    add-long v2, v0, p1

    .line 368
    .local v2, "end":J
    iget-object v4, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    monitor-enter v4

    .line 369
    :goto_0
    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/job/JobStore;->mWriteInProgress:Z

    if-eqz v5, :cond_1

    .line 370
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 371
    .local v5, "now":J
    cmp-long v7, v5, v2

    if-ltz v7, :cond_0

    .line 373
    const/4 v7, 0x0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v7

    .line 376
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    sub-long v8, v5, v0

    add-long/2addr v8, p1

    invoke-virtual {v7, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    nop

    .line 381
    .end local v5    # "now":J
    goto :goto_0

    .line 377
    .restart local v5    # "now":J
    :catch_0
    move-exception v7

    .line 382
    .end local v5    # "now":J
    :cond_1
    :try_start_2
    monitor-exit v4

    .line 383
    const/4 v4, 0x1

    return v4

    .line 382
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method public writeStatusToDiskForTesting()V
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    if-nez v1, :cond_0

    .line 353
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/job/JobStore;->mWriteInProgress:Z

    iput-boolean v1, p0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    .line 354
    iget-object v1, p0, Lcom/android/server/job/JobStore;->mWriteRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 355
    monitor-exit v0

    .line 356
    return-void

    .line 350
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "An asynchronous write is already scheduled."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/job/JobStore;
    throw v1

    .line 355
    .restart local p0    # "this":Lcom/android/server/job/JobStore;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
