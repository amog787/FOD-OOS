.class final Lcom/android/server/job/JobSchedulerService$StandbyTracker;
.super Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "StandbyTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/JobSchedulerService;

    .line 2507
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z
    .param p4, "bucket"    # I
    .param p5, "reason"    # I

    .line 2515
    return-void
.end method

.method public onUserInteractionStarted(Ljava/lang/String;I)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2519
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLocalPM:Landroid/content/pm/PackageManagerInternal;

    const/16 v1, 0x2000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 2521
    .local v0, "uid":I
    if-gez v0, :cond_0

    .line 2523
    return-void

    .line 2526
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, p1, p2}, Landroid/app/usage/UsageStatsManagerInternal;->getTimeSinceLastJobRun(Ljava/lang/String;I)J

    move-result-wide v1

    .line 2527
    .local v1, "sinceLast":J
    const-wide/32 v3, 0xa4cb800

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 2529
    const-wide/16 v1, 0x0

    move-wide v8, v1

    goto :goto_0

    .line 2527
    :cond_1
    move-wide v8, v1

    .line 2531
    .end local v1    # "sinceLast":J
    .local v8, "sinceLast":J
    :goto_0
    new-instance v1, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;

    invoke-direct {v1}, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;-><init>()V

    .line 2532
    .local v1, "counter":Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2533
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/job/JobStore;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    .line 2534
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2535
    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;->numDeferred()I

    move-result v2

    if-gtz v2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-lez v2, :cond_3

    .line 2536
    :cond_2
    const-class v2, Landroid/os/BatteryStatsInternal;

    .line 2537
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/os/BatteryStatsInternal;

    .line 2538
    .local v10, "mBatteryStatsInternal":Landroid/os/BatteryStatsInternal;
    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;->numDeferred()I

    move-result v2

    invoke-virtual {v10, v0, v2, v8, v9}, Landroid/os/BatteryStatsInternal;->noteJobsDeferred(IIJ)V

    .line 2539
    const/16 v2, 0x55

    const/4 v4, 0x0

    .line 2541
    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;->numDeferred()I

    move-result v5

    .line 2539
    move v3, v0

    move-wide v6, v8

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;IJ)V

    .line 2543
    .end local v10    # "mBatteryStatsInternal":Landroid/os/BatteryStatsInternal;
    :cond_3
    return-void

    .line 2534
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
