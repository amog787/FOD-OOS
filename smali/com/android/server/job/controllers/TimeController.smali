.class public final Lcom/android/server/job/controllers/TimeController;
.super Lcom/android/server/job/controllers/StateController;
.source "TimeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/TimeController$TcConstants;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "JobScheduler.Time"


# instance fields
.field private final DEADLINE_TAG:Ljava/lang/String;

.field private final DELAY_TAG:Ljava/lang/String;

.field private mAlarmService:Landroid/app/AlarmManager;

.field private final mChainedAttributionEnabled:Z

.field private final mDeadlineExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private final mHandler:Landroid/os/Handler;

.field private mNextDelayExpiredElapsedMillis:J

.field private final mNextDelayExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mNextJobExpiredElapsedMillis:J

.field private final mTcConstants:Lcom/android/server/job/controllers/TimeController$TcConstants;

.field private final mTrackedJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_1

    const/4 v0, 0x3

    .line 59
    const-string v1, "JobScheduler.Time"

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
    sput-boolean v0, Lcom/android/server/job/controllers/TimeController;->DEBUG:Z

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 62
    const-string v0, "*job.deadline*"

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->DEADLINE_TAG:Ljava/lang/String;

    .line 64
    const-string v0, "*job.delay*"

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->DELAY_TAG:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    .line 76
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    .line 435
    new-instance v0, Lcom/android/server/job/controllers/TimeController$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/TimeController$1;-><init>(Lcom/android/server/job/controllers/TimeController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mDeadlineExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 445
    new-instance v0, Lcom/android/server/job/controllers/TimeController$2;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/TimeController$2;-><init>(Lcom/android/server/job/controllers/TimeController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 81
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    .line 82
    iput-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    .line 83
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->isChainedAttributionEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/TimeController;->mChainedAttributionEnabled:Z

    .line 85
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/job/controllers/TimeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mHandler:Landroid/os/Handler;

    .line 86
    new-instance v0, Lcom/android/server/job/controllers/TimeController$TcConstants;

    iget-object v1, p0, Lcom/android/server/job/controllers/TimeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/controllers/TimeController$TcConstants;-><init>(Lcom/android/server/job/controllers/TimeController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mTcConstants:Lcom/android/server/job/controllers/TimeController$TcConstants;

    .line 87
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 56
    sget-boolean v0, Lcom/android/server/job/controllers/TimeController;->DEBUG:Z

    return v0
.end method

.method private canStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 225
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x80000000

    .line 226
    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    .line 228
    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 225
    :goto_1
    return v0
.end method

.method private deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 352
    iget-boolean v0, p0, Lcom/android/server/job/controllers/TimeController;->mChainedAttributionEnabled:Z

    if-eqz v0, :cond_0

    .line 353
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    .line 354
    .local v0, "ws":Landroid/os/WorkSource;
    invoke-virtual {v0}, Landroid/os/WorkSource;->createWorkChain()Landroid/os/WorkSource$WorkChain;

    move-result-object v1

    .line 355
    invoke-virtual {v1, p1, p2}, Landroid/os/WorkSource$WorkChain;->addNode(ILjava/lang/String;)Landroid/os/WorkSource$WorkChain;

    move-result-object v1

    const/16 v2, 0x3e8

    .line 356
    const-string v3, "JobScheduler"

    invoke-virtual {v1, v2, v3}, Landroid/os/WorkSource$WorkChain;->addNode(ILjava/lang/String;)Landroid/os/WorkSource$WorkChain;

    .line 357
    return-object v0

    .line 359
    .end local v0    # "ws":Landroid/os/WorkSource;
    :cond_0
    new-instance v0, Landroid/os/WorkSource;

    if-nez p2, :cond_1

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(I)V

    goto :goto_0

    :cond_1
    invoke-direct {v0, p1, p2}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private ensureAlarmServiceLocked()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    .line 235
    :cond_0
    return-void
.end method

.method private evaluateDeadlineConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z
    .locals 4
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "nowElapsedMillis"    # J

    .line 286
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v0

    .line 288
    .local v0, "jobDeadline":J
    cmp-long v2, v0, p2

    if-gtz v2, :cond_1

    .line 289
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 290
    invoke-virtual {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->setTimingDelayConstraintSatisfied(Z)Z

    .line 292
    :cond_0
    invoke-virtual {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->setDeadlineConstraintSatisfied(Z)Z

    .line 293
    return v3

    .line 295
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private evaluateTimingDelayConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z
    .locals 3
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "nowElapsedMillis"    # J

    .line 365
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v0

    .line 366
    .local v0, "jobDelayTime":J
    cmp-long v2, v0, p2

    if-gtz v2, :cond_0

    .line 367
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->setTimingDelayConstraintSatisfied(Z)Z

    .line 368
    return v2

    .line 370
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private maybeAdjustAlarmTime(J)J
    .locals 2
    .param p1, "proposedAlarmTimeElapsedMillis"    # J

    .line 416
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private maybeUpdateDeadlineAlarmLocked(JLandroid/os/WorkSource;)V
    .locals 2
    .param p1, "deadlineExpiredElapsed"    # J
    .param p3, "ws"    # Landroid/os/WorkSource;

    .line 380
    iget-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 381
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/controllers/TimeController;->setDeadlineExpiredAlarmLocked(JLandroid/os/WorkSource;)V

    .line 383
    :cond_0
    return-void
.end method

.method private maybeUpdateDelayAlarmLocked(JLandroid/os/WorkSource;)V
    .locals 2
    .param p1, "delayExpiredElapsed"    # J
    .param p3, "ws"    # Landroid/os/WorkSource;

    .line 374
    iget-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 375
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/controllers/TimeController;->setDelayExpiredAlarmLocked(JLandroid/os/WorkSource;)V

    .line 377
    :cond_0
    return-void
.end method

.method private setDeadlineExpiredAlarmLocked(JLandroid/os/WorkSource;)V
    .locals 7
    .param p1, "alarmTimeElapsedMillis"    # J
    .param p3, "ws"    # Landroid/os/WorkSource;

    .line 406
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/TimeController;->maybeAdjustAlarmTime(J)J

    move-result-wide p1

    .line 407
    iget-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 408
    return-void

    .line 410
    :cond_0
    iput-wide p1, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    .line 411
    iget-object v3, p0, Lcom/android/server/job/controllers/TimeController;->mDeadlineExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-wide v4, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    const-string v2, "*job.deadline*"

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/job/controllers/TimeController;->updateAlarmWithListenerLocked(Ljava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;JLandroid/os/WorkSource;)V

    .line 413
    return-void
.end method

.method private setDelayExpiredAlarmLocked(JLandroid/os/WorkSource;)V
    .locals 7
    .param p1, "alarmTimeElapsedMillis"    # J
    .param p3, "ws"    # Landroid/os/WorkSource;

    .line 391
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/TimeController;->maybeAdjustAlarmTime(J)J

    move-result-wide p1

    .line 392
    iget-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 393
    return-void

    .line 395
    :cond_0
    iput-wide p1, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    .line 396
    iget-object v3, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-wide v4, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    const-string v2, "*job.delay*"

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/job/controllers/TimeController;->updateAlarmWithListenerLocked(Ljava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;JLandroid/os/WorkSource;)V

    .line 398
    return-void
.end method

.method private updateAlarmWithListenerLocked(Ljava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;JLandroid/os/WorkSource;)V
    .locals 16
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p3, "alarmTimeElapsed"    # J
    .param p5, "ws"    # Landroid/os/WorkSource;

    .line 421
    move-object/from16 v0, p0

    move-wide/from16 v13, p3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/controllers/TimeController;->ensureAlarmServiceLocked()V

    .line 422
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, v13, v1

    if-nez v1, :cond_0

    .line 423
    iget-object v1, v0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    move-object/from16 v15, p2

    invoke-virtual {v1, v15}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_1

    .line 425
    :cond_0
    move-object/from16 v15, p2

    sget-boolean v1, Lcom/android/server/job/controllers/TimeController;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JobScheduler.Time"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 425
    :cond_1
    move-object/from16 v12, p1

    .line 428
    :goto_0
    iget-object v1, v0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    const-wide/16 v5, -0x1

    const-wide/16 v7, 0x0

    const/4 v11, 0x0

    move-wide/from16 v3, p3

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v12, p5

    invoke-virtual/range {v1 .. v12}, Landroid/app/AlarmManager;->set(IJJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;Landroid/os/WorkSource;)V

    .line 431
    :goto_1
    return-void
.end method


# virtual methods
.method checkExpiredDeadlinesAndResetAlarm()V
    .locals 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    const-wide v1, 0x7fffffffffffffffL

    .line 245
    .local v1, "nextExpiryTime":J
    const/4 v3, 0x0

    .line 246
    .local v3, "nextExpiryUid":I
    const/4 v4, 0x0

    .line 247
    .local v4, "nextExpiryPackageName":Ljava/lang/String;
    :try_start_0
    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    .line 249
    .local v5, "nowElapsedMillis":J
    iget-object v7, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    .line 250
    .local v7, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 251
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/JobStatus;

    .line 252
    .local v8, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v9

    if-nez v9, :cond_1

    .line 253
    goto :goto_0

    .line 256
    :cond_1
    invoke-direct {p0, v8, v5, v6}, Lcom/android/server/job/controllers/TimeController;->evaluateDeadlineConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 257
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 260
    iget-object v9, p0, Lcom/android/server/job/controllers/TimeController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v9, v8}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    .line 262
    :cond_2
    invoke-interface {v7}, Ljava/util/ListIterator;->remove()V

    .line 278
    .end local v8    # "job":Lcom/android/server/job/controllers/JobStatus;
    goto :goto_0

    .line 264
    .restart local v8    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_3
    iget-object v9, p0, Lcom/android/server/job/controllers/TimeController;->mTcConstants:Lcom/android/server/job/controllers/TimeController$TcConstants;

    iget-boolean v9, v9, Lcom/android/server/job/controllers/TimeController$TcConstants;->SKIP_NOT_READY_JOBS:Z

    if-eqz v9, :cond_4

    const/high16 v9, 0x40000000    # 2.0f

    .line 265
    invoke-virtual {p0, v8, v9}, Lcom/android/server/job/controllers/TimeController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v9

    if-nez v9, :cond_4

    .line 267
    sget-boolean v9, Lcom/android/server/job/controllers/TimeController;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 268
    const-string v9, "JobScheduler.Time"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipping "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " because deadline won\'t make it ready."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 273
    :cond_4
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v9

    move-wide v1, v9

    .line 274
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v9

    move v3, v9

    .line 275
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 279
    .end local v8    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_5
    nop

    .line 280
    invoke-direct {p0, v3, v4}, Lcom/android/server/job/controllers/TimeController;->deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v8

    .line 279
    invoke-direct {p0, v1, v2, v8}, Lcom/android/server/job/controllers/TimeController;->setDeadlineExpiredAlarmLocked(JLandroid/os/WorkSource;)V

    .line 281
    .end local v1    # "nextExpiryTime":J
    .end local v3    # "nextExpiryUid":I
    .end local v4    # "nextExpiryPackageName":Ljava/lang/String;
    .end local v5    # "nowElapsedMillis":J
    .end local v7    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/job/controllers/JobStatus;>;"
    monitor-exit v0

    .line 282
    return-void

    .line 281
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method checkExpiredDelaysAndResetAlarm()V
    .locals 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 305
    :try_start_0
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 306
    .local v1, "nowElapsedMillis":J
    const-wide v3, 0x7fffffffffffffffL

    .line 307
    .local v3, "nextDelayTime":J
    const/4 v5, 0x0

    .line 308
    .local v5, "nextDelayUid":I
    const/4 v6, 0x0

    .line 309
    .local v6, "nextDelayPackageName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 310
    .local v7, "ready":Z
    iget-object v8, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 311
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 312
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/JobStatus;

    .line 313
    .local v9, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v10

    if-nez v10, :cond_1

    .line 314
    goto :goto_0

    .line 316
    :cond_1
    invoke-direct {p0, v9, v1, v2}, Lcom/android/server/job/controllers/TimeController;->evaluateTimingDelayConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 317
    invoke-direct {p0, v9}, Lcom/android/server/job/controllers/TimeController;->canStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 318
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 320
    :cond_2
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 321
    const/4 v7, 0x1

    goto :goto_1

    .line 324
    :cond_3
    iget-object v10, p0, Lcom/android/server/job/controllers/TimeController;->mTcConstants:Lcom/android/server/job/controllers/TimeController$TcConstants;

    iget-boolean v10, v10, Lcom/android/server/job/controllers/TimeController$TcConstants;->SKIP_NOT_READY_JOBS:Z

    if-eqz v10, :cond_4

    const/high16 v10, -0x80000000

    .line 325
    invoke-virtual {p0, v9, v10}, Lcom/android/server/job/controllers/TimeController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v10

    if-nez v10, :cond_4

    .line 327
    sget-boolean v10, Lcom/android/server/job/controllers/TimeController;->DEBUG:Z

    if-eqz v10, :cond_0

    .line 328
    const-string v10, "JobScheduler.Time"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " because delay won\'t make it ready."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 335
    :cond_4
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v10

    .line 336
    .local v10, "jobDelayTime":J
    cmp-long v12, v3, v10

    if-lez v12, :cond_5

    .line 337
    move-wide v3, v10

    .line 338
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v12

    move v5, v12

    .line 339
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v12

    move-object v6, v12

    .line 342
    .end local v9    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v10    # "jobDelayTime":J
    :cond_5
    :goto_1
    goto :goto_0

    .line 343
    :cond_6
    if-eqz v7, :cond_7

    .line 344
    iget-object v9, p0, Lcom/android/server/job/controllers/TimeController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v9}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 346
    :cond_7
    nop

    .line 347
    invoke-direct {p0, v5, v6}, Lcom/android/server/job/controllers/TimeController;->deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v9

    .line 346
    invoke-direct {p0, v3, v4, v9}, Lcom/android/server/job/controllers/TimeController;->setDelayExpiredAlarmLocked(JLandroid/os/WorkSource;)V

    .line 348
    .end local v1    # "nowElapsedMillis":J
    .end local v3    # "nextDelayTime":J
    .end local v5    # "nextDelayUid":I
    .end local v6    # "nextDelayPackageName":Ljava/lang/String;
    .end local v7    # "ready":Z
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    monitor-exit v0

    .line 349
    return-void

    .line 348
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dumpConstants(Landroid/util/proto/ProtoOutputStream;)V
    .locals 1
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 618
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mTcConstants:Lcom/android/server/job/controllers/TimeController$TcConstants;

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/TimeController$TcConstants;->access$300(Lcom/android/server/job/controllers/TimeController$TcConstants;Landroid/util/proto/ProtoOutputStream;)V

    .line 619
    return-void
.end method

.method public dumpConstants(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 1
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 613
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mTcConstants:Lcom/android/server/job/controllers/TimeController$TcConstants;

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/TimeController$TcConstants;->access$200(Lcom/android/server/job/controllers/TimeController$TcConstants;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 614
    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .locals 19
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

    .line 577
    .local p4, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 578
    .local v2, "token":J
    const-wide v4, 0x10b00000008L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 580
    .local v4, "mToken":J
    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    .line 581
    .local v6, "nowElapsed":J
    const-wide v8, 0x10300000001L

    invoke-virtual {v1, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 582
    iget-wide v8, v0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    sub-long/2addr v8, v6

    const-wide v10, 0x10300000002L

    invoke-virtual {v1, v10, v11, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 584
    iget-wide v8, v0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    sub-long/2addr v8, v6

    const-wide v10, 0x10300000003L

    invoke-virtual {v1, v10, v11, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 587
    iget-object v8, v0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/JobStatus;

    .line 588
    .local v9, "ts":Lcom/android/server/job/controllers/JobStatus;
    move-object/from16 v10, p4

    invoke-interface {v10, v9}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 589
    goto :goto_0

    .line 591
    :cond_0
    const-wide v11, 0x20b00000004L

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 592
    .local v11, "tsToken":J
    const-wide v13, 0x10b00000001L

    invoke-virtual {v9, v1, v13, v14}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 594
    const-wide v13, 0x10800000003L

    .line 595
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v15

    .line 594
    invoke-virtual {v1, v13, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 596
    const-wide v13, 0x10300000004L

    .line 597
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v15

    move-wide/from16 v17, v2

    .end local v2    # "token":J
    .local v17, "token":J
    sub-long v2, v15, v6

    .line 596
    invoke-virtual {v1, v13, v14, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 599
    const-wide v2, 0x10800000005L

    .line 600
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v13

    .line 599
    invoke-virtual {v1, v2, v3, v13}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 601
    const-wide v2, 0x10300000006L

    .line 602
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v13

    sub-long/2addr v13, v6

    .line 601
    invoke-virtual {v1, v2, v3, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 604
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 605
    .end local v9    # "ts":Lcom/android/server/job/controllers/JobStatus;
    .end local v11    # "tsToken":J
    move-wide/from16 v2, v17

    goto :goto_0

    .line 607
    .end local v17    # "token":J
    .restart local v2    # "token":J
    :cond_1
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 608
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 609
    return-void
.end method

.method public dumpControllerStateLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .locals 8
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

    .line 539
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 540
    .local v0, "nowElapsed":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Elapsed clock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 542
    const-string v2, "Next delay alarm in "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 543
    iget-wide v2, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 544
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 545
    const-string v2, "Next deadline alarm in "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 546
    iget-wide v2, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 547
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 548
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 550
    iget-object v2, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 551
    .local v3, "ts":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 552
    goto :goto_0

    .line 554
    :cond_0
    const-string v4, "#"

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 555
    invoke-virtual {v3, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 556
    const-string v4, " from "

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 557
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    invoke-static {p1, v4}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 558
    const-string v4, ": Delay="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 559
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v4

    const-string v5, "N/A"

    if-eqz v4, :cond_1

    .line 560
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v6

    invoke-static {v6, v7, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto :goto_1

    .line 562
    :cond_1
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 564
    :goto_1
    const-string v4, ", Deadline="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 566
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v4

    invoke-static {v4, v5, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto :goto_2

    .line 568
    :cond_2
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 570
    :goto_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 571
    .end local v3    # "ts":Lcom/android/server/job/controllers/JobStatus;
    goto :goto_0

    .line 572
    :cond_3
    return-void
.end method

.method public evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 9
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 171
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mTcConstants:Lcom/android/server/job/controllers/TimeController$TcConstants;

    iget-boolean v0, v0, Lcom/android/server/job/controllers/TimeController$TcConstants;->SKIP_NOT_READY_JOBS:Z

    if-nez v0, :cond_0

    .line 172
    return-void

    .line 175
    :cond_0
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 179
    .local v0, "nowElapsedMillis":J
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    .line 180
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 181
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_5

    .line 182
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/job/controllers/TimeController;->evaluateDeadlineConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V

    .line 184
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    goto :goto_1

    .line 186
    :cond_1
    nop

    .line 187
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    move v5, v3

    goto :goto_0

    :cond_2
    move v5, v4

    .line 188
    .local v5, "isAlarmForJob":Z
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/job/controllers/TimeController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v2

    .line 190
    .local v2, "wouldBeReady":Z
    if-eqz v5, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    if-nez v5, :cond_5

    if-eqz v2, :cond_5

    .line 191
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V

    .line 195
    .end local v2    # "wouldBeReady":Z
    .end local v5    # "isAlarmForJob":Z
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 196
    const/high16 v2, -0x80000000

    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v5

    if-nez v5, :cond_a

    .line 197
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_a

    .line 198
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/job/controllers/TimeController;->evaluateTimingDelayConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 199
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    goto :goto_3

    .line 201
    :cond_6
    nop

    .line 202
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_7

    goto :goto_2

    :cond_7
    move v3, v4

    .line 203
    .local v3, "isAlarmForJob":Z
    :goto_2
    invoke-virtual {p0, p1, v2}, Lcom/android/server/job/controllers/TimeController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v2

    .line 205
    .restart local v2    # "wouldBeReady":Z
    if-eqz v3, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    if-nez v3, :cond_a

    if-eqz v2, :cond_a

    .line 206
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    .line 210
    .end local v2    # "wouldBeReady":Z
    .end local v3    # "isAlarmForJob":Z
    :cond_a
    :goto_3
    return-void
.end method

.method getTcConstants()Lcom/android/server/job/controllers/TimeController$TcConstants;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 533
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mTcConstants:Lcom/android/server/job/controllers/TimeController$TcConstants;

    return-object v0
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 10
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    .line 100
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 101
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/job/controllers/TimeController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V

    .line 108
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 109
    .local v0, "nowElapsedMillis":J
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/job/controllers/TimeController;->evaluateDeadlineConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    return-void

    .line 111
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/job/controllers/TimeController;->evaluateTimingDelayConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 113
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v2

    if-nez v2, :cond_2

    .line 115
    return-void

    .line 119
    :cond_2
    const/4 v2, 0x0

    .line 120
    .local v2, "isInsert":Z
    iget-object v3, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 121
    .local v3, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 122
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 123
    .local v4, "ts":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_3

    .line 125
    const/4 v2, 0x1

    .line 126
    goto :goto_1

    .line 128
    .end local v4    # "ts":Lcom/android/server/job/controllers/JobStatus;
    :cond_3
    goto :goto_0

    .line 129
    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 130
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 132
    :cond_5
    invoke-interface {v3, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 134
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 135
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/job/controllers/TimeController;->deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v4

    .line 137
    .local v4, "ws":Landroid/os/WorkSource;
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v5

    const-wide v6, 0x7fffffffffffffffL

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v8

    goto :goto_2

    :cond_6
    move-wide v8, v6

    .line 139
    .local v8, "deadlineExpiredElapsed":J
    :goto_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v6

    :cond_7
    move-wide v5, v6

    .line 140
    .local v5, "delayExpiredElapsed":J
    iget-object v7, p0, Lcom/android/server/job/controllers/TimeController;->mTcConstants:Lcom/android/server/job/controllers/TimeController$TcConstants;

    iget-boolean v7, v7, Lcom/android/server/job/controllers/TimeController$TcConstants;->SKIP_NOT_READY_JOBS:Z

    if-eqz v7, :cond_9

    .line 141
    const/high16 v7, -0x80000000

    invoke-virtual {p0, p1, v7}, Lcom/android/server/job/controllers/TimeController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 142
    invoke-direct {p0, v5, v6, v4}, Lcom/android/server/job/controllers/TimeController;->maybeUpdateDelayAlarmLocked(JLandroid/os/WorkSource;)V

    .line 144
    :cond_8
    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {p0, p1, v7}, Lcom/android/server/job/controllers/TimeController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 145
    invoke-direct {p0, v8, v9, v4}, Lcom/android/server/job/controllers/TimeController;->maybeUpdateDeadlineAlarmLocked(JLandroid/os/WorkSource;)V

    goto :goto_3

    .line 148
    :cond_9
    invoke-direct {p0, v5, v6, v4}, Lcom/android/server/job/controllers/TimeController;->maybeUpdateDelayAlarmLocked(JLandroid/os/WorkSource;)V

    .line 149
    invoke-direct {p0, v8, v9, v4}, Lcom/android/server/job/controllers/TimeController;->maybeUpdateDeadlineAlarmLocked(JLandroid/os/WorkSource;)V

    .line 152
    .end local v0    # "nowElapsedMillis":J
    .end local v2    # "isInsert":Z
    .end local v3    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v4    # "ws":Landroid/os/WorkSource;
    .end local v5    # "delayExpiredElapsed":J
    .end local v8    # "deadlineExpiredElapsed":J
    :cond_a
    :goto_3
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .locals 1
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "forUpdate"    # Z

    .line 161
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    .line 164
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V

    .line 167
    :cond_0
    return-void
.end method

.method public onSystemServicesReady()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mTcConstants:Lcom/android/server/job/controllers/TimeController$TcConstants;

    iget-object v1, p0, Lcom/android/server/job/controllers/TimeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/TimeController$TcConstants;->access$000(Lcom/android/server/job/controllers/TimeController$TcConstants;Landroid/content/ContentResolver;)V

    .line 92
    return-void
.end method

.method recheckAlarmsLocked()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 457
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V

    .line 458
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    .line 459
    return-void
.end method

.method public reevaluateStateLocked(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 214
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V

    .line 215
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    .line 216
    return-void
.end method
