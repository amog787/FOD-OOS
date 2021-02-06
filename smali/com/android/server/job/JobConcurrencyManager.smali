.class Lcom/android/server/job/JobConcurrencyManager;
.super Ljava/lang/Object;
.source "JobConcurrencyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;,
        Lcom/android/server/job/JobConcurrencyManager$Stats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final MAX_JOB_CONTEXTS_COUNT:I = 0x10

.field private static final SYSTEM_STATE_REFRESH_MIN_INTERVAL:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "JobScheduler"


# instance fields
.field private final mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

.field private final mContext:Landroid/content/Context;

.field private mCurrentInteractiveState:Z

.field private mEffectiveInteractiveState:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mJobCountTracker:Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;

.field private mLastMemoryTrimLevel:I

.field private mLastScreenOffRealtime:J

.field private mLastScreenOnRealtime:J

.field private final mLock:Ljava/lang/Object;

.field private mMaxJobCounts:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

.field private mNextSystemStateRefreshTime:J

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mRampUpForScreenOff:Ljava/lang/Runnable;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mRecycledAssignContextIdToJobMap:[Lcom/android/server/job/controllers/JobStatus;

.field mRecycledPreferredUidForContext:[I

.field mRecycledSlotChanged:[Z

.field private final mService:Lcom/android/server/job/JobSchedulerService;

.field private final mStatLogger:Lcom/android/internal/util/StatLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/16 v0, 0x10

    new-array v1, v0, [Lcom/android/server/job/controllers/JobStatus;

    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledAssignContextIdToJobMap:[Lcom/android/server/job/controllers/JobStatus;

    .line 78
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledSlotChanged:[Z

    .line 80
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPreferredUidForContext:[I

    .line 85
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;

    invoke-direct {v0}, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mJobCountTracker:Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;

    .line 94
    new-instance v0, Lcom/android/internal/util/StatLogger;

    const-string v1, "assignJobsToContexts"

    const-string/jumbo v2, "refreshSystemState"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 125
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobConcurrencyManager$1;-><init>(Lcom/android/server/job/JobConcurrencyManager;)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 174
    new-instance v0, Lcom/android/server/job/-$$Lambda$JobConcurrencyManager$5dmb0pQscXPwEG6SBnhs7aCwpSs;

    invoke-direct {v0, p0}, Lcom/android/server/job/-$$Lambda$JobConcurrencyManager$5dmb0pQscXPwEG6SBnhs7aCwpSs;-><init>(Lcom/android/server/job/JobConcurrencyManager;)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRampUpForScreenOff:Ljava/lang/Runnable;

    .line 107
    iput-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 108
    iget-object v0, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLock:Ljava/lang/Object;

    .line 109
    iget-object v0, p1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 110
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mContext:Landroid/content/Context;

    .line 112
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mHandler:Landroid/os/Handler;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/job/JobConcurrencyManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/JobConcurrencyManager;
    .param p1, "x1"    # Z

    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->onInteractiveStateChanged(Z)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 50
    sget-boolean v0, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    return v0
.end method

.method private assignJobsToContextsInternalLocked()V
    .locals 23

    .line 274
    move-object/from16 v0, p0

    sget-boolean v1, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    const-string v2, "JobScheduler"

    if-eqz v1, :cond_0

    .line 275
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/JobConcurrencyManager;->printPendingQueueLocked()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 279
    .local v1, "tracker":Lcom/android/server/job/JobPackageTracker;
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    .line 280
    .local v3, "pendingJobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v4, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    .line 281
    .local v4, "activeServices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/JobServiceContext;>;"
    iget-object v5, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 283
    .local v5, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/StateController;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/JobConcurrencyManager;->updateMaxCountsLocked()V

    .line 286
    iget-object v6, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledAssignContextIdToJobMap:[Lcom/android/server/job/controllers/JobStatus;

    .line 287
    .local v6, "contextIdToJobMap":[Lcom/android/server/job/controllers/JobStatus;
    iget-object v7, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledSlotChanged:[Z

    .line 288
    .local v7, "slotChanged":[Z
    iget-object v8, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPreferredUidForContext:[I

    .line 292
    .local v8, "preferredUidForContext":[I
    iget-object v9, v0, Lcom/android/server/job/JobConcurrencyManager;->mJobCountTracker:Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;

    iget-object v10, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxJobCounts:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    .line 293
    invoke-virtual {v10}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->getMaxTotal()I

    move-result v10

    iget-object v11, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxJobCounts:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    .line 294
    invoke-virtual {v11}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->getMaxBg()I

    move-result v11

    iget-object v12, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxJobCounts:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    .line 295
    invoke-virtual {v12}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->getMinBg()I

    move-result v12

    .line 292
    invoke-virtual {v9, v10, v11, v12}, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->reset(III)V

    .line 297
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    const/4 v10, 0x0

    const/16 v11, 0x10

    if-ge v9, v11, :cond_2

    .line 298
    iget-object v11, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v11, v11, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/job/JobServiceContext;

    .line 299
    .local v11, "js":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v11}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v12

    .line 301
    .local v12, "status":Lcom/android/server/job/controllers/JobStatus;
    aput-object v12, v6, v9

    if-eqz v12, :cond_1

    .line 302
    iget-object v13, v0, Lcom/android/server/job/JobConcurrencyManager;->mJobCountTracker:Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;

    invoke-direct {v0, v12}, Lcom/android/server/job/JobConcurrencyManager;->isFgJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->incrementRunningJobCount(Z)V

    .line 305
    :cond_1
    aput-boolean v10, v7, v9

    .line 306
    invoke-virtual {v11}, Lcom/android/server/job/JobServiceContext;->getPreferredUid()I

    move-result v10

    aput v10, v8, v9

    .line 297
    .end local v11    # "js":Lcom/android/server/job/JobServiceContext;
    .end local v12    # "status":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 308
    .end local v9    # "i":I
    :cond_2
    sget-boolean v9, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v9, :cond_3

    .line 309
    const-string/jumbo v9, "running jobs initial"

    invoke-static {v6, v9}, Lcom/android/server/job/JobConcurrencyManager;->printContextIdToJobMap([Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_3
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, -0x1

    if-ge v9, v12, :cond_5

    .line 314
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/job/controllers/JobStatus;

    .line 317
    .local v12, "pending":Lcom/android/server/job/controllers/JobStatus;
    invoke-static {v12, v6}, Lcom/android/server/job/JobConcurrencyManager;->findJobContextIdFromMap(Lcom/android/server/job/controllers/JobStatus;[Lcom/android/server/job/controllers/JobStatus;)I

    move-result v14

    .line 318
    .local v14, "jobRunningContext":I
    if-eq v14, v13, :cond_4

    .line 319
    goto :goto_2

    .line 322
    :cond_4
    iget-object v13, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v13, v12}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v13

    .line 323
    .local v13, "priority":I
    iput v13, v12, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    .line 325
    iget-object v15, v0, Lcom/android/server/job/JobConcurrencyManager;->mJobCountTracker:Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;

    invoke-direct {v0, v12}, Lcom/android/server/job/JobConcurrencyManager;->isFgJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v10

    invoke-virtual {v15, v10}, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->incrementPendingJobCount(Z)V

    .line 313
    .end local v12    # "pending":Lcom/android/server/job/controllers/JobStatus;
    .end local v13    # "priority":I
    .end local v14    # "jobRunningContext":I
    :goto_2
    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    goto :goto_1

    .line 328
    .end local v9    # "i":I
    :cond_5
    iget-object v9, v0, Lcom/android/server/job/JobConcurrencyManager;->mJobCountTracker:Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;

    invoke-virtual {v9}, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->onCountDone()V

    .line 330
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_11

    .line 331
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/job/controllers/JobStatus;

    .line 334
    .local v10, "nextPending":Lcom/android/server/job/controllers/JobStatus;
    invoke-static {v10, v6}, Lcom/android/server/job/JobConcurrencyManager;->findJobContextIdFromMap(Lcom/android/server/job/controllers/JobStatus;[Lcom/android/server/job/controllers/JobStatus;)I

    move-result v12

    .line 335
    .local v12, "jobRunningContext":I
    if-eq v12, v13, :cond_6

    .line 336
    move-object/from16 v21, v8

    move v11, v13

    goto/16 :goto_9

    .line 339
    :cond_6
    invoke-direct {v0, v10}, Lcom/android/server/job/JobConcurrencyManager;->isFgJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v14

    .line 344
    .local v14, "isPendingFg":Z
    const v15, 0x7fffffff

    .line 345
    .local v15, "minPriorityForPreemption":I
    const/16 v16, -0x1

    .line 346
    .local v16, "selectedContextId":I
    const/16 v17, 0x0

    .line 347
    .local v17, "startingJob":Z
    const/16 v18, 0x0

    move/from16 v13, v18

    .local v13, "j":I
    :goto_4
    const/16 v19, 0x1

    if-ge v13, v11, :cond_e

    .line 348
    aget-object v11, v6, v13

    .line 349
    .local v11, "job":Lcom/android/server/job/controllers/JobStatus;
    move/from16 v20, v12

    .end local v12    # "jobRunningContext":I
    .local v20, "jobRunningContext":I
    aget v12, v8, v13

    .line 350
    .local v12, "preferredUid":I
    if-nez v11, :cond_a

    .line 351
    move-object/from16 v21, v8

    .end local v8    # "preferredUidForContext":[I
    .local v21, "preferredUidForContext":[I
    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v8

    if-eq v12, v8, :cond_8

    const/4 v8, -0x1

    if-ne v12, v8, :cond_7

    goto :goto_5

    :cond_7
    const/4 v8, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    move/from16 v8, v19

    .line 354
    .local v8, "preferredUidOkay":Z
    :goto_6
    if-eqz v8, :cond_9

    move/from16 v22, v8

    .end local v8    # "preferredUidOkay":Z
    .local v22, "preferredUidOkay":Z
    iget-object v8, v0, Lcom/android/server/job/JobConcurrencyManager;->mJobCountTracker:Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;

    invoke-virtual {v8, v14}, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->canJobStart(Z)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 357
    move/from16 v16, v13

    .line 358
    const/16 v17, 0x1

    .line 359
    move/from16 v8, v16

    goto :goto_8

    .line 354
    .end local v22    # "preferredUidOkay":Z
    .restart local v8    # "preferredUidOkay":Z
    :cond_9
    move/from16 v22, v8

    .end local v8    # "preferredUidOkay":Z
    .restart local v22    # "preferredUidOkay":Z
    goto :goto_7

    .line 366
    .end local v21    # "preferredUidForContext":[I
    .end local v22    # "preferredUidOkay":Z
    .local v8, "preferredUidForContext":[I
    :cond_a
    move-object/from16 v21, v8

    .end local v8    # "preferredUidForContext":[I
    .restart local v21    # "preferredUidForContext":[I
    invoke-virtual {v11}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v8

    move/from16 v22, v12

    .end local v12    # "preferredUid":I
    .local v22, "preferredUid":I
    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v12

    if-eq v8, v12, :cond_b

    .line 367
    goto :goto_7

    .line 370
    :cond_b
    iget-object v8, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v8, v11}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v8

    .line 371
    .local v8, "jobPriority":I
    iget v12, v10, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    if-lt v8, v12, :cond_c

    .line 372
    goto :goto_7

    .line 375
    :cond_c
    if-le v15, v8, :cond_d

    .line 378
    move v12, v8

    .line 379
    .end local v15    # "minPriorityForPreemption":I
    .local v12, "minPriorityForPreemption":I
    move v15, v13

    move/from16 v16, v15

    move v15, v12

    .line 347
    .end local v8    # "jobPriority":I
    .end local v11    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v12    # "minPriorityForPreemption":I
    .end local v22    # "preferredUid":I
    .restart local v15    # "minPriorityForPreemption":I
    :cond_d
    :goto_7
    add-int/lit8 v13, v13, 0x1

    move/from16 v12, v20

    move-object/from16 v8, v21

    const/16 v11, 0x10

    goto :goto_4

    .end local v20    # "jobRunningContext":I
    .end local v21    # "preferredUidForContext":[I
    .local v8, "preferredUidForContext":[I
    .local v12, "jobRunningContext":I
    :cond_e
    move-object/from16 v21, v8

    move/from16 v20, v12

    .end local v8    # "preferredUidForContext":[I
    .end local v12    # "jobRunningContext":I
    .restart local v20    # "jobRunningContext":I
    .restart local v21    # "preferredUidForContext":[I
    move/from16 v8, v16

    .line 384
    .end local v13    # "j":I
    .end local v16    # "selectedContextId":I
    .local v8, "selectedContextId":I
    :goto_8
    const/4 v11, -0x1

    if-eq v8, v11, :cond_f

    .line 385
    aput-object v10, v6, v8

    .line 386
    aput-boolean v19, v7, v8

    .line 388
    :cond_f
    if-eqz v17, :cond_10

    .line 390
    iget-object v12, v0, Lcom/android/server/job/JobConcurrencyManager;->mJobCountTracker:Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;

    invoke-virtual {v12, v14}, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->onStartingNewJob(Z)V

    .line 330
    .end local v8    # "selectedContextId":I
    .end local v10    # "nextPending":Lcom/android/server/job/controllers/JobStatus;
    .end local v14    # "isPendingFg":Z
    .end local v15    # "minPriorityForPreemption":I
    .end local v17    # "startingJob":Z
    .end local v20    # "jobRunningContext":I
    :cond_10
    :goto_9
    add-int/lit8 v9, v9, 0x1

    move v13, v11

    move-object/from16 v8, v21

    const/16 v11, 0x10

    goto/16 :goto_3

    .end local v21    # "preferredUidForContext":[I
    .local v8, "preferredUidForContext":[I
    :cond_11
    move-object/from16 v21, v8

    .line 393
    .end local v8    # "preferredUidForContext":[I
    .end local v9    # "i":I
    .restart local v21    # "preferredUidForContext":[I
    sget-boolean v8, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v8, :cond_12

    .line 394
    const-string/jumbo v8, "running jobs final"

    invoke-static {v6, v8}, Lcom/android/server/job/JobConcurrencyManager;->printContextIdToJobMap([Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_12
    iget-object v8, v0, Lcom/android/server/job/JobConcurrencyManager;->mJobCountTracker:Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;

    invoke-virtual {v8}, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->logStatus()V

    .line 399
    iget-object v8, v0, Lcom/android/server/job/JobConcurrencyManager;->mJobCountTracker:Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;

    invoke-virtual {v8}, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->getTotalRunningJobCountToNote()I

    move-result v8

    iget-object v9, v0, Lcom/android/server/job/JobConcurrencyManager;->mJobCountTracker:Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;

    .line 400
    invoke-virtual {v9}, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->getFgRunningJobCountToNote()I

    move-result v9

    .line 399
    invoke-virtual {v1, v8, v9}, Lcom/android/server/job/JobPackageTracker;->noteConcurrency(II)V

    .line 402
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_a
    const/16 v9, 0x10

    if-ge v8, v9, :cond_1a

    .line 403
    const/4 v10, 0x0

    .line 404
    .local v10, "preservePreferredUid":Z
    aget-boolean v11, v7, v8

    if-eqz v11, :cond_18

    .line 405
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v11}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v11

    .line 406
    .local v11, "js":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v11, :cond_14

    .line 407
    sget-boolean v12, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v12, :cond_13

    .line 408
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "preempting job: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v13}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 408
    invoke-static {v2, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_13
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v12}, Lcom/android/server/job/JobServiceContext;->preemptExecutingJobLocked()V

    .line 413
    const/4 v10, 0x1

    goto :goto_c

    .line 415
    :cond_14
    aget-object v12, v6, v8

    .line 416
    .local v12, "pendingJob":Lcom/android/server/job/controllers/JobStatus;
    sget-boolean v13, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v13, :cond_15

    .line 417
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "About to run job on context "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", job: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_15
    const/4 v13, 0x0

    .local v13, "ic":I
    :goto_b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_16

    .line 421
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v14, v12}, Lcom/android/server/job/controllers/StateController;->prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 420
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 423
    .end local v13    # "ic":I
    :cond_16
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v13, v12}, Lcom/android/server/job/JobServiceContext;->executeRunnableJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v13

    if-nez v13, :cond_17

    .line 424
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error executing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_17
    invoke-interface {v3, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 427
    invoke-virtual {v1, v12}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 431
    .end local v11    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v12    # "pendingJob":Lcom/android/server/job/controllers/JobStatus;
    :cond_18
    :goto_c
    if-nez v10, :cond_19

    .line 432
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v11}, Lcom/android/server/job/JobServiceContext;->clearPreferredUid()V

    .line 402
    .end local v10    # "preservePreferredUid":Z
    :cond_19
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_a

    .line 435
    .end local v8    # "i":I
    :cond_1a
    return-void
.end method

.method private static findJobContextIdFromMap(Lcom/android/server/job/controllers/JobStatus;[Lcom/android/server/job/controllers/JobStatus;)I
    .locals 4
    .param p0, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p1, "map"    # [Lcom/android/server/job/controllers/JobStatus;

    .line 438
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 439
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/job/controllers/JobStatus;->matches(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    return v0

    .line 438
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 443
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private isFgJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 2
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 208
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    const/16 v1, 0x28

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$5dmb0pQscXPwEG6SBnhs7aCwpSs(Lcom/android/server/job/JobConcurrencyManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/job/JobConcurrencyManager;->rampUpForScreenOff()V

    return-void
.end method

.method private onInteractiveStateChanged(Z)V
    .locals 7
    .param p1, "interactive"    # Z

    .line 143
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mCurrentInteractiveState:Z

    if-ne v1, p1, :cond_0

    .line 145
    monitor-exit v0

    return-void

    .line 147
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mCurrentInteractiveState:Z

    .line 148
    sget-boolean v1, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 149
    const-string v1, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interactive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_1
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 153
    .local v1, "nowRealtime":J
    if-eqz p1, :cond_2

    .line 154
    iput-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOnRealtime:J

    .line 155
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    .line 157
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mRampUpForScreenOff:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 159
    :cond_2
    iput-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    .line 168
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mRampUpForScreenOff:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/android/server/job/JobConcurrencyManager;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService$Constants;->SCREEN_OFF_JOB_CONCURRENCY_INCREASE_DELAY_MS:Landroid/util/KeyValueListParser$IntValue;

    .line 169
    invoke-virtual {v5}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v5

    int-to-long v5, v5

    .line 168
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 171
    .end local v1    # "nowRealtime":J
    :goto_0
    monitor-exit v0

    .line 172
    return-void

    .line 171
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static printContextIdToJobMap([Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "map"    # [Lcom/android/server/job/controllers/JobStatus;
    .param p1, "initial"    # Ljava/lang/String;

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 463
    .local v0, "s":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 464
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    aget-object v2, p0, v1

    const/4 v3, -0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 466
    aget-object v2, p0, v1

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 467
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 469
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private printPendingQueueLocked()Ljava/lang/String;
    .locals 4

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pending queue: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 449
    .local v0, "s":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 450
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 452
    .local v2, "js":Lcom/android/server/job/controllers/JobStatus;
    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 454
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 456
    const-string v3, ") "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .end local v2    # "js":Lcom/android/server/job/controllers/JobStatus;
    goto :goto_0

    .line 458
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private rampUpForScreenOff()V
    .locals 7

    .line 181
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    if-nez v1, :cond_0

    .line 185
    monitor-exit v0

    return-void

    .line 187
    :cond_0
    iget-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOnRealtime:J

    iget-wide v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 188
    monitor-exit v0

    return-void

    .line 190
    :cond_1
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 191
    .local v1, "now":J
    iget-wide v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    iget-object v5, p0, Lcom/android/server/job/JobConcurrencyManager;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService$Constants;->SCREEN_OFF_JOB_CONCURRENCY_INCREASE_DELAY_MS:Landroid/util/KeyValueListParser$IntValue;

    .line 192
    invoke-virtual {v5}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    cmp-long v3, v3, v1

    if-lez v3, :cond_2

    .line 194
    monitor-exit v0

    return-void

    .line 197
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    .line 199
    sget-boolean v3, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 200
    const-string v3, "JobScheduler"

    const-string v4, "Ramping up concurrency"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_3
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    .line 204
    .end local v1    # "now":J
    monitor-exit v0

    .line 205
    return-void

    .line 204
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private refreshSystemStateLocked()V
    .locals 6

    .line 213
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 216
    .local v0, "nowUptime":J
    iget-wide v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mNextSystemStateRefreshTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 217
    return-void

    .line 220
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v2}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v2

    .line 221
    .local v2, "start":J
    const-wide/16 v4, 0x3e8

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mNextSystemStateRefreshTime:J

    .line 223
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I

    .line 225
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getMemoryTrimLevel()I

    move-result v4

    iput v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    goto :goto_0

    .line 226
    :catch_0
    move-exception v4

    .line 229
    :goto_0
    iget-object v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 230
    return-void
.end method

.method private updateMaxCountsLocked()V
    .locals 3

    .line 234
    invoke-direct {p0}, Lcom/android/server/job/JobConcurrencyManager;->refreshSystemStateLocked()V

    .line 236
    iget-boolean v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_ON:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    goto :goto_0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_OFF:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    :goto_0
    nop

    .line 241
    .local v0, "jobCounts":Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;
    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 252
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxJobCounts:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    goto :goto_1

    .line 249
    :cond_1
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxJobCounts:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    .line 250
    goto :goto_1

    .line 246
    :cond_2
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxJobCounts:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    .line 247
    goto :goto_1

    .line 243
    :cond_3
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxJobCounts:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    .line 244
    nop

    .line 255
    :goto_1
    return-void
.end method


# virtual methods
.method assignJobsToContextsLocked()V
    .locals 4

    .line 265
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    .line 267
    .local v0, "start":J
    invoke-direct {p0}, Lcom/android/server/job/JobConcurrencyManager;->assignJobsToContextsInternalLocked()V

    .line 269
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 270
    return-void
.end method

.method public dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;JJ)V
    .locals 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "now"    # J
    .param p4, "nowRealtime"    # J

    .line 474
    const-string v0, "Concurrency:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 478
    :try_start_0
    const-string v0, "Screen state: current "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 479
    iget-boolean v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mCurrentInteractiveState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "ON"

    const-string v2, "OFF"

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 480
    const-string v0, "  effective "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 481
    iget-boolean v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 484
    const-string v0, "Last screen ON: "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 485
    sub-long v0, p2, p4

    iget-wide v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOnRealtime:J

    add-long/2addr v0, v2

    invoke-static {p1, v0, v1, p2, p3}, Landroid/util/TimeUtils;->dumpTimeWithDelta(Ljava/io/PrintWriter;JJ)V

    .line 486
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 488
    const-string v0, "Last screen OFF: "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 489
    sub-long v0, p2, p4

    iget-wide v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    add-long/2addr v0, v2

    invoke-static {p1, v0, v1, p2, p3}, Landroid/util/TimeUtils;->dumpTimeWithDelta(Ljava/io/PrintWriter;JJ)V

    .line 490
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 492
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 494
    const-string v0, "Current max jobs:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 495
    const-string v0, "  "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mJobCountTracker:Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 498
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 500
    const-string/jumbo v0, "mLastMemoryTrimLevel: "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 501
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 502
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 504
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StatLogger;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 507
    nop

    .line 508
    return-void

    .line 506
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 507
    throw v0
.end method

.method public dumpProtoLocked(Landroid/util/proto/ProtoOutputStream;JJJ)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "tag"    # J
    .param p4, "now"    # J
    .param p6, "nowRealtime"    # J

    .line 511
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 513
    .local v0, "token":J
    iget-boolean v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mCurrentInteractiveState:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 514
    iget-boolean v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 517
    iget-wide v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOnRealtime:J

    sub-long v2, p6, v2

    const-wide v4, 0x10300000003L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 519
    iget-wide v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    sub-long v2, p6, v2

    const-wide v4, 0x10300000004L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 522
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mJobCountTracker:Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 524
    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I

    const-wide v3, 0x10500000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 526
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const-wide v3, 0x10b00000007L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/internal/util/StatLogger;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 528
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 529
    return-void
.end method

.method public onSystemReady()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/job/JobConcurrencyManager;->onInteractiveStateChanged(Z)V

    .line 123
    return-void
.end method
