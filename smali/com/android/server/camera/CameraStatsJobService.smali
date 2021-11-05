.class public Lcom/android/server/camera/CameraStatsJobService;
.super Landroid/app/job/JobService;
.source "CameraStatsJobService.java"


# static fields
.field private static final CAMERA_REPORTING_JOB_ID:I = 0xca3e7a

.field private static final TAG:Ljava/lang/String; = "CameraStatsJobService"

.field private static sCameraStatsJobServiceName:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/camera/CameraStatsJobService;

    .line 43
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/camera/CameraStatsJobService;->sCameraStatsJobServiceName:Landroid/content/ComponentName;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static schedule(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 65
    const-string/jumbo v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 66
    .local v0, "js":Landroid/app/job/JobScheduler;
    if-nez v0, :cond_0

    .line 67
    const-string v1, "CameraStatsJobService"

    const-string v2, "Can\'t collect camera usage stats - no Job Scheduler"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void

    .line 70
    :cond_0
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    const v2, 0xca3e7a

    sget-object v3, Lcom/android/server/camera/CameraStatsJobService;->sCameraStatsJobServiceName:Landroid/content/ComponentName;

    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    .line 71
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 72
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 75
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 47
    const-class v0, Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/camera/CameraServiceProxy;

    .line 48
    .local v0, "serviceProxy":Lcom/android/server/camera/CameraServiceProxy;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 49
    const-string v2, "CameraStatsJobService"

    const-string v3, "Can\'t collect camera usage stats - no camera service proxy found"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return v1

    .line 53
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/camera/CameraServiceProxy;->dumpUsageEvents()V

    .line 54
    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 60
    const/4 v0, 0x0

    return v0
.end method
