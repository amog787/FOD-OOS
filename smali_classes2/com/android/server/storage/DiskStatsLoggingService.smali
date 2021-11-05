.class public Lcom/android/server/storage/DiskStatsLoggingService;
.super Landroid/app/job/JobService;
.source "DiskStatsLoggingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;
    }
.end annotation


# static fields
.field public static final DUMPSYS_CACHE_PATH:Ljava/lang/String; = "/data/system/diskstats_cache.json"

.field private static final JOB_DISKSTATS_LOGGING:I = 0x4449534b

.field private static final TAG:Ljava/lang/String; = "DiskStatsLogService"

.field private static sDiskStatsLoggingService:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/storage/DiskStatsLoggingService;

    .line 54
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/storage/DiskStatsLoggingService;->sDiskStatsLoggingService:Landroid/content/ComponentName;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private static isCharging(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 109
    nop

    .line 110
    const-string v0, "batterymanager"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    .line 111
    .local v0, "batteryManager":Landroid/os/BatteryManager;
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Landroid/os/BatteryManager;->isCharging()Z

    move-result v1

    return v1

    .line 114
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method static isDumpsysTaskEnabled(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .line 120
    const-string v0, "enable_diskstats_logging"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static schedule(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 99
    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 101
    .local v0, "js":Landroid/app/job/JobScheduler;
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    sget-object v2, Lcom/android/server/storage/DiskStatsLoggingService;->sDiskStatsLoggingService:Landroid/content/ComponentName;

    const v3, 0x4449534b

    invoke-direct {v1, v3, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 102
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 103
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 104
    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 106
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 8
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 60
    invoke-static {p0}, Lcom/android/server/storage/DiskStatsLoggingService;->isCharging(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/storage/DiskStatsLoggingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/storage/DiskStatsLoggingService;->isDumpsysTaskEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/storage/DiskStatsLoggingService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 68
    .local v0, "volume":Landroid/os/storage/VolumeInfo;
    if-nez v0, :cond_1

    .line 69
    return v1

    .line 71
    :cond_1
    new-instance v1, Lcom/android/server/storage/AppCollector;

    invoke-direct {v1, p0, v0}, Lcom/android/server/storage/AppCollector;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    .line 73
    .local v1, "collector":Lcom/android/server/storage/AppCollector;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 74
    .local v3, "userId":I
    new-instance v4, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v4, v3}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 75
    .local v4, "environment":Landroid/os/Environment$UserEnvironment;
    new-instance v5, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;

    invoke-direct {v5}, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;-><init>()V

    .line 76
    .local v5, "task":Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;
    sget-object v6, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 77
    invoke-virtual {v4, v6}, Landroid/os/Environment$UserEnvironment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 76
    invoke-virtual {v5, v6}, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->setDownloadsDirectory(Ljava/io/File;)V

    .line 78
    invoke-static {p0}, Lcom/android/server/storage/FileCollector;->getSystemSize(Landroid/content/Context;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->setSystemSize(J)V

    .line 79
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/system/diskstats_cache.json"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->setLogOutputFile(Ljava/io/File;)V

    .line 80
    invoke-virtual {v5, v1}, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->setAppCollector(Lcom/android/server/storage/AppCollector;)V

    .line 81
    invoke-virtual {v5, p0, p1}, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->setJobService(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V

    .line 82
    invoke-virtual {v5, p0}, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->setContext(Landroid/content/Context;)V

    .line 83
    invoke-static {v5}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 84
    return v2

    .line 61
    .end local v0    # "volume":Landroid/os/storage/VolumeInfo;
    .end local v1    # "collector":Lcom/android/server/storage/AppCollector;
    .end local v3    # "userId":I
    .end local v4    # "environment":Landroid/os/Environment$UserEnvironment;
    .end local v5    # "task":Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/storage/DiskStatsLoggingService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 62
    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 90
    const/4 v0, 0x0

    return v0
.end method
