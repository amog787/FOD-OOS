.class public Lcom/android/server/PruneInstantAppsJobService;
.super Landroid/app/job/JobService;
.source "PruneInstantAppsJobService.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final JOB_ID:I = 0xbacc3

.field private static final PRUNE_INSTANT_APPS_PERIOD_MILLIS:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 36
    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/PruneInstantAppsJobService;->PRUNE_INSTANT_APPS_PERIOD_MILLIS:J

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static schedule(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 39
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    new-instance v1, Landroid/content/ComponentName;

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/android/server/PruneInstantAppsJobService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0xbacc3

    invoke-direct {v0, v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 41
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    sget-wide v1, Lcom/android/server/PruneInstantAppsJobService;->PRUNE_INSTANT_APPS_PERIOD_MILLIS:J

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 45
    .local v0, "pruneJob":Landroid/app/job/JobInfo;
    const-class v1, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    .line 46
    .local v1, "jobScheduler":Landroid/app/job/JobScheduler;
    invoke-virtual {v1, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 47
    return-void
.end method


# virtual methods
.method public synthetic lambda$onStartJob$0$PruneInstantAppsJobService(Landroid/app/job/JobParameters;)V
    .locals 2
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 52
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 54
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->pruneInstantApps()V

    .line 55
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/PruneInstantAppsJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 56
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 51
    new-instance v0, Lcom/android/server/-$$Lambda$PruneInstantAppsJobService$i4sLSJdxcTXdgPAQZFbP66ZRprE;

    invoke-direct {v0, p0, p1}, Lcom/android/server/-$$Lambda$PruneInstantAppsJobService$i4sLSJdxcTXdgPAQZFbP66ZRprE;-><init>(Lcom/android/server/PruneInstantAppsJobService;Landroid/app/job/JobParameters;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 62
    const/4 v0, 0x0

    return v0
.end method
