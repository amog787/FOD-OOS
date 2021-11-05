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

    .line 59
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_1

    const/4 v0, 0x3

    .line 60
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

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;

    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 63
    const-string v0, "*job.deadline*"

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->DEADLINE_TAG:Ljava/lang/String;

    .line 65
    const-string v0, "*job.delay*"

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->DELAY_TAG:Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    .line 81
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    .line 450
    new-instance v0, Lcom/android/server/job/controllers/TimeController$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/TimeController$1;-><init>(Lcom/android/server/job/controllers/TimeController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mDeadlineExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 460
    new-instance v0, Lcom/android/server/job/controllers/TimeController$2;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/TimeController$2;-><init>(Lcom/android/server/job/controllers/TimeController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 87
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    .line 88
    iput-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    .line 89
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->isChainedAttributionEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/TimeController;->mChainedAttributionEnabled:Z

    .line 91
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/job/controllers/TimeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mHandler:Landroid/os/Handler;

    .line 92
    new-instance v0, Lcom/android/server/job/controllers/TimeController$TcConstants;

    iget-object v1, p0, Lcom/android/server/job/controllers/TimeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/controllers/TimeController$TcConstants;-><init>(Lcom/android/server/job/controllers/TimeController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mTcConstants:Lcom/android/server/job/controllers/TimeController$TcConstants;

    .line 93
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 57
    sget-boolean v0, Lcom/android/server/job/controllers/TimeController;->DEBUG:Z

    return v0
.end method

.method private canStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 232
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x80000000

    .line 233
    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    .line 235
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

    .line 232
    :goto_1
    return v0
.end method

.method private deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 363
    iget-boolean v0, p0, Lcom/android/server/job/controllers/TimeController;->mChainedAttributionEnabled:Z

    if-eqz v0, :cond_0

    .line 364
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    .line 365
    .local v0, "ws":Landroid/os/WorkSource;
    invoke-virtual {v0}, Landroid/os/WorkSource;->createWorkChain()Landroid/os/WorkSource$WorkChain;

    move-result-object v1

    .line 366
    invoke-virtual {v1, p1, p2}, Landroid/os/WorkSource$WorkChain;->addNode(ILjava/lang/String;)Landroid/os/WorkSource$WorkChain;

    move-result-object v1

    const/16 v2, 0x3e8

    .line 367
    const-string v3, "JobScheduler"

    invoke-virtual {v1, v2, v3}, Landroid/os/WorkSource$WorkChain;->addNode(ILjava/lang/String;)Landroid/os/WorkSource$WorkChain;

    .line 368
    return-object v0

    .line 370
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

    .line 239
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    .line 242
    :cond_0
    return-void
.end method

.method private evaluateDeadlineConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z
    .locals 4
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "nowElapsedMillis"    # J

    .line 295
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v0

    .line 297
    .local v0, "jobDeadline":J
    cmp-long v2, v0, p2

    if-gtz v2, :cond_1

    .line 298
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 299
    invoke-virtual {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->setTimingDelayConstraintSatisfied(Z)Z

    .line 301
    :cond_0
    invoke-virtual {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->setDeadlineConstraintSatisfied(Z)Z

    .line 302
    return v3

    .line 304
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private evaluateTimingDelayConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z
    .locals 3
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "nowElapsedMillis"    # J

    .line 376
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v0

    .line 377
    .local v0, "jobDelayTime":J
    cmp-long v2, v0, p2

    if-gtz v2, :cond_0

    .line 378
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->setTimingDelayConstraintSatisfied(Z)Z

    .line 379
    return v2

    .line 381
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private maybeAdjustAlarmTime(J)J
    .locals 2
    .param p1, "proposedAlarmTimeElapsedMillis"    # J

    .line 431
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

    .line 391
    iget-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 392
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/controllers/TimeController;->setDeadlineExpiredAlarmLocked(JLandroid/os/WorkSource;)V

    .line 394
    :cond_0
    return-void
.end method

.method private maybeUpdateDelayAlarmLocked(JLandroid/os/WorkSource;)V
    .locals 2
    .param p1, "delayExpiredElapsed"    # J
    .param p3, "ws"    # Landroid/os/WorkSource;

    .line 385
    iget-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 386
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/controllers/TimeController;->setDelayExpiredAlarmLocked(JLandroid/os/WorkSource;)V

    .line 388
    :cond_0
    return-void
.end method

.method private setDeadlineExpiredAlarmLocked(JLandroid/os/WorkSource;)V
    .locals 7
    .param p1, "alarmTimeElapsedMillis"    # J
    .param p3, "ws"    # Landroid/os/WorkSource;

    .line 421
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/TimeController;->maybeAdjustAlarmTime(J)J

    move-result-wide p1

    .line 422
    iget-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 423
    return-void

    .line 425
    :cond_0
    iput-wide p1, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    .line 426
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/server/job/controllers/TimeController;->mDeadlineExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

    const-string v1, "*job.deadline*"

    move-object v0, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/controllers/TimeController;->updateAlarmWithListenerLocked(Ljava/lang/String;ILandroid/app/AlarmManager$OnAlarmListener;JLandroid/os/WorkSource;)V

    .line 428
    return-void
.end method

.method private setDelayExpiredAlarmLocked(JLandroid/os/WorkSource;)V
    .locals 8
    .param p1, "alarmTimeElapsedMillis"    # J
    .param p3, "ws"    # Landroid/os/WorkSource;

    .line 403
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/TimeController;->maybeAdjustAlarmTime(J)J

    move-result-wide p1

    .line 404
    iget-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 405
    return-void

    .line 407
    :cond_0
    iput-wide p1, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    .line 409
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mTcConstants:Lcom/android/server/job/controllers/TimeController$TcConstants;

    iget-boolean v0, v0, Lcom/android/server/job/controllers/TimeController$TcConstants;->USE_NON_WAKEUP_ALARM_FOR_DELAY:Z

    if-eqz v0, :cond_1

    .line 410
    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    move v3, v0

    .line 411
    .local v3, "alarmType":I
    iget-object v4, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-wide v5, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    const-string v2, "*job.delay*"

    move-object v1, p0

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/job/controllers/TimeController;->updateAlarmWithListenerLocked(Ljava/lang/String;ILandroid/app/AlarmManager$OnAlarmListener;JLandroid/os/WorkSource;)V

    .line 413
    return-void
.end method

.method private updateAlarmWithListenerLocked(Ljava/lang/String;ILandroid/app/AlarmManager$OnAlarmListener;JLandroid/os/WorkSource;)V
    .locals 16
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "alarmType"    # I
    .param p3, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p4, "alarmTimeElapsed"    # J
    .param p6, "ws"    # Landroid/os/WorkSource;

    .line 436
    move-object/from16 v0, p0

    move-wide/from16 v13, p4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/controllers/TimeController;->ensureAlarmServiceLocked()V

    .line 437
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, v13, v1

    if-nez v1, :cond_0

    .line 438
    iget-object v1, v0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    move-object/from16 v15, p3

    invoke-virtual {v1, v15}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_1

    .line 440
    :cond_0
    move-object/from16 v15, p3

    sget-boolean v1, Lcom/android/server/job/controllers/TimeController;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 441
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

    .line 440
    :cond_1
    move-object/from16 v12, p1

    .line 443
    :goto_0
    iget-object v1, v0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    const-wide/16 v5, -0x1

    const-wide/16 v7, 0x0

    const/4 v11, 0x0

    move/from16 v2, p2

    move-wide/from16 v3, p4

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v12, p6

    invoke-virtual/range {v1 .. v12}, Landroid/app/AlarmManager;->set(IJJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;Landroid/os/WorkSource;)V

    .line 446
    :goto_1
    return-void
.end method


# virtual methods
.method checkExpiredDeadlinesAndResetAlarm()V
    .locals 13

    .line 250
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    const-wide v1, 0x7fffffffffffffffL

    .line 252
    .local v1, "nextExpiryTime":J
    const/4 v3, 0x0

    .line 253
    .local v3, "nextExpiryUid":I
    const/4 v4, 0x0

    .line 254
    .local v4, "nextExpiryPackageName":Ljava/lang/String;
    :try_start_0
    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    .line 257
    .local v5, "nowElapsedMillis":J
    iget-object v7, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 258
    :try_start_1
    iget-object v8, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v8

    .line 259
    .local v8, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/ListIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 260
    invoke-interface {v8}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/JobStatus;

    .line 261
    .local v9, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v10

    if-nez v10, :cond_1

    .line 262
    goto :goto_0

    .line 265
    :cond_1
    invoke-direct {p0, v9, v5, v6}, Lcom/android/server/job/controllers/TimeController;->evaluateDeadlineConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 266
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 269
    iget-object v10, p0, Lcom/android/server/job/controllers/TimeController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v10, v9}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    .line 271
    :cond_2
    invoke-interface {v8}, Ljava/util/ListIterator;->remove()V

    .line 285
    .end local v9    # "job":Lcom/android/server/job/controllers/JobStatus;
    goto :goto_0

    .line 273
    .restart local v9    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_3
    const/high16 v10, 0x40000000    # 2.0f

    invoke-virtual {p0, v9, v10}, Lcom/android/server/job/controllers/TimeController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v10

    if-nez v10, :cond_4

    .line 274
    sget-boolean v10, Lcom/android/server/job/controllers/TimeController;->DEBUG:Z

    if-eqz v10, :cond_0

    .line 275
    const-string v10, "JobScheduler.Time"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " because deadline won\'t make it ready."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 280
    :cond_4
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v10

    move-wide v1, v10

    .line 281
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v10

    move v3, v10

    .line 282
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    .line 286
    .end local v8    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v9    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_5
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    nop

    .line 289
    :try_start_2
    invoke-direct {p0, v3, v4}, Lcom/android/server/job/controllers/TimeController;->deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v7

    .line 288
    invoke-direct {p0, v1, v2, v7}, Lcom/android/server/job/controllers/TimeController;->setDeadlineExpiredAlarmLocked(JLandroid/os/WorkSource;)V

    .line 290
    .end local v1    # "nextExpiryTime":J
    .end local v3    # "nextExpiryUid":I
    .end local v4    # "nextExpiryPackageName":Ljava/lang/String;
    .end local v5    # "nowElapsedMillis":J
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 291
    return-void

    .line 286
    .restart local v1    # "nextExpiryTime":J
    .restart local v3    # "nextExpiryUid":I
    .restart local v4    # "nextExpiryPackageName":Ljava/lang/String;
    .restart local v5    # "nowElapsedMillis":J
    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/job/controllers/TimeController;
    :try_start_4
    throw v8

    .line 290
    .end local v1    # "nextExpiryTime":J
    .end local v3    # "nextExpiryUid":I
    .end local v4    # "nextExpiryPackageName":Ljava/lang/String;
    .end local v5    # "nowElapsedMillis":J
    .restart local p0    # "this":Lcom/android/server/job/controllers/TimeController;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method checkExpiredDelaysAndResetAlarm()V
    .locals 14

    .line 313
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_0
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 315
    .local v1, "nowElapsedMillis":J
    const-wide v3, 0x7fffffffffffffffL

    .line 316
    .local v3, "nextDelayTime":J
    const/4 v5, 0x0

    .line 317
    .local v5, "nextDelayUid":I
    const/4 v6, 0x0

    .line 318
    .local v6, "nextDelayPackageName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 321
    .local v7, "ready":Z
    iget-object v8, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 322
    :try_start_1
    iget-object v9, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 323
    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 324
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/job/controllers/JobStatus;

    .line 325
    .local v10, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v11

    if-nez v11, :cond_1

    .line 326
    goto :goto_0

    .line 328
    :cond_1
    invoke-direct {p0, v10, v1, v2}, Lcom/android/server/job/controllers/TimeController;->evaluateTimingDelayConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 329
    invoke-direct {p0, v10}, Lcom/android/server/job/controllers/TimeController;->canStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 330
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 332
    :cond_2
    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 333
    const/4 v7, 0x1

    goto :goto_1

    .line 336
    :cond_3
    const/high16 v11, -0x80000000

    invoke-virtual {p0, v10, v11}, Lcom/android/server/job/controllers/TimeController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v11

    if-nez v11, :cond_4

    .line 337
    sget-boolean v11, Lcom/android/server/job/controllers/TimeController;->DEBUG:Z

    if-eqz v11, :cond_0

    .line 338
    const-string v11, "JobScheduler.Time"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skipping "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " because delay won\'t make it ready."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 344
    :cond_4
    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v11

    .line 345
    .local v11, "jobDelayTime":J
    cmp-long v13, v3, v11

    if-lez v13, :cond_5

    .line 346
    move-wide v3, v11

    .line 347
    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v13

    move v5, v13

    .line 348
    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v13

    move-object v6, v13

    .line 351
    .end local v10    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v11    # "jobDelayTime":J
    :cond_5
    :goto_1
    goto :goto_0

    .line 352
    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_6
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    if-eqz v7, :cond_7

    .line 355
    :try_start_2
    iget-object v8, p0, Lcom/android/server/job/controllers/TimeController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v8}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 357
    :cond_7
    nop

    .line 358
    invoke-direct {p0, v5, v6}, Lcom/android/server/job/controllers/TimeController;->deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v8

    .line 357
    invoke-direct {p0, v3, v4, v8}, Lcom/android/server/job/controllers/TimeController;->setDelayExpiredAlarmLocked(JLandroid/os/WorkSource;)V

    .line 359
    .end local v1    # "nowElapsedMillis":J
    .end local v3    # "nextDelayTime":J
    .end local v5    # "nextDelayUid":I
    .end local v6    # "nextDelayPackageName":Ljava/lang/String;
    .end local v7    # "ready":Z
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 360
    return-void

    .line 352
    .restart local v1    # "nowElapsedMillis":J
    .restart local v3    # "nextDelayTime":J
    .restart local v5    # "nextDelayUid":I
    .restart local v6    # "nextDelayPackageName":Ljava/lang/String;
    .restart local v7    # "ready":Z
    :catchall_0
    move-exception v9

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/job/controllers/TimeController;
    :try_start_4
    throw v9

    .line 359
    .end local v1    # "nowElapsedMillis":J
    .end local v3    # "nextDelayTime":J
    .end local v5    # "nextDelayUid":I
    .end local v6    # "nextDelayPackageName":Ljava/lang/String;
    .end local v7    # "ready":Z
    .restart local p0    # "this":Lcom/android/server/job/controllers/TimeController;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public dumpConstants(Landroid/util/proto/ProtoOutputStream;)V
    .locals 1
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 635
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mTcConstants:Lcom/android/server/job/controllers/TimeController$TcConstants;

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/TimeController$TcConstants;->access$300(Lcom/android/server/job/controllers/TimeController$TcConstants;Landroid/util/proto/ProtoOutputStream;)V

    .line 636
    return-void
.end method

.method public dumpConstants(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 1
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 630
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mTcConstants:Lcom/android/server/job/controllers/TimeController$TcConstants;

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/TimeController$TcConstants;->access$200(Lcom/android/server/job/controllers/TimeController$TcConstants;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 631
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

    .line 590
    .local p4, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 591
    .local v3, "token":J
    const-wide v5, 0x10b00000008L

    invoke-virtual {v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 593
    .local v5, "mToken":J
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    .line 594
    .local v7, "nowElapsed":J
    const-wide v9, 0x10300000001L

    invoke-virtual {v2, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 595
    iget-wide v9, v1, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    sub-long/2addr v9, v7

    const-wide v11, 0x10300000002L

    invoke-virtual {v2, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 597
    iget-wide v9, v1, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    sub-long/2addr v9, v7

    const-wide v11, 0x10300000003L

    invoke-virtual {v2, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 601
    iget-object v9, v1, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    monitor-enter v9

    .line 602
    :try_start_0
    iget-object v0, v1, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/job/controllers/JobStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    .local v10, "ts":Lcom/android/server/job/controllers/JobStatus;
    move-object/from16 v11, p4

    :try_start_1
    invoke-interface {v11, v10}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 604
    goto :goto_0

    .line 606
    :cond_0
    const-wide v12, 0x20b00000004L

    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 607
    .local v12, "tsToken":J
    const-wide v14, 0x10b00000001L

    invoke-virtual {v10, v2, v14, v15}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 609
    nop

    .line 610
    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v14

    .line 609
    move-object v15, v0

    const-wide v0, 0x10800000003L

    invoke-virtual {v2, v0, v1, v14}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 611
    const-wide v0, 0x10300000004L

    .line 612
    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v16

    move-object/from16 v18, v15

    sub-long v14, v16, v7

    .line 611
    invoke-virtual {v2, v0, v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 614
    const-wide v0, 0x10800000005L

    .line 615
    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v14

    .line 614
    invoke-virtual {v2, v0, v1, v14}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 616
    const-wide v0, 0x10300000006L

    .line 617
    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v14

    sub-long/2addr v14, v7

    .line 616
    invoke-virtual {v2, v0, v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 619
    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 620
    .end local v10    # "ts":Lcom/android/server/job/controllers/JobStatus;
    .end local v12    # "tsToken":J
    move-object/from16 v1, p0

    move-object/from16 v0, v18

    goto :goto_0

    .line 621
    :cond_1
    move-object/from16 v11, p4

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 624
    invoke-virtual {v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 625
    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 626
    return-void

    .line 621
    :catchall_0
    move-exception v0

    move-object/from16 v11, p4

    :goto_1
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public dumpControllerStateLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .locals 7
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

    .line 547
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 548
    .local v0, "nowElapsed":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Elapsed clock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 550
    const-string v2, "Next delay alarm in "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 551
    iget-wide v2, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 552
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 553
    const-string v2, "Next deadline alarm in "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 554
    iget-wide v2, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 555
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 556
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 560
    iget-object v2, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    monitor-enter v2

    .line 561
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 562
    .local v4, "ts":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {p2, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 563
    goto :goto_0

    .line 565
    :cond_0
    const-string v5, "#"

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v4, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 567
    const-string v5, " from "

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 568
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    invoke-static {p1, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 569
    const-string v5, ": Delay="

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 570
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 571
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v5

    invoke-static {v5, v6, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto :goto_1

    .line 573
    :cond_1
    const-string v5, "N/A"

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 575
    :goto_1
    const-string v5, ", Deadline="

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 577
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v5

    invoke-static {v5, v6, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto :goto_2

    .line 579
    :cond_2
    const-string v5, "N/A"

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 581
    :goto_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 582
    .end local v4    # "ts":Lcom/android/server/job/controllers/JobStatus;
    goto :goto_0

    .line 583
    :cond_3
    monitor-exit v2

    .line 585
    return-void

    .line 583
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 9
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 182
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 186
    .local v0, "nowElapsedMillis":J
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 187
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 188
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_4

    .line 189
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/job/controllers/TimeController;->evaluateDeadlineConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V

    .line 191
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    goto :goto_1

    .line 193
    :cond_0
    nop

    .line 194
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    .line 195
    .local v5, "isAlarmForJob":Z
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/job/controllers/TimeController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v2

    .line 197
    .local v2, "wouldBeReady":Z
    if-eqz v5, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-nez v5, :cond_4

    if-eqz v2, :cond_4

    .line 198
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V

    .line 202
    .end local v2    # "wouldBeReady":Z
    .end local v5    # "isAlarmForJob":Z
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 203
    const/high16 v2, -0x80000000

    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v5

    if-nez v5, :cond_9

    .line 204
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_9

    .line 205
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/job/controllers/TimeController;->evaluateTimingDelayConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 206
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    goto :goto_3

    .line 208
    :cond_5
    nop

    .line 209
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    move v3, v4

    .line 210
    .local v3, "isAlarmForJob":Z
    :goto_2
    invoke-virtual {p0, p1, v2}, Lcom/android/server/job/controllers/TimeController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v2

    .line 212
    .restart local v2    # "wouldBeReady":Z
    if-eqz v3, :cond_7

    if-eqz v2, :cond_8

    :cond_7
    if-nez v3, :cond_9

    if-eqz v2, :cond_9

    .line 213
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    .line 217
    .end local v2    # "wouldBeReady":Z
    .end local v3    # "isAlarmForJob":Z
    :cond_9
    :goto_3
    return-void
.end method

.method getTcConstants()Lcom/android/server/job/controllers/TimeController$TcConstants;
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mTcConstants:Lcom/android/server/job/controllers/TimeController$TcConstants;

    return-object v0
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 10
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    .line 106
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 107
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/job/controllers/TimeController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V

    .line 114
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 115
    .local v0, "nowElapsedMillis":J
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/job/controllers/TimeController;->evaluateDeadlineConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    return-void

    .line 117
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/job/controllers/TimeController;->evaluateTimingDelayConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v2

    if-nez v2, :cond_2

    .line 121
    return-void

    .line 125
    :cond_2
    const/4 v2, 0x0

    .line 128
    .local v2, "isInsert":Z
    iget-object v3, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    monitor-enter v3

    .line 129
    :try_start_0
    iget-object v4, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    iget-object v5, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 130
    .local v4, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 131
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 132
    .local v5, "ts":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    .line 134
    const/4 v2, 0x1

    .line 135
    goto :goto_1

    .line 137
    .end local v5    # "ts":Lcom/android/server/job/controllers/JobStatus;
    :cond_3
    goto :goto_0

    .line 138
    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 139
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 141
    :cond_5
    invoke-interface {v4, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 142
    .end local v4    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/job/controllers/JobStatus;>;"
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 145
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/job/controllers/TimeController;->deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v3

    .line 149
    .local v3, "ws":Landroid/os/WorkSource;
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v4

    if-eqz v4, :cond_6

    const/high16 v4, -0x80000000

    .line 150
    invoke-virtual {p0, p1, v4}, Lcom/android/server/job/controllers/TimeController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 151
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v4

    invoke-direct {p0, v4, v5, v3}, Lcom/android/server/job/controllers/TimeController;->maybeUpdateDelayAlarmLocked(JLandroid/os/WorkSource;)V

    .line 153
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v4

    if-eqz v4, :cond_7

    const/high16 v4, 0x40000000    # 2.0f

    .line 154
    invoke-virtual {p0, p1, v4}, Lcom/android/server/job/controllers/TimeController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 155
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v4

    invoke-direct {p0, v4, v5, v3}, Lcom/android/server/job/controllers/TimeController;->maybeUpdateDeadlineAlarmLocked(JLandroid/os/WorkSource;)V

    .line 158
    .end local v0    # "nowElapsedMillis":J
    .end local v2    # "isInsert":Z
    .end local v3    # "ws":Landroid/os/WorkSource;
    :cond_7
    return-void

    .line 142
    .restart local v0    # "nowElapsedMillis":J
    .restart local v2    # "isInsert":Z
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .locals 2
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "forUpdate"    # Z

    .line 167
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    monitor-enter v0

    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    .line 173
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V

    .line 175
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 178
    :cond_1
    :goto_0
    return-void
.end method

.method public onSystemServicesReady()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mTcConstants:Lcom/android/server/job/controllers/TimeController$TcConstants;

    iget-object v1, p0, Lcom/android/server/job/controllers/TimeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/TimeController$TcConstants;->access$000(Lcom/android/server/job/controllers/TimeController$TcConstants;Landroid/content/ContentResolver;)V

    .line 98
    return-void
.end method

.method public reevaluateStateLocked(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 221
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V

    .line 222
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    .line 223
    return-void
.end method
