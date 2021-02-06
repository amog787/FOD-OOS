.class public final Lcom/android/server/job/JobServiceContext;
.super Ljava/lang/Object;
.source "JobServiceContext.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobServiceContext$JobServiceHandler;,
        Lcom/android/server/job/JobServiceContext$JobCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_STANDBY:Z

.field public static final EXECUTING_TIMESLICE_MILLIS:J = 0x927c0L

.field private static final MSG_TIMEOUT:I = 0x0

.field public static final NO_PREFERRED_UID:I = -0x1

.field private static final OP_BIND_TIMEOUT_MILLIS:J = 0x4650L

.field private static final OP_TIMEOUT_MILLIS:J = 0x1f40L

.field private static final TAG:Ljava/lang/String; = "JobServiceContext"

.field static final VERB_BINDING:I = 0x0

.field static final VERB_EXECUTING:I = 0x2

.field static final VERB_FINISHED:I = 0x4

.field static final VERB_STARTING:I = 0x1

.field static final VERB_STOPPING:I = 0x3

.field private static final VERB_STRINGS:[Ljava/lang/String;


# instance fields
.field private debug:Z

.field private isMonitoring:Z

.field private isTiming:Z

.field private mAvailable:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mCallbackHandler:Landroid/os/Handler;

.field private mCancelled:Z

.field private final mCompletedListener:Lcom/android/server/job/JobCompletedListener;

.field private final mContext:Landroid/content/Context;

.field private mExecutionStartTimeElapsed:J

.field private final mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

.field private final mLock:Ljava/lang/Object;

.field private mParams:Landroid/app/job/JobParameters;

.field private mPreferredUid:I

.field private mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

.field private mRunningJob:Lcom/android/server/job/controllers/JobStatus;

.field public mStoppedReason:Ljava/lang/String;

.field public mStoppedTime:J

.field private mTimeoutElapsed:J

.field mVerb:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field service:Landroid/app/job/IJobService;

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 78
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    .line 79
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    sput-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG_STANDBY:Z

    .line 89
    const-string v0, "VERB_BINDING"

    const-string v1, "VERB_STARTING"

    const-string v2, "VERB_EXECUTING"

    const-string v3, "VERB_STOPPING"

    const-string v4, "VERB_FINISHED"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Lcom/android/server/job/JobCompletedListener;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p4, "tracker"    # Lcom/android/server/job/JobPackageTracker;
    .param p5, "completedListener"    # Lcom/android/server/job/JobCompletedListener;
    .param p6, "looper"    # Landroid/os/Looper;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 897
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    iput-boolean v0, p0, Lcom/android/server/job/JobServiceContext;->debug:Z

    .line 898
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/JobServiceContext;->isTiming:Z

    .line 899
    iput-boolean v0, p0, Lcom/android/server/job/JobServiceContext;->isMonitoring:Z

    .line 900
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/job/JobServiceContext;->startTime:J

    .line 190
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    .line 191
    iput-object p2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    .line 192
    iput-object p3, p0, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 193
    iput-object p4, p0, Lcom/android/server/job/JobServiceContext;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 194
    new-instance v0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;

    invoke-direct {v0, p0, p6}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;-><init>(Lcom/android/server/job/JobServiceContext;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    .line 195
    iput-object p5, p0, Lcom/android/server/job/JobServiceContext;->mCompletedListener:Lcom/android/server/job/JobCompletedListener;

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    .line 197
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 198
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    .line 199
    return-void
.end method

.method constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Landroid/os/Looper;)V
    .locals 7
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;
    .param p2, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p3, "tracker"    # Lcom/android/server/job/JobPackageTracker;
    .param p4, "looper"    # Landroid/os/Looper;

    .line 184
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getLock()Ljava/lang/Object;

    move-result-object v2

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/JobServiceContext;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Lcom/android/server/job/JobCompletedListener;Landroid/os/Looper;)V

    .line 185
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/job/JobServiceContext;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/JobServiceContext;

    .line 77
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/JobServiceContext$JobCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/JobServiceContext;

    .line 77
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/job/JobServiceContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/JobServiceContext;

    .line 77
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->handleOpTimeoutLocked()V

    return-void
.end method

.method private applyStoppedReasonLocked(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 841
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 842
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    .line 843
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedTime:J

    .line 844
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    if-eqz v0, :cond_0

    .line 845
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedReason:Ljava/lang/String;

    .line 846
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    iget-wide v1, p0, Lcom/android/server/job/JobServiceContext;->mStoppedTime:J

    iput-wide v1, v0, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedTime:J

    .line 849
    :cond_0
    return-void
.end method

.method private assertCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)V
    .locals 5
    .param p1, "cb"    # Lcom/android/server/job/JobServiceContext$JobCallback;

    .line 500
    invoke-direct {p0, p1}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 502
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Caller no longer running"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    iget-object v1, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedReason:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 504
    const-string v1, ", last stopped "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 506
    const-string v1, " because: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    iget-object v1, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 511
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private closeAndCleanupJobLocked(ZLjava/lang/String;)V
    .locals 22
    .param p1, "reschedule"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 800
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget v0, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 801
    return-void

    .line 803
    :cond_0
    invoke-direct {v1, v2}, Lcom/android/server/job/JobServiceContext;->applyStoppedReasonLocked(Ljava/lang/String;)V

    .line 804
    iget-object v4, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 805
    .local v4, "completedJob":Lcom/android/server/job/controllers/JobStatus;
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    iget-object v5, v1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v5}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v5

    invoke-virtual {v0, v4, v5, v2}, Lcom/android/server/job/JobPackageTracker;->noteInactive(Lcom/android/server/job/controllers/JobStatus;ILjava/lang/String;)V

    .line 806
    const/16 v6, 0x8

    .line 807
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 809
    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v11

    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v12

    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v13

    .line 810
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v14

    .line 811
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->hasBatteryNotLowConstraint()Z

    move-result v15

    .line 812
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->hasStorageNotLowConstraint()Z

    move-result v16

    .line 813
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v17

    .line 814
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v18

    .line 815
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v19

    .line 816
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v20

    .line 817
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v21

    .line 806
    invoke-static/range {v6 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;IIIIZZZZZZZZ)V

    .line 819
    :try_start_0
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v5, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    iget-object v7, v1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 820
    invoke-virtual {v7}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v7

    .line 819
    invoke-interface {v0, v5, v6, v7}, Lcom/android/internal/app/IBatteryStats;->noteJobFinish(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    goto :goto_0

    .line 821
    :catch_0
    move-exception v0

    .line 824
    :goto_0
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 825
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 827
    :cond_1
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 828
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 829
    iput-object v0, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 830
    iput-object v0, v1, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    .line 831
    iput-object v0, v1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 832
    iput v3, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 833
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/job/JobServiceContext;->mCancelled:Z

    .line 834
    iput-object v0, v1, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    .line 835
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    .line 836
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 837
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mCompletedListener:Lcom/android/server/job/JobCompletedListener;

    move/from16 v3, p1

    invoke-interface {v0, v4, v3}, Lcom/android/server/job/JobCompletedListener;->onJobCompletedLocked(Lcom/android/server/job/controllers/JobStatus;Z)V

    .line 838
    return-void
.end method

.method private deriveWorkSource(Lcom/android/server/job/controllers/JobStatus;)Landroid/os/WorkSource;
    .locals 5
    .param p1, "runningJob"    # Lcom/android/server/job/controllers/JobStatus;

    .line 464
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 465
    .local v0, "jobUid":I
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/WorkSource;->isChainedBatteryAttributionEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 466
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    .line 467
    .local v1, "workSource":Landroid/os/WorkSource;
    invoke-virtual {v1}, Landroid/os/WorkSource;->createWorkChain()Landroid/os/WorkSource$WorkChain;

    move-result-object v2

    const/4 v3, 0x0

    .line 468
    invoke-virtual {v2, v0, v3}, Landroid/os/WorkSource$WorkChain;->addNode(ILjava/lang/String;)Landroid/os/WorkSource$WorkChain;

    move-result-object v2

    const/16 v3, 0x3e8

    .line 469
    const-string v4, "JobScheduler"

    invoke-virtual {v2, v3, v4}, Landroid/os/WorkSource$WorkChain;->addNode(ILjava/lang/String;)Landroid/os/WorkSource$WorkChain;

    .line 470
    return-object v1

    .line 472
    .end local v1    # "workSource":Landroid/os/WorkSource;
    :cond_0
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, v0}, Landroid/os/WorkSource;-><init>(I)V

    return-object v1
.end method

.method private getRunningJobNameLocked()Ljava/lang/String;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "<null>"

    :goto_0
    return-object v0
.end method

.method private handleCancelLocked(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 704
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v1, "JobServiceContext"

    if-eqz v0, :cond_0

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling cancel for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_0
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelling a job without a valid verb: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 719
    :cond_1
    goto :goto_0

    .line 715
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    .line 716
    goto :goto_0

    .line 711
    :cond_3
    iput-boolean v2, p0, Lcom/android/server/job/JobServiceContext;->mCancelled:Z

    .line 712
    invoke-direct {p0, p1}, Lcom/android/server/job/JobServiceContext;->applyStoppedReasonLocked(Ljava/lang/String;)V

    .line 713
    nop

    .line 724
    :goto_0
    return-void
.end method

.method private handleFinishedLocked(ZLjava/lang/String;)V
    .locals 3
    .param p1, "reschedule"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 681
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got an execution complete message for a job that wasn\'t beingexecuted. Was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobServiceContext"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 684
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 685
    nop

    .line 690
    :goto_0
    return-void
.end method

.method private handleOpTimeoutLocked()V
    .locals 7

    .line 729
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const-string v1, ", dropping."

    const/4 v2, 0x0

    const-string v3, "JobServiceContext"

    if-eqz v0, :cond_3

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eq v0, v5, :cond_1

    if-eq v0, v6, :cond_0

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handling timeout for an invalid job state: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 761
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const-string/jumbo v0, "invalid timeout"

    invoke-direct {p0, v2, v0}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 745
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No response from client for onStopJob "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 745
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const-string/jumbo v0, "timed out while stopping"

    invoke-direct {p0, v4, v0}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 748
    goto :goto_0

    .line 751
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client timed out while executing (no jobFinished received), sending onStop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 751
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->stopTiming()V

    .line 757
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    const-string v1, "client timed out"

    invoke-virtual {v0, v6, v1}, Landroid/app/job/JobParameters;->setStopReason(ILjava/lang/String;)V

    .line 758
    const-string/jumbo v0, "timeout while executing"

    invoke-direct {p0, v0}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    .line 759
    goto :goto_0

    .line 739
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No response from client for onStartJob "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 739
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const-string/jumbo v0, "timed out while starting"

    invoke-direct {p0, v2, v0}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 742
    goto :goto_0

    .line 731
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time-out while trying to bind "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const-string/jumbo v0, "timed out while binding"

    invoke-direct {p0, v2, v0}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 734
    nop

    .line 765
    :goto_0
    return-void
.end method

.method private handleServiceBoundLocked()V
    .locals 4

    .line 609
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    const-string v1, "JobServiceContext"

    if-eqz v0, :cond_0

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleServiceBound for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_0
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    if-eqz v0, :cond_1

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending onStartJob for a job that isn\'t pending. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/4 v0, 0x0

    const-string/jumbo v1, "started job not pending"

    invoke-direct {p0, v0, v1}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 616
    return-void

    .line 618
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/job/JobServiceContext;->mCancelled:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 619
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Job cancelled while waiting for bind to complete. "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_2
    const-string v0, "cancelled while waiting for bind"

    invoke-direct {p0, v2, v0}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 624
    return-void

    .line 627
    :cond_3
    :try_start_0
    iput v2, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 628
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    .line 629
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-interface {v0, v2}, Landroid/app/job/IJobService;->startJob(Landroid/app/job/JobParameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    goto :goto_0

    .line 630
    :catch_0
    move-exception v0

    .line 634
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending onStart message to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 635
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 634
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 637
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private handleStartedLocked(Z)V
    .locals 4
    .param p1, "workOngoing"    # Z

    .line 648
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const-string v1, "JobServiceContext"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling started job but job wasn\'t starting! Was "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    return-void

    .line 650
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 651
    if-nez p1, :cond_1

    .line 653
    const/4 v0, 0x0

    const-string/jumbo v1, "onStartJob returned false"

    invoke-direct {p0, v0, v1}, Lcom/android/server/job/JobServiceContext;->handleFinishedLocked(ZLjava/lang/String;)V

    .line 654
    return-void

    .line 656
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/job/JobServiceContext;->mCancelled:Z

    if-eqz v0, :cond_3

    .line 657
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 658
    const-string v0, "Job cancelled while waiting for onStartJob to complete."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/job/JobServiceContext;->handleCancelLocked(Ljava/lang/String;)V

    .line 662
    return-void

    .line 664
    :cond_3
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    .line 665
    nop

    .line 671
    return-void
.end method

.method private removeOpTimeOutLocked()V
    .locals 2

    .line 890
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->stopTiming()V

    .line 892
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 893
    return-void
.end method

.method private scheduleOpTimeOutLocked()V
    .locals 5

    .line 857
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 860
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 874
    const-wide/16 v0, 0x1f40

    .local v0, "timeoutMillis":J
    goto :goto_0

    .line 864
    .end local v0    # "timeoutMillis":J
    :cond_0
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->startTiming()V

    .line 866
    const-wide/32 v0, 0x927c0

    .line 867
    .restart local v0    # "timeoutMillis":J
    goto :goto_0

    .line 870
    .end local v0    # "timeoutMillis":J
    :cond_1
    const-wide/16 v0, 0x4650

    .line 871
    .restart local v0    # "timeoutMillis":J
    nop

    .line 877
    :goto_0
    sget-boolean v2, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 878
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling time out for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 879
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' jId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 880
    invoke-virtual {v3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 878
    const-string v3, "JobServiceContext"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_2
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 883
    .local v2, "m":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 884
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/android/server/job/JobServiceContext;->mTimeoutElapsed:J

    .line 885
    return-void
.end method

.method private sendStopMessageLocked(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 773
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 774
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const-string v1, "JobServiceContext"

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending onStopJob for a job that isn\'t started. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 777
    return-void

    .line 780
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/job/JobServiceContext;->applyStoppedReasonLocked(Ljava/lang/String;)V

    .line 781
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 782
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    .line 783
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-interface {v0, v2}, Landroid/app/job/IJobService;->stopJob(Landroid/app/job/JobParameters;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    goto :goto_0

    .line 784
    :catch_0
    move-exception v0

    .line 785
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Error sending onStopJob to client."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 787
    const/4 v1, 0x1

    const-string v2, "host crashed when trying to stop"

    invoke-direct {p0, v1, v2}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 789
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private startTiming()V
    .locals 3

    .line 902
    iget-boolean v0, p0, Lcom/android/server/job/JobServiceContext;->isTiming:Z

    if-nez v0, :cond_0

    .line 903
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/JobServiceContext;->isTiming:Z

    .line 904
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/JobServiceContext;->startTime:J

    .line 906
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v1, :cond_0

    .line 907
    invoke-static {v1}, Lcom/android/server/am/OpStartAppControlInjector;->isJobRestrict(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 908
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-static {p0, v1}, Lcom/android/server/am/OpStartAppControlInjector;->startJobMonitoring(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 909
    iput-boolean v0, p0, Lcom/android/server/job/JobServiceContext;->isMonitoring:Z

    .line 913
    :cond_0
    return-void
.end method

.method private stopTiming()V
    .locals 7

    .line 916
    iget-boolean v0, p0, Lcom/android/server/job/JobServiceContext;->isTiming:Z

    if-eqz v0, :cond_2

    .line 917
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/JobServiceContext;->isTiming:Z

    .line 918
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/job/JobServiceContext;->startTime:J

    sub-long/2addr v1, v3

    .line 919
    .local v1, "duration":J
    iget-boolean v3, p0, Lcom/android/server/job/JobServiceContext;->isMonitoring:Z

    if-eqz v3, :cond_0

    .line 920
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-static {p0, v3}, Lcom/android/server/am/OpStartAppControlInjector;->stopJobMonitoring(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 922
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/job/JobServiceContext;->isMonitoring:Z

    .line 924
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v0, :cond_2

    .line 925
    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->getJobTimeout()J

    move-result-wide v3

    .line 926
    .local v3, "timeOut":J
    iget-boolean v0, p0, Lcom/android/server/job/JobServiceContext;->debug:Z

    if-eqz v0, :cond_1

    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JOB EXECUTING INFO pkg:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " uid:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " tag:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 928
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " duration:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " timeOut:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 927
    const-string v5, "JobServiceContext"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_1
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    cmp-long v0, v1, v3

    if-lez v0, :cond_2

    .line 932
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OpStartAppControlInjector;->reportRestrictJob(Ljava/lang/Object;J)V

    .line 936
    .end local v1    # "duration":J
    .end local v3    # "timeOut":J
    :cond_2
    return-void
.end method

.method private verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z
    .locals 2
    .param p1, "cb"    # Lcom/android/server/job/JobServiceContext$JobCallback;

    .line 490
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    if-eq v0, p1, :cond_1

    .line 491
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 492
    const-string v0, "JobServiceContext"

    const-string v1, "Stale callback received, ignoring."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 496
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method cancelExecutingJobLocked(ILjava/lang/String;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "debugReason"    # Ljava/lang/String;

    .line 331
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobServiceContext;->doCancelLocked(ILjava/lang/String;)V

    .line 332
    return-void
.end method

.method clearPreferredUid()V
    .locals 1

    .line 344
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    .line 345
    return-void
.end method

.method doAcknowledgeStartMessage(Lcom/android/server/job/JobServiceContext$JobCallback;IZ)V
    .locals 1
    .param p1, "cb"    # Lcom/android/server/job/JobServiceContext$JobCallback;
    .param p2, "jobId"    # I
    .param p3, "ongoing"    # Z

    .line 380
    const-string v0, "finished start"

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/job/JobServiceContext;->doCallback(Lcom/android/server/job/JobServiceContext$JobCallback;ZLjava/lang/String;)V

    .line 381
    return-void
.end method

.method doAcknowledgeStopMessage(Lcom/android/server/job/JobServiceContext$JobCallback;IZ)V
    .locals 1
    .param p1, "cb"    # Lcom/android/server/job/JobServiceContext$JobCallback;
    .param p2, "jobId"    # I
    .param p3, "reschedule"    # Z

    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/job/JobServiceContext;->doCallback(Lcom/android/server/job/JobServiceContext$JobCallback;ZLjava/lang/String;)V

    .line 377
    return-void
.end method

.method doCallback(Lcom/android/server/job/JobServiceContext$JobCallback;ZLjava/lang/String;)V
    .locals 4
    .param p1, "cb"    # Lcom/android/server/job/JobServiceContext$JobCallback;
    .param p2, "reschedule"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 556
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 558
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 559
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 560
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 565
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 560
    return-void

    .line 562
    :cond_0
    :try_start_2
    invoke-virtual {p0, p2, p3}, Lcom/android/server/job/JobServiceContext;->doCallbackLocked(ZLjava/lang/String;)V

    .line 563
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 565
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 566
    nop

    .line 567
    return-void

    .line 563
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/job/JobServiceContext;
    .end local p1    # "cb":Lcom/android/server/job/JobServiceContext$JobCallback;
    .end local p2    # "reschedule":Z
    .end local p3    # "reason":Ljava/lang/String;
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 565
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/job/JobServiceContext;
    .restart local p1    # "cb":Lcom/android/server/job/JobServiceContext$JobCallback;
    .restart local p2    # "reschedule":Z
    .restart local p3    # "reason":Ljava/lang/String;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 566
    throw v2
.end method

.method doCallbackLocked(ZLjava/lang/String;)V
    .locals 4
    .param p1, "reschedule"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 571
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    const-string v1, "JobServiceContext"

    if-eqz v0, :cond_0

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCallback of : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " v:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_0
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 577
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 578
    invoke-direct {p0, p1}, Lcom/android/server/job/JobServiceContext;->handleStartedLocked(Z)V

    goto :goto_1

    .line 579
    :cond_1
    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 583
    :cond_2
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognised callback: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 581
    :cond_3
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobServiceContext;->handleFinishedLocked(ZLjava/lang/String;)V

    .line 587
    :cond_4
    :goto_1
    return-void
.end method

.method doCancelLocked(ILjava/lang/String;)V
    .locals 2
    .param p1, "arg1"    # I
    .param p2, "debugReason"    # Ljava/lang/String;

    .line 591
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 592
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 593
    const-string v0, "JobServiceContext"

    const-string v1, "Trying to process cancel for torn-down context, ignoring."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_0
    return-void

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v0, p1, p2}, Landroid/app/job/JobParameters;->setStopReason(ILjava/lang/String;)V

    .line 599
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 600
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    goto :goto_0

    .line 601
    :cond_2
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    .line 603
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/job/JobServiceContext;->handleCancelLocked(Ljava/lang/String;)V

    .line 604
    return-void
.end method

.method doCompleteWork(Lcom/android/server/job/JobServiceContext$JobCallback;II)Z
    .locals 4
    .param p1, "cb"    # Lcom/android/server/job/JobServiceContext$JobCallback;
    .param p2, "jobId"    # I
    .param p3, "workId"    # I

    .line 407
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 409
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 410
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/job/JobServiceContext;->assertCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)V

    .line 411
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v3, p3}, Lcom/android/server/job/controllers/JobStatus;->completeWorkLocked(I)Z

    move-result v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 411
    return v3

    .line 412
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/job/JobServiceContext;
    .end local p1    # "cb":Lcom/android/server/job/JobServiceContext$JobCallback;
    .end local p2    # "jobId":I
    .end local p3    # "workId":I
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 414
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/job/JobServiceContext;
    .restart local p1    # "cb":Lcom/android/server/job/JobServiceContext$JobCallback;
    .restart local p2    # "jobId":I
    .restart local p3    # "workId":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 415
    throw v2
.end method

.method doDequeueWork(Lcom/android/server/job/JobServiceContext$JobCallback;I)Landroid/app/job/JobWorkItem;
    .locals 6
    .param p1, "cb"    # Lcom/android/server/job/JobServiceContext$JobCallback;
    .param p2, "jobId"    # I

    .line 384
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 386
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 387
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/job/JobServiceContext;->assertCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)V

    .line 388
    iget v3, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 394
    :cond_0
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->dequeueWorkLocked()Landroid/app/job/JobWorkItem;

    move-result-object v3

    .line 395
    .local v3, "work":Landroid/app/job/JobWorkItem;
    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->hasExecutingWorkLocked()Z

    move-result v4

    if-nez v4, :cond_1

    .line 397
    const/4 v4, 0x0

    const-string/jumbo v5, "last work dequeued"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/job/JobServiceContext;->doCallbackLocked(ZLjava/lang/String;)V

    .line 399
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 399
    return-object v3

    .line 392
    .end local v3    # "work":Landroid/app/job/JobWorkItem;
    :cond_2
    :goto_0
    const/4 v3, 0x0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 402
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 392
    return-object v3

    .line 400
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/job/JobServiceContext;
    .end local p1    # "cb":Lcom/android/server/job/JobServiceContext$JobCallback;
    .end local p2    # "jobId":I
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 402
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/job/JobServiceContext;
    .restart local p1    # "cb":Lcom/android/server/job/JobServiceContext$JobCallback;
    .restart local p2    # "jobId":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 403
    throw v2
.end method

.method doJobFinished(Lcom/android/server/job/JobServiceContext$JobCallback;IZ)V
    .locals 1
    .param p1, "cb"    # Lcom/android/server/job/JobServiceContext$JobCallback;
    .param p2, "jobId"    # I
    .param p3, "reschedule"    # Z

    .line 372
    const-string v0, "app called jobFinished"

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/job/JobServiceContext;->doCallback(Lcom/android/server/job/JobServiceContext$JobCallback;ZLjava/lang/String;)V

    .line 373
    return-void
.end method

.method doServiceBoundLocked()V
    .locals 0

    .line 551
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 552
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->handleServiceBoundLocked()V

    .line 553
    return-void
.end method

.method executeRunnableJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 36
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 208
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 209
    :try_start_0
    iget-boolean v0, v1, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 210
    const-string v0, "JobServiceContext"

    const-string v5, "Starting new runnable but context is unavailable > Error."

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    monitor-exit v3

    return v4

    .line 214
    :cond_0
    const/4 v0, -0x1

    iput v0, v1, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    .line 216
    iput-object v2, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 217
    new-instance v0, Lcom/android/server/job/JobServiceContext$JobCallback;

    invoke-direct {v0, v1}, Lcom/android/server/job/JobServiceContext$JobCallback;-><init>(Lcom/android/server/job/JobServiceContext;)V

    iput-object v0, v1, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    .line 218
    nop

    .line 219
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v6

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-gez v0, :cond_1

    const/4 v13, 0x1

    goto :goto_0

    :cond_1
    move v13, v4

    .line 221
    .local v13, "isDeadlineExpired":Z
    :goto_0
    const/4 v0, 0x0

    .line 222
    .local v0, "triggeredUris":[Landroid/net/Uri;
    iget-object v6, v2, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    if-eqz v6, :cond_2

    .line 223
    iget-object v6, v2, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    new-array v6, v6, [Landroid/net/Uri;

    move-object v0, v6

    .line 224
    iget-object v6, v2, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v17, v0

    goto :goto_1

    .line 222
    :cond_2
    move-object/from16 v17, v0

    .line 226
    .end local v0    # "triggeredUris":[Landroid/net/Uri;
    .local v17, "triggeredUris":[Landroid/net/Uri;
    :goto_1
    const/4 v0, 0x0

    .line 227
    .local v0, "triggeredAuthorities":[Ljava/lang/String;
    iget-object v6, v2, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    if-eqz v6, :cond_3

    .line 228
    iget-object v6, v2, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    move-object v0, v6

    .line 229
    iget-object v6, v2, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v18, v0

    goto :goto_2

    .line 227
    :cond_3
    move-object/from16 v18, v0

    .line 231
    .end local v0    # "triggeredAuthorities":[Ljava/lang/String;
    .local v18, "triggeredAuthorities":[Ljava/lang/String;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    move-object/from16 v19, v0

    .line 232
    .local v19, "ji":Landroid/app/job/JobInfo;
    new-instance v0, Landroid/app/job/JobParameters;

    iget-object v7, v1, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v8

    invoke-virtual/range {v19 .. v19}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v9

    .line 233
    invoke-virtual/range {v19 .. v19}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual/range {v19 .. v19}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v11

    invoke-virtual/range {v19 .. v19}, Landroid/app/job/JobInfo;->getClipGrantFlags()I

    move-result v12

    iget-object v15, v2, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    move-object v6, v0

    move-object/from16 v14, v17

    move-object/from16 v16, v15

    move-object/from16 v15, v18

    invoke-direct/range {v6 .. v16}, Landroid/app/job/JobParameters;-><init>(Landroid/os/IBinder;ILandroid/os/PersistableBundle;Landroid/os/Bundle;Landroid/content/ClipData;IZ[Landroid/net/Uri;[Ljava/lang/String;Landroid/net/Network;)V

    iput-object v0, v1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 235
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 237
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getWhenStandbyDeferred()J

    move-result-wide v6

    .line 238
    .local v6, "whenDeferred":J
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_4

    .line 239
    iget-wide v10, v1, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    sub-long/2addr v10, v6

    .line 240
    .local v10, "deferral":J
    const/16 v0, 0x1f40

    invoke-static {v0, v10, v11}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 241
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG_STANDBY:Z

    if-eqz v0, :cond_4

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v12, 0x80

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 243
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v12, "Starting job deferred for standby by "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-static {v10, v11, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 245
    const-string v12, " ms : "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string v12, "JobServiceContext"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v10    # "deferral":J
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->clearPersistedUtcTimes()V

    .line 255
    iput v4, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 256
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    .line 257
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v0

    .line 258
    .local v10, "intent":Landroid/content/Intent;
    const/4 v11, 0x0

    .line 260
    .local v11, "binding":Z
    :try_start_1
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    const/16 v12, 0x105

    .line 263
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v14

    invoke-static {v14}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v14

    .line 260
    invoke-virtual {v0, v10, v1, v12, v14}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    .end local v11    # "binding":Z
    .local v0, "binding":Z
    move v11, v0

    goto :goto_3

    .line 264
    .end local v0    # "binding":Z
    .restart local v11    # "binding":Z
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_2
    const-string v12, "JobServiceContext"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Job service "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " cannot be executed: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 268
    invoke-static {v12, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v11, 0x0

    .line 272
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_3
    const/4 v12, 0x0

    if-nez v11, :cond_6

    .line 273
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 274
    const-string v0, "JobServiceContext"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " unavailable."

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_5
    iput-object v12, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 277
    iput-object v12, v1, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    .line 278
    iput-object v12, v1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 279
    iput-wide v8, v1, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 280
    const/4 v0, 0x4

    iput v0, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 281
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 282
    monitor-exit v3

    return v4

    .line 284
    :cond_6
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobPackageTracker;->noteActive(Lcom/android/server/job/controllers/JobStatus;)V

    .line 285
    const/16 v20, 0x8

    .line 286
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v21

    const/16 v22, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    const/16 v25, -0x1

    .line 288
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v26

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v27

    .line 289
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v28

    .line 290
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasBatteryNotLowConstraint()Z

    move-result v29

    .line 291
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasStorageNotLowConstraint()Z

    move-result v30

    .line 292
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v31

    .line 293
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v32

    .line 294
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v33

    .line 295
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v34

    .line 296
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v35

    .line 285
    invoke-static/range {v20 .. v35}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;IIIIZZZZZZZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 298
    :try_start_3
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v15

    invoke-interface {v0, v14, v15}, Lcom/android/internal/app/IBatteryStats;->noteJobStart(Ljava/lang/String;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 301
    goto :goto_4

    .line 299
    :catch_1
    move-exception v0

    .line 302
    :goto_4
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "jobPackage":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v14

    .line 304
    .local v14, "jobUserId":I
    const-class v15, Landroid/app/usage/UsageStatsManagerInternal;

    .line 305
    invoke-static {v15}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/usage/UsageStatsManagerInternal;

    .line 306
    .local v15, "usageStats":Landroid/app/usage/UsageStatsManagerInternal;
    move-wide/from16 v20, v6

    .end local v6    # "whenDeferred":J
    .local v20, "whenDeferred":J
    iget-wide v5, v1, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    invoke-virtual {v15, v0, v14, v5, v6}, Landroid/app/usage/UsageStatsManagerInternal;->setLastJobRunTime(Ljava/lang/String;IJ)V

    .line 307
    iput-boolean v4, v1, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    .line 308
    iput-object v12, v1, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    .line 309
    iput-wide v8, v1, Lcom/android/server/job/JobServiceContext;->mStoppedTime:J

    .line 310
    monitor-exit v3

    const/4 v3, 0x1

    return v3

    .line 311
    .end local v0    # "jobPackage":Ljava/lang/String;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "binding":Z
    .end local v13    # "isDeadlineExpired":Z
    .end local v14    # "jobUserId":I
    .end local v15    # "usageStats":Landroid/app/usage/UsageStatsManagerInternal;
    .end local v17    # "triggeredUris":[Landroid/net/Uri;
    .end local v18    # "triggeredAuthorities":[Ljava/lang/String;
    .end local v19    # "ji":Landroid/app/job/JobInfo;
    .end local v20    # "whenDeferred":J
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method getExecutionStartTimeElapsed()J
    .locals 2

    .line 348
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    return-wide v0
.end method

.method getPreferredUid()I
    .locals 1

    .line 340
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    return v0
.end method

.method getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    return-object v0
.end method

.method getTimeoutElapsed()J
    .locals 2

    .line 352
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mTimeoutElapsed:J

    return-wide v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 428
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 432
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 434
    .local v1, "runningJob":Lcom/android/server/job/controllers/JobStatus;
    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 439
    :cond_0
    invoke-static {p2}, Landroid/app/job/IJobService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    .line 440
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    .line 441
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 442
    .local v3, "pm":Landroid/os/PowerManager;
    nop

    .line 443
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getTag()Ljava/lang/String;

    move-result-object v4

    .line 442
    invoke-virtual {v3, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 444
    .local v2, "wl":Landroid/os/PowerManager$WakeLock;
    invoke-direct {p0, v1}, Lcom/android/server/job/JobServiceContext;->deriveWorkSource(Lcom/android/server/job/controllers/JobStatus;)Landroid/os/WorkSource;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 445
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 446
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 453
    iget-object v4, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_1

    .line 454
    const-string v4, "JobServiceContext"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bound new job "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " but live wakelock "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " tag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 455
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 454
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v4, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 458
    :cond_1
    iput-object v2, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 459
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->doServiceBoundLocked()V

    .line 460
    .end local v2    # "wl":Landroid/os/PowerManager$WakeLock;
    .end local v3    # "pm":Landroid/os/PowerManager;
    monitor-exit v0

    .line 461
    return-void

    .line 435
    :cond_2
    :goto_0
    const-string v3, "connected for different component"

    invoke-direct {p0, v2, v3}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 437
    monitor-exit v0

    return-void

    .line 460
    .end local v1    # "runningJob":Lcom/android/server/job/controllers/JobStatus;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 479
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 480
    const/4 v1, 0x1

    :try_start_0
    const-string/jumbo v2, "unexpectedly disconnected"

    invoke-direct {p0, v1, v2}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 481
    monitor-exit v0

    .line 482
    return-void

    .line 481
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method preemptExecutingJobLocked()V
    .locals 2

    .line 336
    const/4 v0, 0x2

    const-string v1, "cancelled due to preemption"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobServiceContext;->doCancelLocked(ILjava/lang/String;)V

    .line 337
    return-void
.end method

.method public restrictJob()V
    .locals 3

    .line 939
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 940
    invoke-static {v0}, Lcom/android/server/am/OpStartAppControlInjector;->isJobRestrict(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JOB RESTRICT BY OPJC, pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 942
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 943
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 941
    const-string v1, "JobServiceContext"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    const/4 v1, 0x3

    const-string v2, "client restrict by OPJC"

    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobParameters;->setStopReason(ILjava/lang/String;)V

    .line 945
    const-string/jumbo v0, "timeout while executing by OPJC"

    invoke-direct {p0, v0}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    .line 947
    :cond_0
    return-void
.end method

.method timeoutIfExecutingLocked(Ljava/lang/String;IZILjava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "matchJobId"    # Z
    .param p4, "jobId"    # I
    .param p5, "reason"    # Ljava/lang/String;

    .line 358
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    .line 359
    .local v0, "executing":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v0, :cond_3

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v1

    if-ne p2, v1, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    .line 360
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    if-eqz p3, :cond_2

    .line 361
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v1

    if-ne p4, v1, :cond_3

    .line 362
    :cond_2
    iget v1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 363
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p5}, Landroid/app/job/JobParameters;->setStopReason(ILjava/lang/String;)V

    .line 364
    const-string v1, "force timeout from shell"

    invoke-direct {p0, v1}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    .line 365
    const/4 v1, 0x1

    return v1

    .line 368
    :cond_3
    const/4 v1, 0x0

    return v1
.end method
