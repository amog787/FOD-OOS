.class public Lcom/android/server/net/watchlist/ReportWatchlistJobService;
.super Landroid/app/job/JobService;
.source "ReportWatchlistJobService.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final REPORT_WATCHLIST_RECORDS_JOB_ID:I = 0xd7689

.field public static final REPORT_WATCHLIST_RECORDS_PERIOD_MILLIS:J

.field private static final TAG:Ljava/lang/String; = "WatchlistJobService"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 41
    const-wide/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/net/watchlist/ReportWatchlistJobService;->REPORT_WATCHLIST_RECORDS_PERIOD_MILLIS:J

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static schedule(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 64
    nop

    .line 65
    const-string/jumbo v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 66
    .local v0, "scheduler":Landroid/app/job/JobScheduler;
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/android/server/net/watchlist/ReportWatchlistJobService;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v3, 0xd7689

    invoke-direct {v1, v3, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-wide v2, Lcom/android/server/net/watchlist/ReportWatchlistJobService;->REPORT_WATCHLIST_RECORDS_PERIOD_MILLIS:J

    .line 69
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 70
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 71
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 72
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 74
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3
    .param p1, "jobParameters"    # Landroid/app/job/JobParameters;

    .line 45
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0xd7689

    if-eq v0, v2, :cond_0

    .line 46
    return v1

    .line 49
    :cond_0
    new-instance v0, Landroid/net/NetworkWatchlistManager;

    invoke-direct {v0, p0}, Landroid/net/NetworkWatchlistManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/net/NetworkWatchlistManager;->reportWatchlistIfNecessary()V

    .line 50
    invoke-virtual {p0, p1, v1}, Lcom/android/server/net/watchlist/ReportWatchlistJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1
    .param p1, "jobParameters"    # Landroid/app/job/JobParameters;

    .line 56
    const/4 v0, 0x1

    return v0
.end method
