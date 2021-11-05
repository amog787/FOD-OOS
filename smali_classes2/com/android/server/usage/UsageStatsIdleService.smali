.class public Lcom/android/server/usage/UsageStatsIdleService;
.super Landroid/app/job/JobService;
.source "UsageStatsIdleService.java"


# static fields
.field private static final PRUNE_JOB_ID:I = 0x2090c0e3

.field private static final UPDATE_MAPPINGS_JOB_ID:I = 0x209114c6

.field private static final USER_ID_KEY:Ljava/lang/String; = "user_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static cancelJob(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 87
    const v0, 0x2090c0e3

    add-int/2addr v0, p1

    invoke-static {p0, v0}, Lcom/android/server/usage/UsageStatsIdleService;->cancelJobInternal(Landroid/content/Context;I)V

    .line 88
    return-void
.end method

.method private static cancelJobInternal(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jobId"    # I

    .line 95
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 96
    .local v0, "jobScheduler":Landroid/app/job/JobScheduler;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 99
    :cond_0
    return-void
.end method

.method static cancelUpdateMappingsJob(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 91
    const v0, 0x209114c6

    invoke-static {p0, v0}, Lcom/android/server/usage/UsageStatsIdleService;->cancelJobInternal(Landroid/content/Context;I)V

    .line 92
    return-void
.end method

.method static scheduleJob(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 50
    const v0, 0x2090c0e3

    add-int/2addr v0, p1

    .line 51
    .local v0, "userJobId":I
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/android/server/usage/UsageStatsIdleService;

    .line 52
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .local v1, "component":Landroid/content/ComponentName;
    new-instance v2, Landroid/os/PersistableBundle;

    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    .line 54
    .local v2, "bundle":Landroid/os/PersistableBundle;
    const-string v3, "user_id"

    invoke-virtual {v2, v3, p1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 55
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v3, v0, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 56
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    .line 57
    invoke-virtual {v3, v2}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    .line 58
    invoke-virtual {v3, v4}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    .line 59
    invoke-virtual {v3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v3

    .line 61
    .local v3, "pruneJob":Landroid/app/job/JobInfo;
    invoke-static {p0, v3, v0}, Lcom/android/server/usage/UsageStatsIdleService;->scheduleJobInternal(Landroid/content/Context;Landroid/app/job/JobInfo;I)V

    .line 62
    return-void
.end method

.method private static scheduleJobInternal(Landroid/content/Context;Landroid/app/job/JobInfo;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pruneJob"    # Landroid/app/job/JobInfo;
    .param p2, "jobId"    # I

    .line 77
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 78
    .local v0, "jobScheduler":Landroid/app/job/JobScheduler;
    invoke-virtual {v0, p2}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v1

    .line 80
    .local v1, "pendingPruneJob":Landroid/app/job/JobInfo;
    invoke-virtual {p1, v1}, Landroid/app/job/JobInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    invoke-virtual {v0, p2}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 82
    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 84
    :cond_0
    return-void
.end method

.method static scheduleUpdateMappingsJob(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 65
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/server/usage/UsageStatsIdleService;

    .line 66
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .local v0, "component":Landroid/content/ComponentName;
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    const v2, 0x209114c6

    invoke-direct {v1, v2, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 68
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 69
    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 70
    const-wide/16 v4, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 73
    .local v1, "updateMappingsJob":Landroid/app/job/JobInfo;
    invoke-static {p0, v1, v2}, Lcom/android/server/usage/UsageStatsIdleService;->scheduleJobInternal(Landroid/content/Context;Landroid/app/job/JobInfo;I)V

    .line 74
    return-void
.end method


# virtual methods
.method public synthetic lambda$onStartJob$0$UsageStatsIdleService(Landroid/app/job/JobParameters;I)V
    .locals 3
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "userId"    # I

    .line 110
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 112
    .local v0, "usageStatsManagerInternal":Landroid/app/usage/UsageStatsManagerInternal;
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    const v2, 0x209114c6

    if-ne v1, v2, :cond_0

    .line 113
    invoke-virtual {v0}, Landroid/app/usage/UsageStatsManagerInternal;->updatePackageMappingsData()Z

    move-result v1

    .line 114
    .local v1, "jobFinished":Z
    xor-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/usage/UsageStatsIdleService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 115
    .end local v1    # "jobFinished":Z
    goto :goto_0

    .line 116
    :cond_0
    nop

    .line 117
    invoke-virtual {v0, p2}, Landroid/app/usage/UsageStatsManagerInternal;->pruneUninstalledPackagesData(I)Z

    move-result v1

    .line 118
    .restart local v1    # "jobFinished":Z
    xor-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/usage/UsageStatsIdleService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 120
    .end local v1    # "jobFinished":Z
    :goto_0
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 103
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 104
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "user_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 105
    .local v1, "userId":I
    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    const v3, 0x209114c6

    if-eq v2, v3, :cond_0

    .line 106
    const/4 v2, 0x0

    return v2

    .line 109
    :cond_0
    new-instance v2, Lcom/android/server/usage/-$$Lambda$UsageStatsIdleService$yCu7ZLOsLXVx3Ko_5w14oCiO5p4;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/usage/-$$Lambda$UsageStatsIdleService$yCu7ZLOsLXVx3Ko_5w14oCiO5p4;-><init>(Lcom/android/server/usage/UsageStatsIdleService;Landroid/app/job/JobParameters;I)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 121
    const/4 v2, 0x1

    return v2
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 127
    const/4 v0, 0x0

    return v0
.end method
