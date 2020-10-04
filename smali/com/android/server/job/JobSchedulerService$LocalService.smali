.class final Lcom/android/server/job/JobSchedulerService$LocalService;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"

# interfaces
.implements Lcom/android/server/job/JobSchedulerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/JobSchedulerService;

    .line 2480
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addBackingUpUid(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 2556
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2560
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2561
    monitor-exit v0

    .line 2562
    return-void

    .line 2561
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public baseHeartbeatForApp(Ljava/lang/String;II)J
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "appStandbyBucket"    # I

    .line 2506
    const-string v0, "/"

    const-string v1, "JobScheduler"

    if-eqz p3, :cond_2

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_BEATS:[I

    array-length v2, v2

    if-lt p3, v2, :cond_0

    goto :goto_0

    .line 2518
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/job/JobSchedulerService;->heartbeatWhenJobsLastRun(Ljava/lang/String;I)J

    move-result-wide v2

    .line 2519
    .local v2, "baseHeartbeat":J
    sget-boolean v4, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v4, :cond_1

    .line 2520
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Base heartbeat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " for new job in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    :cond_1
    return-wide v2

    .line 2511
    .end local v2    # "baseHeartbeat":J
    :cond_2
    :goto_0
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v2, :cond_3

    .line 2512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Base heartbeat forced ZERO for new job in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    :cond_3
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public cancelJobsForUid(ILjava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 2551
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(ILjava/lang/String;)Z

    .line 2552
    return-void
.end method

.method public clearAllBackingUpUids()V
    .locals 3

    .line 2578
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2579
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2580
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 2581
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2583
    :cond_0
    monitor-exit v0

    .line 2584
    return-void

    .line 2583
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public currentHeartbeat()J
    .locals 2

    .line 2486
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getCurrentHeartbeat()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    .locals 3

    .line 2593
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2594
    :try_start_0
    new-instance v1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v2}, Lcom/android/server/job/JobStore;->getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;-><init>(Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;)V

    monitor-exit v0

    return-object v1

    .line 2595
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSystemScheduledPendingJobs()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    .line 2538
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2539
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2540
    .local v1, "pendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    const/16 v3, 0x3e8

    new-instance v4, Lcom/android/server/job/-$$Lambda$JobSchedulerService$LocalService$yaChpLJ2odu2Fk7A6H8erUndrN8;

    invoke-direct {v4, p0, v1}, Lcom/android/server/job/-$$Lambda$JobSchedulerService$LocalService$yaChpLJ2odu2Fk7A6H8erUndrN8;-><init>(Lcom/android/server/job/JobSchedulerService$LocalService;Ljava/util/List;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/server/job/JobStore;->forEachJob(ILjava/util/function/Consumer;)V

    .line 2545
    monitor-exit v0

    return-object v1

    .line 2546
    .end local v1    # "pendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$getSystemScheduledPendingJobs$0$JobSchedulerService$LocalService(Ljava/util/List;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1
    .param p1, "pendingJobs"    # Ljava/util/List;
    .param p2, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2541
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0, p2}, Lcom/android/server/job/JobSchedulerService;->access$1000(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2542
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2544
    :cond_1
    return-void
.end method

.method public nextHeartbeatForBucket(I)J
    .locals 3
    .param p1, "bucket"    # I

    .line 2493
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2494
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    aget-wide v1, v1, p1

    monitor-exit v0

    return-wide v1

    .line 2495
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteJobStart(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2527
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2528
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-wide v2, v2, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/android/server/job/JobSchedulerService;->setLastJobHeartbeatLocked(Ljava/lang/String;IJ)V

    .line 2529
    monitor-exit v0

    .line 2530
    return-void

    .line 2529
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeBackingUpUid(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 2566
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2567
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2570
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobStore;->countJobsForUid(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 2571
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2573
    :cond_0
    monitor-exit v0

    .line 2574
    return-void

    .line 2573
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reportAppUsage(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2588
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/JobSchedulerService;->reportAppUsage(Ljava/lang/String;I)V

    .line 2589
    return-void
.end method
