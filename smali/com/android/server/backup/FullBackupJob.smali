.class public Lcom/android/server/backup/FullBackupJob;
.super Landroid/app/job/JobService;
.source "FullBackupJob.java"


# static fields
.field public static final MAX_JOB_ID:I = 0x31fdd38

.field public static final MIN_JOB_ID:I = 0x31fd950

.field private static final USER_ID_EXTRA_KEY:Ljava/lang/String; = "userId"

.field private static sIdleService:Landroid/content/ComponentName;


# instance fields
.field private final mParamsForUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/job/JobParameters;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/backup/FullBackupJob;

    .line 42
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/backup/FullBackupJob;->sIdleService:Landroid/content/ComponentName;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    return-void
.end method

.method public static cancel(ILandroid/content/Context;)V
    .locals 2
    .param p0, "userId"    # I
    .param p1, "ctx"    # Landroid/content/Context;

    .line 68
    const-string/jumbo v0, "jobscheduler"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 70
    .local v0, "js":Landroid/app/job/JobScheduler;
    invoke-static {p0}, Lcom/android/server/backup/FullBackupJob;->getJobIdForUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 71
    return-void
.end method

.method private static getJobIdForUserId(I)I
    .locals 2
    .param p0, "userId"    # I

    .line 115
    const v0, 0x31fd950

    const v1, 0x31fdd38

    invoke-static {v0, v1, p0}, Lcom/android/server/backup/JobIdManager;->getJobIdForUserId(III)I

    move-result v0

    return v0
.end method

.method public static schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V
    .locals 4
    .param p0, "userId"    # I
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "minDelay"    # J
    .param p4, "constants"    # Lcom/android/server/backup/BackupManagerConstants;

    .line 49
    const-string/jumbo v0, "jobscheduler"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 50
    .local v0, "js":Landroid/app/job/JobScheduler;
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    invoke-static {p0}, Lcom/android/server/backup/FullBackupJob;->getJobIdForUserId(I)I

    move-result v2

    sget-object v3, Lcom/android/server/backup/FullBackupJob;->sIdleService:Landroid/content/ComponentName;

    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 51
    .local v1, "builder":Landroid/app/job/JobInfo$Builder;
    monitor-enter p4

    .line 52
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 53
    invoke-virtual {p4}, Lcom/android/server/backup/BackupManagerConstants;->getFullBackupRequiredNetworkType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 54
    invoke-virtual {p4}, Lcom/android/server/backup/BackupManagerConstants;->getFullBackupRequireCharging()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 55
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_0

    .line 57
    invoke-virtual {v1, p2, p3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 60
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v2, "extraInfo":Landroid/os/Bundle;
    const-string/jumbo v3, "userId"

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setTransientExtras(Landroid/os/Bundle;)Landroid/app/job/JobInfo$Builder;

    .line 64
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 65
    return-void

    .line 55
    .end local v2    # "extraInfo":Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public finishBackupPass(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 75
    iget-object v0, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    monitor-enter v0

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobParameters;

    .line 77
    .local v1, "jobParameters":Landroid/app/job/JobParameters;
    if-eqz v1, :cond_0

    .line 78
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/backup/FullBackupJob;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 79
    iget-object v2, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 81
    .end local v1    # "jobParameters":Landroid/app/job/JobParameters;
    :cond_0
    monitor-exit v0

    .line 82
    return-void

    .line 81
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 88
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 90
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    monitor-enter v1

    .line 91
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->getInstance()Lcom/android/server/backup/BackupManagerService;

    move-result-object v1

    .line 95
    .local v1, "service":Lcom/android/server/backup/BackupManagerService;
    invoke-virtual {v1, v0, p0}, Lcom/android/server/backup/BackupManagerService;->beginFullBackup(ILcom/android/server/backup/FullBackupJob;)Z

    move-result v2

    return v2

    .line 92
    .end local v1    # "service":Lcom/android/server/backup/BackupManagerService;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 4
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 100
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 102
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    monitor-enter v1

    .line 103
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 104
    monitor-exit v1

    return v3

    .line 106
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->getInstance()Lcom/android/server/backup/BackupManagerService;

    move-result-object v1

    .line 109
    .local v1, "service":Lcom/android/server/backup/BackupManagerService;
    invoke-virtual {v1, v0}, Lcom/android/server/backup/BackupManagerService;->endFullBackup(I)V

    .line 111
    return v3

    .line 106
    .end local v1    # "service":Lcom/android/server/backup/BackupManagerService;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
