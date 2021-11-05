.class public Lcom/android/server/blob/BlobStoreIdleJobService;
.super Landroid/app/job/JobService;
.source "BlobStoreIdleJobService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static schedule(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 56
    const-string/jumbo v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 58
    .local v0, "jobScheduler":Landroid/app/job/JobScheduler;
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/android/server/blob/BlobStoreIdleJobService;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v3, 0xb70b1d7

    invoke-direct {v1, v3, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 60
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 61
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 62
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->getIdleJobPeriodMs()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 64
    .local v1, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 65
    sget-boolean v2, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz v2, :cond_0

    .line 66
    const-string v2, "BlobStore"

    const-string v3, "Scheduling the idle maintenance job"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$onStartJob$0$BlobStoreIdleJobService(Landroid/app/job/JobParameters;)V
    .locals 2
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 40
    const-class v0, Lcom/android/server/blob/BlobStoreManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/blob/BlobStoreManagerInternal;

    .line 42
    .local v0, "blobStoreManagerInternal":Lcom/android/server/blob/BlobStoreManagerInternal;
    invoke-virtual {v0}, Lcom/android/server/blob/BlobStoreManagerInternal;->onIdleMaintenance()V

    .line 43
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/blob/BlobStoreIdleJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 44
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 39
    new-instance v0, Lcom/android/server/blob/-$$Lambda$BlobStoreIdleJobService$QLVz0oIQQ3v_OiKfbSw3ba5DMho;

    invoke-direct {v0, p0, p1}, Lcom/android/server/blob/-$$Lambda$BlobStoreIdleJobService$QLVz0oIQQ3v_OiKfbSw3ba5DMho;-><init>(Lcom/android/server/blob/BlobStoreIdleJobService;Landroid/app/job/JobParameters;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Idle maintenance job is stopped; id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v1

    invoke-static {v1}, Landroid/app/job/JobParameters;->getReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    const-string v1, "BlobStore"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v0, 0x0

    return v0
.end method
