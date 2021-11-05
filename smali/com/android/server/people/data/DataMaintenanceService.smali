.class public Lcom/android/server/people/data/DataMaintenanceService;
.super Landroid/app/job/JobService;
.source "DataMaintenanceService.java"


# static fields
.field private static final BASE_JOB_ID:I = 0xc315bd7

.field private static final JOB_RUN_INTERVAL:J


# instance fields
.field private mSignal:Landroid/os/CancellationSignal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x18

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/people/data/DataMaintenanceService;->JOB_RUN_INTERVAL:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static cancelJob(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 58
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 59
    .local v0, "jobScheduler":Landroid/app/job/JobScheduler;
    invoke-static {p1}, Lcom/android/server/people/data/DataMaintenanceService;->getJobId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 60
    return-void
.end method

.method private static getJobId(I)I
    .locals 1
    .param p0, "userId"    # I

    .line 86
    const v0, 0xc315bd7

    add-int/2addr v0, p0

    return v0
.end method

.method private static getUserId(I)I
    .locals 1
    .param p0, "jobId"    # I

    .line 90
    const v0, 0xc315bd7

    sub-int v0, p0, v0

    return v0
.end method

.method static scheduleJob(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 45
    invoke-static {p1}, Lcom/android/server/people/data/DataMaintenanceService;->getJobId(I)I

    move-result v0

    .line 46
    .local v0, "jobId":I
    const-class v1, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    .line 47
    .local v1, "jobScheduler":Landroid/app/job/JobScheduler;
    invoke-virtual {v1, v0}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 48
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/android/server/people/data/DataMaintenanceService;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .local v2, "component":Landroid/content/ComponentName;
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v3, v0, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v4, 0x1

    .line 50
    invoke-virtual {v3, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    sget-wide v4, Lcom/android/server/people/data/DataMaintenanceService;->JOB_RUN_INTERVAL:J

    .line 51
    invoke-virtual {v3, v4, v5}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    .line 52
    invoke-virtual {v3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v3

    .line 53
    .local v3, "newJob":Landroid/app/job/JobInfo;
    invoke-virtual {v1, v3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 55
    .end local v2    # "component":Landroid/content/ComponentName;
    .end local v3    # "newJob":Landroid/app/job/JobInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$onStartJob$0$DataMaintenanceService(ILandroid/app/job/JobParameters;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "params"    # Landroid/app/job/JobParameters;

    .line 69
    const-class v0, Lcom/android/server/people/PeopleServiceInternal;

    .line 70
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/PeopleServiceInternal;

    .line 71
    .local v0, "peopleServiceInternal":Lcom/android/server/people/PeopleServiceInternal;
    iget-object v1, p0, Lcom/android/server/people/data/DataMaintenanceService;->mSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/people/PeopleServiceInternal;->pruneDataForUser(ILandroid/os/CancellationSignal;)V

    .line 72
    iget-object v1, p0, Lcom/android/server/people/data/DataMaintenanceService;->mSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    invoke-virtual {p0, p2, v1}, Lcom/android/server/people/data/DataMaintenanceService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 73
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 66
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/people/data/DataMaintenanceService;->getUserId(I)I

    move-result v0

    .line 67
    .local v0, "userId":I
    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v1, p0, Lcom/android/server/people/data/DataMaintenanceService;->mSignal:Landroid/os/CancellationSignal;

    .line 68
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/people/data/-$$Lambda$DataMaintenanceService$pZUzfdXzCXsv1D-xTvqArhV-TxI;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/people/data/-$$Lambda$DataMaintenanceService$pZUzfdXzCXsv1D-xTvqArhV-TxI;-><init>(Lcom/android/server/people/data/DataMaintenanceService;ILandroid/app/job/JobParameters;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 73
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 74
    const/4 v1, 0x1

    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 79
    iget-object v0, p0, Lcom/android/server/people/data/DataMaintenanceService;->mSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 82
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
