.class final Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MaybeReadyJobQueueFunctor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/server/job/controllers/JobStatus;",
        ">;"
    }
.end annotation


# instance fields
.field forceBatchedCount:I

.field final runnableJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;

.field unbatchedCount:I


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/job/JobSchedulerService;

    .line 2128
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    .line 2129
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->reset()V

    .line 2130
    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 11
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2135
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2137
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v1

    .line 2138
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2137
    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2139
    const-string v0, "JobScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aborting job "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2140
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -- package not allowed to start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2139
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2142
    return-void

    .line 2145
    :cond_0
    goto :goto_0

    .line 2144
    :catch_0
    move-exception v0

    .line 2149
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v0

    const/4 v1, 0x5

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_1

    .line 2150
    const/4 v0, 0x1

    .local v0, "shouldForceBatchJob":Z
    goto :goto_3

    .line 2151
    .end local v0    # "shouldForceBatchJob":Z
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v0

    if-lez v0, :cond_2

    .line 2152
    const/4 v0, 0x0

    .restart local v0    # "shouldForceBatchJob":Z
    goto :goto_3

    .line 2154
    .end local v0    # "shouldForceBatchJob":Z
    :cond_2
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 2155
    .local v0, "nowElapsed":J
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getFirstForceBatchedTimeElapsed()J

    move-result-wide v5

    cmp-long v5, v5, v2

    const/4 v6, 0x0

    if-lez v5, :cond_3

    .line 2156
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getFirstForceBatchedTimeElapsed()J

    move-result-wide v7

    sub-long v7, v0, v7

    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v9, v5, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS:J

    cmp-long v5, v7, v9

    if-ltz v5, :cond_3

    move v5, v4

    goto :goto_1

    :cond_3
    move v5, v6

    .line 2158
    .local v5, "batchDelayExpired":Z
    :goto_1
    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v7, v7, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v7, v7, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_NON_ACTIVE_JOBS_COUNT:I

    if-le v7, v4, :cond_4

    .line 2160
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v7

    if-eqz v7, :cond_4

    if-nez v5, :cond_4

    move v6, v4

    goto :goto_2

    :cond_4
    nop

    :goto_2
    move v0, v6

    .line 2164
    .end local v5    # "batchDelayExpired":Z
    .local v0, "shouldForceBatchJob":Z
    :goto_3
    if-eqz v0, :cond_5

    .line 2166
    iget v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->forceBatchedCount:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->forceBatchedCount:I

    .line 2167
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getFirstForceBatchedTimeElapsed()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-nez v1, :cond_6

    .line 2168
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/android/server/job/controllers/JobStatus;->setFirstForceBatchedTimeElapsed(J)V

    goto :goto_4

    .line 2171
    :cond_5
    iget v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->unbatchedCount:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->unbatchedCount:I

    .line 2173
    :cond_6
    :goto_4
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2174
    .end local v0    # "shouldForceBatchJob":Z
    goto :goto_5

    .line 2175
    :cond_7
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobSchedulerService;->evaluateControllerStatesLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 2177
    :goto_5
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 2123
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->accept(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public postProcess()V
    .locals 3

    .line 2180
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->unbatchedCount:I

    const-string v1, "JobScheduler"

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->forceBatchedCount:I

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_NON_ACTIVE_JOBS_COUNT:I

    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 2191
    :cond_0
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 2192
    const-string/jumbo v0, "maybeQueueReadyJobsForExecutionLocked: Not running anything."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2182
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 2183
    const-string/jumbo v0, "maybeQueueReadyJobsForExecutionLocked: Running jobs."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    :cond_2
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->noteJobsPending(Ljava/util/List;)V

    .line 2186
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2187
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 2188
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/server/job/JobSchedulerService;->access$200()Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 2197
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->reset()V

    .line 2198
    return-void
.end method

.method reset()V
    .locals 1

    .line 2202
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->forceBatchedCount:I

    .line 2203
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->unbatchedCount:I

    .line 2204
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2205
    return-void
.end method
