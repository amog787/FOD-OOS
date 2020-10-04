.class public Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
.super Lcom/android/server/backup/fullbackup/FullBackupTask;
.source "PerformFullTransportBackupTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;,
        Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PFTBT"


# instance fields
.field private backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field mBackupObserver:Landroid/app/backup/IBackupObserver;

.field mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

.field private final mBackupRunnerOpToken:I

.field private volatile mCancelAll:Z

.field private final mCancelLock:Ljava/lang/Object;

.field private final mCurrentOpToken:I

.field mCurrentPackage:Landroid/content/pm/PackageInfo;

.field private volatile mIsDoingBackup:Z

.field mJob:Lcom/android/server/backup/FullBackupJob;

.field mLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field private mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransportClient:Lcom/android/server/backup/transport/TransportClient;

.field mUpdateSchedule:Z

.field private final mUserId:I

.field mUserInitiated:Z


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Z)V
    .locals 17
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p3, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p4, "whichPackages"    # [Ljava/lang/String;
    .param p5, "updateSchedule"    # Z
    .param p6, "runningJob"    # Lcom/android/server/backup/FullBackupJob;
    .param p7, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p8, "backupObserver"    # Landroid/app/backup/IBackupObserver;
    .param p9, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p10, "listener"    # Lcom/android/server/backup/internal/OnTaskFinishedListener;
    .param p11, "userInitiated"    # Z

    .line 161
    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    invoke-direct {v1, v3}, Lcom/android/server/backup/fullbackup/FullBackupTask;-><init>(Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    .line 162
    move-object/from16 v4, p1

    iput-object v4, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 163
    move-object/from16 v5, p2

    iput-object v5, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 164
    move/from16 v6, p5

    iput-boolean v6, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    .line 165
    move-object/from16 v7, p7

    iput-object v7, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 166
    move-object/from16 v8, p6

    iput-object v8, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    array-length v9, v2

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    .line 168
    move-object/from16 v9, p8

    iput-object v9, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 169
    move-object/from16 v10, p9

    iput-object v10, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 170
    if-eqz p10, :cond_0

    move-object/from16 v0, p10

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/backup/internal/OnTaskFinishedListener;->NOP:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    :goto_0
    iput-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 171
    move/from16 v11, p11

    iput-boolean v11, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserInitiated:Z

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iput v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iput v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    .line 174
    nop

    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    .line 174
    const-string v12, "Timeout parameters cannot be null"

    invoke-static {v0, v12}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 177
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v0

    iput v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    .line 179
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/UserBackupManagerService;->isBackupOperationInProgress()Z

    move-result v0

    const-string v12, "PFTBT"

    if-eqz v0, :cond_1

    .line 181
    const-string v0, "Skipping full backup. A backup is already in progress."

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    .line 184
    return-void

    .line 187
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->registerTask()V

    .line 189
    array-length v13, v2

    const/4 v0, 0x0

    move v14, v0

    :goto_1
    if-ge v14, v13, :cond_5

    aget-object v15, v2, v14

    .line 191
    .local v15, "pkg":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 192
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    const/high16 v3, 0x8000000

    invoke-virtual {v0, v15, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 194
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iput-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 195
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .local v16, "pm":Landroid/content/pm/PackageManager;
    iget v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-static {v3, v0}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 203
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v3, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/16 v4, 0x9

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v0, v4, v3, v6, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 208
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/16 v3, -0x7d1

    invoke-static {v0, v15, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 210
    goto :goto_2

    .line 211
    :cond_2
    invoke-static {v2}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 218
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v3, 0xa

    iget-object v4, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v0, v3, v4, v6, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 223
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/16 v3, -0x7d1

    invoke-static {v0, v15, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 225
    goto :goto_2

    .line 226
    :cond_3
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 233
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v3, 0xb

    iget-object v4, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v0, v3, v4, v6, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 238
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/16 v3, -0x7d1

    invoke-static {v0, v15, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 240
    goto :goto_2

    .line 242
    :cond_4
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    nop

    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v16    # "pm":Landroid/content/pm/PackageManager;
    goto :goto_2

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found; ignoring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v3, 0xc

    iget-object v4, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v2, v3, v4, v6, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 189
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v15    # "pkg":Ljava/lang/String;
    :goto_2
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v3, p3

    move-object/from16 v2, p4

    move/from16 v6, p5

    goto/16 :goto_1

    .line 252
    :cond_5
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/BackupAgentTimeoutParameters;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 98
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/UserBackupManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 98
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Landroid/app/backup/IBackupManagerMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 98
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;Landroid/app/backup/IBackupManagerMonitor;)Landroid/app/backup/IBackupManagerMonitor;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .param p1, "x1"    # Landroid/app/backup/IBackupManagerMonitor;

    .line 98
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-object p1
.end method

.method static synthetic lambda$newWithCurrentTransport$0(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V
    .locals 0
    .param p0, "transportManager"    # Lcom/android/server/backup/TransportManager;
    .param p1, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p2, "listenerCaller"    # Ljava/lang/String;

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    return-void
.end method

.method public static newWithCurrentTransport(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;ZLjava/lang/String;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .locals 17
    .param p0, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p1, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p2, "whichPackages"    # [Ljava/lang/String;
    .param p3, "updateSchedule"    # Z
    .param p4, "runningJob"    # Lcom/android/server/backup/FullBackupJob;
    .param p5, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p6, "backupObserver"    # Landroid/app/backup/IBackupObserver;
    .param p7, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p8, "userInitiated"    # Z
    .param p9, "caller"    # Ljava/lang/String;

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/UserBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v0

    .line 111
    .local v0, "transportManager":Lcom/android/server/backup/TransportManager;
    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v14

    .line 112
    .local v14, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    new-instance v15, Lcom/android/server/backup/fullbackup/-$$Lambda$PerformFullTransportBackupTask$ymLoQLrsEpmGaMrcudrdAgsU1Zk;

    .local v15, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    invoke-direct {v15, v0, v14}, Lcom/android/server/backup/fullbackup/-$$Lambda$PerformFullTransportBackupTask$ymLoQLrsEpmGaMrcudrdAgsU1Zk;-><init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;)V

    .line 115
    new-instance v16, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    move-object/from16 v2, v16

    move-object/from16 v3, p0

    move-object v4, v14

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object v12, v15

    move/from16 v13, p8

    invoke-direct/range {v2 .. v13}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Z)V

    return-object v16
.end method

.method private registerTask()V
    .locals 6

    .line 255
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getCurrentOpLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 256
    :try_start_0
    const-string v1, "PFTBT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backupmanager pftbt token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getCurrentOperations()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    new-instance v3, Lcom/android/server/backup/internal/Operation;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v3, v4, p0, v5}, Lcom/android/server/backup/internal/Operation;-><init>(ILcom/android/server/backup/BackupRestoreTask;I)V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 260
    monitor-exit v0

    .line 261
    return-void

    .line 260
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V
    .locals 5
    .param p1, "pipes"    # [Landroid/os/ParcelFileDescriptor;

    .line 662
    if-eqz p1, :cond_1

    .line 663
    const/4 v0, 0x0

    aget-object v1, p1, v0

    const-string v2, "Unable to close pipe!"

    const-string v3, "PFTBT"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 664
    aget-object v1, p1, v0

    .line 665
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    aput-object v4, p1, v0

    .line 667
    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    goto :goto_0

    .line 668
    :catch_0
    move-exception v0

    .line 669
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    const/4 v0, 0x1

    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    .line 673
    aget-object v1, p1, v0

    .line 674
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    aput-object v4, p1, v0

    .line 676
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 679
    goto :goto_1

    .line 677
    :catch_1
    move-exception v0

    .line 678
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    :goto_1
    return-void
.end method

.method public execute()V
    .locals 0

    .line 270
    return-void
.end method

.method public handleCancel(Z)V
    .locals 5
    .param p1, "cancelAll"    # Z

    .line 274
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    if-nez p1, :cond_0

    .line 281
    :try_start_0
    const-string v1, "PFTBT"

    const-string v2, "Expected cancelAll to be true."

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v1, :cond_1

    .line 285
    const-string v1, "PFTBT"

    const-string v2, "Ignoring duplicate cancel call."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    monitor-exit v0

    return-void

    .line 289
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    .line 290
    iget-boolean v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z

    if-eqz v1, :cond_2

    .line 291
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/backup/UserBackupManagerService;->handleCancel(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v2, "PFTBT.handleCancel()"

    .line 295
    invoke-virtual {v1, v2}, Lcom/android/server/backup/transport/TransportClient;->getConnectedTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v1

    .line 296
    .local v1, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->cancelFullBackup()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    .end local v1    # "transport":Lcom/android/internal/backup/IBackupTransport;
    goto :goto_0

    .line 297
    :catch_0
    move-exception v1

    .line 298
    .local v1, "e":Landroid/util/AndroidException;
    :try_start_2
    const-string v2, "PFTBT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling cancelFullBackup() on transport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .end local v1    # "e":Landroid/util/AndroidException;
    :cond_2
    :goto_0
    monitor-exit v0

    .line 303
    return-void

    .line 302
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public operationComplete(J)V
    .locals 0
    .param p1, "result"    # J

    .line 308
    return-void
.end method

.method public run()V
    .locals 35

    .line 314
    move-object/from16 v10, p0

    const/4 v1, 0x0

    .line 317
    .local v1, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    const/4 v2, 0x0

    .line 319
    .local v2, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    const-wide/16 v3, 0x0

    .line 320
    .local v3, "backoff":J
    const/4 v11, 0x0

    .line 323
    .local v11, "backupRunStatus":I
    const/4 v13, 0x0

    :try_start_0
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_24

    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->isSetupComplete()Z

    move-result v5

    if-nez v5, :cond_0

    move/from16 v27, v11

    goto/16 :goto_19

    .line 346
    :cond_0
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v6, "PFTBT.run()"

    invoke-virtual {v5, v6}, Lcom/android/server/backup/transport/TransportClient;->connect(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_20

    move-object v15, v5

    .line 347
    .local v15, "transport":Lcom/android/internal/backup/IBackupTransport;
    const/4 v9, 0x1

    if-nez v15, :cond_4

    .line 348
    :try_start_1
    const-string v5, "PFTBT"

    const-string v6, "Transport not present; full data backup not performed"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/16 v11, -0x3e8

    .line 350
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0xf

    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v5, v6, v7, v9, v13}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 624
    iget-boolean v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v5, :cond_1

    .line 625
    const/16 v11, -0x7d3

    move v5, v11

    goto :goto_0

    .line 624
    :cond_1
    move v5, v11

    .line 629
    .end local v11    # "backupRunStatus":I
    .local v5, "backupRunStatus":I
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Full backup completed with status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PFTBT"

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v6, v5}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 633
    invoke-virtual {v10, v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 634
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 636
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 638
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v6, :cond_2

    .line 639
    iget v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v6, v7}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 642
    :cond_2
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 643
    :try_start_2
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v7, v13}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 644
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 646
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v7, "PFTBT.run()"

    invoke-interface {v6, v7}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 648
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 652
    iget-boolean v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v6, :cond_3

    .line 653
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6, v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 656
    :cond_3
    const-string v6, "PFTBT"

    const-string v7, "Full data backup pass finished."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 354
    return-void

    .line 644
    :catchall_0
    move-exception v0

    move-object v7, v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 624
    .end local v5    # "backupRunStatus":I
    .end local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v11    # "backupRunStatus":I
    :catchall_1
    move-exception v0

    move-object v8, v1

    move-object v5, v2

    move-wide v12, v3

    move/from16 v27, v11

    move-object v1, v0

    goto/16 :goto_1e

    .line 611
    :catch_0
    move-exception v0

    move-object v8, v1

    move/from16 v27, v11

    move-object v1, v0

    goto/16 :goto_1b

    .line 358
    .restart local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_4
    :try_start_4
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v8, v5

    .line 359
    .local v8, "N":I
    const/16 v5, 0x2000

    new-array v5, v5, [B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_20

    .line 360
    .local v5, "buffer":[B
    const/4 v6, 0x0

    move-wide/from16 v33, v3

    move v4, v6

    move-wide/from16 v6, v33

    .end local v3    # "backoff":J
    .local v4, "i":I
    .local v6, "backoff":J
    :goto_1
    if-ge v4, v8, :cond_20

    .line 361
    :try_start_5
    iput-object v13, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    .line 362
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 363
    .local v3, "currentPackage":Landroid/content/pm/PackageInfo;
    iget-object v12, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 365
    .local v12, "packageName":Ljava/lang/String;
    const-string v13, "PFTBT"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Initiating full-data transport backup of "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " token: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/16 v9, 0xb18

    invoke-static {v9, v12}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 370
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_1b

    move-object v13, v9

    .line 373
    .end local v2    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .local v13, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_6
    iget-boolean v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserInitiated:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    move v14, v2

    .line 375
    .local v14, "flags":I
    const-wide v17, 0x7fffffffffffffffL

    .line 376
    .local v17, "quota":J
    iget-object v9, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_1a

    .line 377
    :try_start_7
    iget-boolean v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_17

    if-eqz v2, :cond_6

    .line 378
    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-wide/from16 v23, v6

    move/from16 v27, v11

    goto/16 :goto_15

    .line 398
    :catchall_2
    move-exception v0

    move/from16 v19, v4

    move-wide/from16 v23, v6

    move/from16 v25, v8

    move-object/from16 v16, v9

    move/from16 v27, v11

    move/from16 v28, v14

    move-object v8, v1

    move-object v4, v3

    move-object v14, v5

    move-object v3, v12

    move-object v5, v13

    move-object v1, v0

    goto/16 :goto_14

    .line 380
    :cond_6
    move/from16 v19, v4

    const/4 v2, 0x0

    .end local v4    # "i":I
    .local v19, "i":I
    :try_start_9
    aget-object v4, v13, v2

    invoke-interface {v15, v3, v4, v14}, Lcom/android/internal/backup/IBackupTransport;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_16

    move/from16 v20, v2

    .line 383
    .local v20, "backupPackageStatus":I
    if-nez v20, :cond_7

    .line 384
    :try_start_a
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v15, v2, v4}, Lcom/android/internal/backup/IBackupTransport;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v21
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    move-wide/from16 v23, v6

    .end local v6    # "backoff":J
    .local v23, "backoff":J
    move-wide/from16 v6, v21

    .line 387
    .end local v17    # "quota":J
    .local v6, "quota":J
    :try_start_b
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-object/from16 v17, v2

    .line 388
    .end local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .local v17, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_c
    new-instance v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    const/16 v16, 0x1

    aget-object v18, v17, v16

    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    iget v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    .line 391
    invoke-interface {v15}, Lcom/android/internal/backup/IBackupTransport;->getTransportFlags()I

    move-result v21
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move/from16 v22, v1

    move-object v1, v4

    move-object/from16 v25, v2

    move-object/from16 v2, p0

    move-object/from16 v26, v3

    .end local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .local v26, "currentPackage":Landroid/content/pm/PackageInfo;
    move-object/from16 v3, v18

    move/from16 v27, v11

    move-object v11, v4

    .end local v11    # "backupRunStatus":I
    .local v27, "backupRunStatus":I
    move-object/from16 v4, v26

    move/from16 v28, v14

    move-object v14, v5

    .end local v5    # "buffer":[B
    .local v14, "buffer":[B
    .local v28, "flags":I
    move-object/from16 v5, v25

    move/from16 v25, v8

    .end local v8    # "N":I
    .local v25, "N":I
    move/from16 v8, v22

    move-object/from16 v22, v12

    move/from16 v12, v16

    move-object/from16 v16, v9

    .end local v12    # "packageName":Ljava/lang/String;
    .local v22, "packageName":Ljava/lang/String;
    move/from16 v9, v21

    :try_start_d
    invoke-direct/range {v1 .. v9}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;-><init>(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/transport/TransportClient;JII)V

    iput-object v11, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    .line 393
    aget-object v1, v17, v12

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 394
    const/4 v1, 0x0

    aput-object v1, v17, v12

    .line 396
    iput-boolean v12, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-object/from16 v1, v17

    goto/16 :goto_3

    .line 398
    .end local v20    # "backupPackageStatus":I
    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object v5, v13

    move-object/from16 v8, v17

    move-object/from16 v3, v22

    move-object/from16 v4, v26

    move-wide/from16 v17, v6

    goto/16 :goto_14

    .end local v22    # "packageName":Ljava/lang/String;
    .end local v25    # "N":I
    .end local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v27    # "backupRunStatus":I
    .end local v28    # "flags":I
    .restart local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v5    # "buffer":[B
    .restart local v8    # "N":I
    .restart local v11    # "backupRunStatus":I
    .restart local v12    # "packageName":Ljava/lang/String;
    .local v14, "flags":I
    :catchall_4
    move-exception v0

    move/from16 v25, v8

    move-object/from16 v16, v9

    move/from16 v27, v11

    move/from16 v28, v14

    move-object v14, v5

    move-object v1, v0

    move-object v4, v3

    move-object v3, v12

    move-object v5, v13

    move-object/from16 v8, v17

    move-wide/from16 v17, v6

    .end local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v5    # "buffer":[B
    .end local v8    # "N":I
    .end local v11    # "backupRunStatus":I
    .end local v12    # "packageName":Ljava/lang/String;
    .local v14, "buffer":[B
    .restart local v22    # "packageName":Ljava/lang/String;
    .restart local v25    # "N":I
    .restart local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v27    # "backupRunStatus":I
    .restart local v28    # "flags":I
    goto/16 :goto_14

    .end local v17    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v22    # "packageName":Ljava/lang/String;
    .end local v25    # "N":I
    .end local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v27    # "backupRunStatus":I
    .end local v28    # "flags":I
    .restart local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v5    # "buffer":[B
    .restart local v8    # "N":I
    .restart local v11    # "backupRunStatus":I
    .restart local v12    # "packageName":Ljava/lang/String;
    .local v14, "flags":I
    :catchall_5
    move-exception v0

    move/from16 v25, v8

    move-object/from16 v16, v9

    move/from16 v27, v11

    move/from16 v28, v14

    move-object v14, v5

    move-object v8, v1

    move-object v4, v3

    move-wide/from16 v17, v6

    move-object v3, v12

    move-object v5, v13

    move-object v1, v0

    .end local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v5    # "buffer":[B
    .end local v8    # "N":I
    .end local v11    # "backupRunStatus":I
    .end local v12    # "packageName":Ljava/lang/String;
    .local v14, "buffer":[B
    .restart local v22    # "packageName":Ljava/lang/String;
    .restart local v25    # "N":I
    .restart local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v27    # "backupRunStatus":I
    .restart local v28    # "flags":I
    goto/16 :goto_14

    .end local v22    # "packageName":Ljava/lang/String;
    .end local v23    # "backoff":J
    .end local v25    # "N":I
    .end local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v27    # "backupRunStatus":I
    .end local v28    # "flags":I
    .restart local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v5    # "buffer":[B
    .local v6, "backoff":J
    .restart local v8    # "N":I
    .restart local v11    # "backupRunStatus":I
    .restart local v12    # "packageName":Ljava/lang/String;
    .local v14, "flags":I
    .local v17, "quota":J
    :catchall_6
    move-exception v0

    move-wide/from16 v23, v6

    move/from16 v25, v8

    move-object/from16 v16, v9

    move/from16 v27, v11

    move/from16 v28, v14

    move-object v14, v5

    move-object v8, v1

    move-object v4, v3

    move-object v3, v12

    move-object v5, v13

    move-object v1, v0

    .end local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v5    # "buffer":[B
    .end local v6    # "backoff":J
    .end local v8    # "N":I
    .end local v11    # "backupRunStatus":I
    .end local v12    # "packageName":Ljava/lang/String;
    .local v14, "buffer":[B
    .restart local v22    # "packageName":Ljava/lang/String;
    .restart local v23    # "backoff":J
    .restart local v25    # "N":I
    .restart local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v27    # "backupRunStatus":I
    .restart local v28    # "flags":I
    goto/16 :goto_14

    .line 383
    .end local v22    # "packageName":Ljava/lang/String;
    .end local v23    # "backoff":J
    .end local v25    # "N":I
    .end local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v27    # "backupRunStatus":I
    .end local v28    # "flags":I
    .restart local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v5    # "buffer":[B
    .restart local v6    # "backoff":J
    .restart local v8    # "N":I
    .restart local v11    # "backupRunStatus":I
    .restart local v12    # "packageName":Ljava/lang/String;
    .local v14, "flags":I
    .restart local v20    # "backupPackageStatus":I
    :cond_7
    move-object/from16 v26, v3

    move-wide/from16 v23, v6

    move/from16 v25, v8

    move-object/from16 v16, v9

    move/from16 v27, v11

    move-object/from16 v22, v12

    move/from16 v28, v14

    const/4 v12, 0x1

    move-object v14, v5

    .end local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v5    # "buffer":[B
    .end local v6    # "backoff":J
    .end local v8    # "N":I
    .end local v11    # "backupRunStatus":I
    .end local v12    # "packageName":Ljava/lang/String;
    .local v14, "buffer":[B
    .restart local v22    # "packageName":Ljava/lang/String;
    .restart local v23    # "backoff":J
    .restart local v25    # "N":I
    .restart local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v27    # "backupRunStatus":I
    .restart local v28    # "flags":I
    move-wide/from16 v6, v17

    .line 398
    .end local v17    # "quota":J
    .local v6, "quota":J
    :goto_3
    :try_start_e
    monitor-exit v16
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_15

    .line 399
    if-nez v20, :cond_14

    .line 403
    const/4 v3, 0x0

    :try_start_f
    aget-object v4, v13, v3

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 404
    const/4 v4, 0x0

    aput-object v4, v13, v3

    .line 408
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    const-string/jumbo v5, "package-backup-bridge"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 413
    new-instance v3, Ljava/io/FileInputStream;

    const/4 v4, 0x0

    aget-object v5, v1, v4

    .line 414
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 415
    .local v3, "in":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    aget-object v5, v13, v12

    .line 416
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 417
    .local v4, "out":Ljava/io/FileOutputStream;
    const-wide/16 v8, 0x0

    .line 418
    .local v8, "totalRead":J
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    invoke-virtual {v5}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->getPreflightResultBlocking()J

    move-result-wide v17
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    move-wide/from16 v29, v17

    .line 420
    .local v29, "preflightResult":J
    const-wide/16 v17, 0x0

    move-object v5, v13

    move-wide/from16 v12, v29

    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v29    # "preflightResult":J
    .local v5, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .local v12, "preflightResult":J
    cmp-long v16, v12, v17

    if-gez v16, :cond_8

    .line 426
    :try_start_10
    iget-object v11, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-wide/from16 v29, v8

    .end local v8    # "totalRead":J
    .local v29, "totalRead":J
    const-string v8, "android.app.backup.extra.LOG_PREFLIGHT_ERROR"

    .line 430
    const/4 v9, 0x0

    invoke-static {v9, v8, v12, v13}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v8
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 426
    move-object/from16 v31, v1

    const/4 v1, 0x3

    const/16 v9, 0x10

    .end local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .local v31, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_11
    invoke-static {v11, v9, v2, v1, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v2

    iput-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 433
    long-to-int v1, v12

    move-object/from16 v32, v3

    move-object/from16 v3, v22

    move-wide/from16 v8, v29

    move-object/from16 v22, v4

    move-wide/from16 v29, v12

    .end local v20    # "backupPackageStatus":I
    .local v1, "backupPackageStatus":I
    goto/16 :goto_b

    .line 624
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "quota":J
    .end local v12    # "preflightResult":J
    .end local v14    # "buffer":[B
    .end local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v19    # "i":I
    .end local v22    # "packageName":Ljava/lang/String;
    .end local v25    # "N":I
    .end local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v28    # "flags":I
    .end local v29    # "totalRead":J
    .end local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .local v1, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    :catchall_7
    move-exception v0

    move-object/from16 v31, v1

    move-object v1, v0

    move-wide/from16 v12, v23

    move-object/from16 v8, v31

    .end local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_1e

    .line 611
    .end local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v0

    move-object/from16 v31, v1

    move-object v1, v0

    move-object v2, v5

    move-wide/from16 v3, v23

    move-object/from16 v8, v31

    .end local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_1b

    .line 435
    .end local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "quota":J
    .restart local v8    # "totalRead":J
    .restart local v12    # "preflightResult":J
    .restart local v14    # "buffer":[B
    .restart local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v19    # "i":I
    .restart local v20    # "backupPackageStatus":I
    .restart local v22    # "packageName":Ljava/lang/String;
    .restart local v25    # "N":I
    .restart local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v28    # "flags":I
    :cond_8
    move-object/from16 v31, v1

    move-wide/from16 v29, v8

    .end local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v8    # "totalRead":J
    .restart local v29    # "totalRead":J
    .restart local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    const/4 v1, 0x0

    move v2, v1

    .line 437
    .local v2, "nRead":I
    :goto_4
    invoke-virtual {v3, v14}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    move v2, v8

    .line 441
    if-lez v2, :cond_b

    .line 442
    invoke-virtual {v4, v14, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 443
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_d

    .line 444
    :try_start_12
    iget-boolean v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    if-nez v8, :cond_9

    .line 445
    :try_start_13
    invoke-interface {v15, v2}, Lcom/android/internal/backup/IBackupTransport;->sendBackupData(I)I

    move-result v8
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    move/from16 v20, v8

    .end local v20    # "backupPackageStatus":I
    .local v8, "backupPackageStatus":I
    goto :goto_5

    .line 447
    .end local v8    # "backupPackageStatus":I
    .restart local v20    # "backupPackageStatus":I
    :catchall_8
    move-exception v0

    move-object v8, v0

    move-object/from16 v32, v3

    move-object/from16 v3, v22

    goto :goto_7

    :cond_9
    :goto_5
    :try_start_14
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    .line 448
    int-to-long v8, v2

    add-long v8, v29, v8

    .line 449
    .end local v29    # "totalRead":J
    .local v8, "totalRead":J
    :try_start_15
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    if-eqz v1, :cond_a

    cmp-long v1, v12, v17

    if-lez v1, :cond_a

    .line 450
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    new-instance v11, Landroid/app/backup/BackupProgress;

    invoke-direct {v11, v12, v13, v8, v9}, Landroid/app/backup/BackupProgress;-><init>(JJ)V

    .line 451
    move-object/from16 v32, v3

    move-object/from16 v3, v22

    .end local v22    # "packageName":Ljava/lang/String;
    .local v3, "packageName":Ljava/lang/String;
    .local v32, "in":Ljava/io/FileInputStream;
    invoke-static {v1, v3, v11}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnUpdate(Landroid/app/backup/IBackupObserver;Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    goto :goto_6

    .line 449
    .end local v32    # "in":Ljava/io/FileInputStream;
    .local v3, "in":Ljava/io/FileInputStream;
    .restart local v22    # "packageName":Ljava/lang/String;
    :cond_a
    move-object/from16 v32, v3

    move-object/from16 v3, v22

    .line 455
    .end local v22    # "packageName":Ljava/lang/String;
    .local v3, "packageName":Ljava/lang/String;
    .restart local v32    # "in":Ljava/io/FileInputStream;
    :goto_6
    move/from16 v1, v20

    goto :goto_8

    .line 447
    .end local v8    # "totalRead":J
    .end local v32    # "in":Ljava/io/FileInputStream;
    .local v3, "in":Ljava/io/FileInputStream;
    .restart local v22    # "packageName":Ljava/lang/String;
    .restart local v29    # "totalRead":J
    :catchall_9
    move-exception v0

    move-object/from16 v32, v3

    move-object/from16 v3, v22

    move-object v8, v0

    .end local v22    # "packageName":Ljava/lang/String;
    .local v3, "packageName":Ljava/lang/String;
    .restart local v32    # "in":Ljava/io/FileInputStream;
    :goto_7
    :try_start_16
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    .end local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v23    # "backoff":J
    .end local v27    # "backupRunStatus":I
    .end local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :try_start_17
    throw v8

    .restart local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v23    # "backoff":J
    .restart local v27    # "backupRunStatus":I
    .restart local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :catchall_a
    move-exception v0

    move-object v8, v0

    goto :goto_7

    .line 441
    .end local v32    # "in":Ljava/io/FileInputStream;
    .local v3, "in":Ljava/io/FileInputStream;
    .restart local v22    # "packageName":Ljava/lang/String;
    :cond_b
    move-object/from16 v32, v3

    move-object/from16 v3, v22

    .end local v22    # "packageName":Ljava/lang/String;
    .local v3, "packageName":Ljava/lang/String;
    .restart local v32    # "in":Ljava/io/FileInputStream;
    move/from16 v1, v20

    move-wide/from16 v8, v29

    .line 455
    .end local v20    # "backupPackageStatus":I
    .end local v29    # "totalRead":J
    .local v1, "backupPackageStatus":I
    .restart local v8    # "totalRead":J
    :goto_8
    if-lez v2, :cond_d

    if-eqz v1, :cond_c

    goto :goto_9

    :cond_c
    move/from16 v20, v1

    move-object/from16 v22, v3

    move-wide/from16 v29, v8

    move-object/from16 v3, v32

    const/4 v1, 0x0

    goto :goto_4

    .line 458
    :cond_d
    :goto_9
    const/16 v11, -0x3ed

    if-ne v1, v11, :cond_e

    .line 459
    const-string v11, "PFTBT"

    move/from16 v17, v1

    .end local v1    # "backupPackageStatus":I
    .local v17, "backupPackageStatus":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v2

    .end local v2    # "nRead":I
    .local v18, "nRead":I
    const-string v2, "Package hit quota limit in-flight "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v2, 0x12

    iget-object v11, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v4

    move-wide/from16 v29, v12

    const/4 v4, 0x1

    const/4 v12, 0x0

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v12    # "preflightResult":J
    .local v22, "out":Ljava/io/FileOutputStream;
    .local v29, "preflightResult":J
    invoke-static {v1, v2, v11, v4, v12}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    iput-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 466
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    invoke-virtual {v1, v8, v9, v6, v7}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->sendQuotaExceeded(JJ)V

    goto :goto_a

    .line 458
    .end local v17    # "backupPackageStatus":I
    .end local v18    # "nRead":I
    .end local v22    # "out":Ljava/io/FileOutputStream;
    .end local v29    # "preflightResult":J
    .restart local v1    # "backupPackageStatus":I
    .restart local v2    # "nRead":I
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "preflightResult":J
    :cond_e
    move/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v22, v4

    move-wide/from16 v29, v12

    .line 470
    .end local v1    # "backupPackageStatus":I
    .end local v2    # "nRead":I
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v12    # "preflightResult":J
    .restart local v17    # "backupPackageStatus":I
    .restart local v22    # "out":Ljava/io/FileOutputStream;
    .restart local v29    # "preflightResult":J
    :goto_a
    move/from16 v1, v17

    .end local v17    # "backupPackageStatus":I
    .restart local v1    # "backupPackageStatus":I
    :goto_b
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    invoke-virtual {v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->getBackupResultBlocking()I

    move-result v2

    .line 472
    .local v2, "backupRunnerResult":I
    iget-object v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_2
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    .line 473
    const/4 v12, 0x0

    :try_start_18
    iput-boolean v12, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z

    .line 475
    iget-boolean v12, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-nez v12, :cond_11

    .line 476
    if-nez v2, :cond_10

    .line 481
    invoke-interface {v15}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v12

    .line 482
    .local v12, "finishResult":I
    if-nez v1, :cond_f

    .line 483
    move v1, v12

    .line 485
    .end local v12    # "finishResult":I
    :cond_f
    goto :goto_c

    .line 486
    :cond_10
    invoke-interface {v15}, Lcom/android/internal/backup/IBackupTransport;->cancelFullBackup()V

    .line 489
    :cond_11
    :goto_c
    monitor-exit v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    .line 500
    if-nez v1, :cond_12

    .line 502
    if-eqz v2, :cond_12

    .line 505
    move v1, v2

    .line 518
    :cond_12
    if-eqz v1, :cond_13

    .line 519
    :try_start_19
    const-string v4, "PFTBT"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " backing up "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_13
    invoke-interface {v15}, Lcom/android/internal/backup/IBackupTransport;->requestFullBackupTime()J

    move-result-wide v12
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_2
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    .line 527
    .end local v23    # "backoff":J
    .local v12, "backoff":J
    :try_start_1a
    const-string v4, "PFTBT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v1

    .end local v1    # "backupPackageStatus":I
    .restart local v17    # "backupPackageStatus":I
    const-string v1, "Transport suggested backoff="

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_4
    .catchall {:try_start_1a .. :try_end_1a} :catchall_f

    move/from16 v1, v17

    goto :goto_e

    .line 489
    .end local v12    # "backoff":J
    .end local v17    # "backupPackageStatus":I
    .restart local v1    # "backupPackageStatus":I
    .restart local v23    # "backoff":J
    :catchall_b
    move-exception v0

    move v11, v1

    move-object v1, v0

    .end local v1    # "backupPackageStatus":I
    .local v11, "backupPackageStatus":I
    :goto_d
    :try_start_1b
    monitor-exit v4
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c

    .end local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v23    # "backoff":J
    .end local v27    # "backupRunStatus":I
    .end local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :try_start_1c
    throw v1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_2
    .catchall {:try_start_1c .. :try_end_1c} :catchall_d

    .restart local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v23    # "backoff":J
    .restart local v27    # "backupRunStatus":I
    .restart local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :catchall_c
    move-exception v0

    move-object v1, v0

    goto :goto_d

    .line 624
    .end local v2    # "backupRunnerResult":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v6    # "quota":J
    .end local v8    # "totalRead":J
    .end local v11    # "backupPackageStatus":I
    .end local v14    # "buffer":[B
    .end local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v19    # "i":I
    .end local v22    # "out":Ljava/io/FileOutputStream;
    .end local v25    # "N":I
    .end local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v28    # "flags":I
    .end local v29    # "preflightResult":J
    .end local v32    # "in":Ljava/io/FileInputStream;
    :catchall_d
    move-exception v0

    move-object v1, v0

    move-wide/from16 v12, v23

    move-object/from16 v8, v31

    goto/16 :goto_1e

    .line 611
    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v2, v5

    move-wide/from16 v3, v23

    move-object/from16 v8, v31

    goto/16 :goto_1b

    .line 624
    .end local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .local v1, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :catchall_e
    move-exception v0

    move-object/from16 v31, v1

    move-object v5, v13

    move-object v1, v0

    move-wide/from16 v12, v23

    move-object/from16 v8, v31

    .end local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_1e

    .line 611
    .end local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :catch_3
    move-exception v0

    move-object/from16 v31, v1

    move-object v5, v13

    move-object v1, v0

    move-object v2, v5

    move-wide/from16 v3, v23

    move-object/from16 v8, v31

    .end local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_1b

    .line 399
    .end local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "quota":J
    .restart local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v14    # "buffer":[B
    .restart local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v19    # "i":I
    .restart local v20    # "backupPackageStatus":I
    .local v22, "packageName":Ljava/lang/String;
    .restart local v25    # "N":I
    .restart local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v28    # "flags":I
    :cond_14
    move-object/from16 v31, v1

    move-object v5, v13

    move-object/from16 v3, v22

    .end local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v22    # "packageName":Ljava/lang/String;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    move/from16 v1, v20

    move-wide/from16 v12, v23

    .line 534
    .end local v20    # "backupPackageStatus":I
    .end local v23    # "backoff":J
    .local v1, "backupPackageStatus":I
    .restart local v12    # "backoff":J
    :goto_e
    :try_start_1d
    iget-boolean v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_8
    .catchall {:try_start_1d .. :try_end_1d} :catchall_14

    if-eqz v2, :cond_15

    .line 535
    :try_start_1e
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2, v3, v8, v9}, Lcom/android/server/backup/UserBackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    goto :goto_f

    .line 624
    .end local v1    # "backupPackageStatus":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v6    # "quota":J
    .end local v14    # "buffer":[B
    .end local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v19    # "i":I
    .end local v25    # "N":I
    .end local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v28    # "flags":I
    :catchall_f
    move-exception v0

    move-object v1, v0

    move-object/from16 v8, v31

    goto/16 :goto_1e

    .line 611
    :catch_4
    move-exception v0

    move-object v1, v0

    move-object v2, v5

    move-wide v3, v12

    move-object/from16 v8, v31

    goto/16 :goto_1b

    .line 538
    .restart local v1    # "backupPackageStatus":I
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v6    # "quota":J
    .restart local v14    # "buffer":[B
    .restart local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v19    # "i":I
    .restart local v25    # "N":I
    .restart local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v28    # "flags":I
    :cond_15
    :goto_f
    const/16 v2, -0x3ea

    if-ne v1, v2, :cond_17

    .line 539
    iget-object v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 540
    invoke-static {v4, v3, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 543
    const-string v2, "PFTBT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Transport rejected backup of "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", skipping"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const/16 v2, 0xb19

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v4, v8

    const-string/jumbo v8, "transport rejected"

    const/4 v9, 0x1

    aput-object v8, v4, v9

    invoke-static {v2, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 551
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    if-eqz v2, :cond_16

    .line 552
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    move-object/from16 v4, v26

    .end local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .local v4, "currentPackage":Landroid/content/pm/PackageInfo;
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v8}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    move/from16 v16, v1

    move-object/from16 v8, v31

    goto/16 :goto_12

    .line 551
    .end local v4    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    :cond_16
    move-object/from16 v4, v26

    .end local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v4    # "currentPackage":Landroid/content/pm/PackageInfo;
    move/from16 v16, v1

    move-object/from16 v8, v31

    goto/16 :goto_12

    .line 555
    .end local v4    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    :cond_17
    move-object/from16 v4, v26

    const/4 v9, 0x1

    .end local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v4    # "currentPackage":Landroid/content/pm/PackageInfo;
    const/16 v2, -0x3ed

    if-ne v1, v2, :cond_18

    .line 556
    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 557
    invoke-static {v8, v3, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 560
    const-string v2, "PFTBT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Transport quota exceeded for package: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/16 v2, 0xb1d

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 564
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v8}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    move/from16 v16, v1

    move-object/from16 v8, v31

    goto/16 :goto_12

    .line 566
    :cond_18
    const/16 v2, -0x3eb

    if-ne v1, v2, :cond_19

    .line 567
    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 568
    invoke-static {v8, v3, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 570
    const-string v2, "PFTBT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Application failure for package: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/16 v2, 0xb07

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 572
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v8}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    move/from16 v16, v1

    move-object/from16 v8, v31

    goto/16 :goto_12

    .line 574
    :cond_19
    const/16 v2, -0x7d3

    if-ne v1, v2, :cond_1a

    .line 575
    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 576
    invoke-static {v8, v3, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 578
    const-string v2, "PFTBT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Backup cancelled. package="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", cancelAll="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/16 v2, 0xb1e

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 581
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v8}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_4
    .catchall {:try_start_1e .. :try_end_1e} :catchall_f

    move/from16 v16, v1

    move-object/from16 v8, v31

    goto/16 :goto_12

    .line 583
    :cond_1a
    if-eqz v1, :cond_1e

    .line 584
    :try_start_1f
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/16 v8, -0x3e8

    .line 585
    invoke-static {v2, v3, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 587
    const-string v2, "PFTBT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Transport failed; aborting backup: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const/16 v2, 0xb1a

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_8
    .catchall {:try_start_1f .. :try_end_1f} :catchall_14

    .line 590
    const/16 v11, -0x3e8

    .line 591
    .end local v27    # "backupRunStatus":I
    .local v11, "backupRunStatus":I
    :try_start_20
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v8}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_5
    .catchall {:try_start_20 .. :try_end_20} :catchall_12

    .line 624
    iget-boolean v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v2, :cond_1b

    .line 625
    const/16 v11, -0x7d3

    move v2, v11

    goto :goto_10

    .line 624
    :cond_1b
    move v2, v11

    .line 629
    .end local v11    # "backupRunStatus":I
    .local v2, "backupRunStatus":I
    :goto_10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Full backup completed with status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "PFTBT"

    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v8, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 633
    invoke-virtual {v10, v5}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 634
    move-object/from16 v8, v31

    .end local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .local v8, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v10, v8}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 636
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 638
    iget-object v9, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v9, :cond_1c

    .line 639
    iget v11, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v9, v11}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 642
    :cond_1c
    iget-object v9, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v9}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 643
    :try_start_21
    iget-object v11, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_11

    move/from16 v16, v1

    const/4 v1, 0x0

    .end local v1    # "backupPackageStatus":I
    .local v16, "backupPackageStatus":I
    :try_start_22
    invoke-virtual {v11, v1}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 644
    monitor-exit v9
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_10

    .line 646
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v9, "PFTBT.run()"

    invoke-interface {v1, v9}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 648
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 652
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v1, :cond_1d

    .line 653
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1, v12, v13}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 656
    :cond_1d
    const-string v1, "PFTBT"

    const-string v9, "Full data backup pass finished."

    invoke-static {v1, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 592
    return-void

    .line 644
    :catchall_10
    move-exception v0

    move-object v1, v0

    goto :goto_11

    .end local v16    # "backupPackageStatus":I
    .restart local v1    # "backupPackageStatus":I
    :catchall_11
    move-exception v0

    move/from16 v16, v1

    move-object v1, v0

    .end local v1    # "backupPackageStatus":I
    .restart local v16    # "backupPackageStatus":I
    :goto_11
    :try_start_23
    monitor-exit v9
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_10

    throw v1

    .line 624
    .end local v2    # "backupRunStatus":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v6    # "quota":J
    .end local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v14    # "buffer":[B
    .end local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v16    # "backupPackageStatus":I
    .end local v19    # "i":I
    .end local v25    # "N":I
    .end local v28    # "flags":I
    .restart local v11    # "backupRunStatus":I
    .restart local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    :catchall_12
    move-exception v0

    move-object/from16 v8, v31

    move-object v1, v0

    move/from16 v27, v11

    .end local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_1e

    .line 611
    .end local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    :catch_5
    move-exception v0

    move-object/from16 v8, v31

    move-object v1, v0

    move-object v2, v5

    move/from16 v27, v11

    move-wide v3, v12

    .end local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_1b

    .line 595
    .end local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v11    # "backupRunStatus":I
    .restart local v1    # "backupPackageStatus":I
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v6    # "quota":J
    .restart local v14    # "buffer":[B
    .restart local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v19    # "i":I
    .restart local v25    # "N":I
    .restart local v27    # "backupRunStatus":I
    .restart local v28    # "flags":I
    .restart local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    :cond_1e
    move/from16 v16, v1

    move-object/from16 v8, v31

    .end local v1    # "backupPackageStatus":I
    .end local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v16    # "backupPackageStatus":I
    :try_start_24
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 596
    const/4 v2, 0x0

    invoke-static {v1, v3, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 598
    const/16 v1, 0xb1b

    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 599
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/backup/UserBackupManagerService;->logBackupComplete(Ljava/lang/String;)V

    .line 601
    :goto_12
    invoke-virtual {v10, v5}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 602
    invoke-virtual {v10, v8}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 603
    iget-object v1, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1f

    .line 604
    const-string v1, "PFTBT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unbinding agent in "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_7
    .catchall {:try_start_24 .. :try_end_24} :catchall_13

    .line 606
    :try_start_25
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_6
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_7
    .catchall {:try_start_25 .. :try_end_25} :catchall_13

    goto :goto_13

    .line 608
    :catch_6
    move-exception v0

    .line 360
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v6    # "quota":J
    .end local v16    # "backupPackageStatus":I
    .end local v28    # "flags":I
    :cond_1f
    :goto_13
    add-int/lit8 v4, v19, 0x1

    move-object v2, v5

    move-object v1, v8

    move-wide v6, v12

    move-object v5, v14

    move/from16 v8, v25

    move/from16 v11, v27

    const/4 v13, 0x0

    .end local v19    # "i":I
    .local v4, "i":I
    goto/16 :goto_1

    .line 624
    .end local v4    # "i":I
    .end local v14    # "buffer":[B
    .end local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v25    # "N":I
    :catchall_13
    move-exception v0

    move-object v1, v0

    goto/16 :goto_1e

    .line 611
    :catch_7
    move-exception v0

    move-object v1, v0

    move-object v2, v5

    move-wide v3, v12

    goto/16 :goto_1b

    .line 624
    .end local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    :catchall_14
    move-exception v0

    move-object/from16 v8, v31

    move-object v1, v0

    .end local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_1e

    .line 611
    .end local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    :catch_8
    move-exception v0

    move-object/from16 v8, v31

    move-object v1, v0

    move-object v2, v5

    move-wide v3, v12

    .end local v31    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_1b

    .line 398
    .end local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v12    # "backoff":J
    .local v1, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "quota":J
    .restart local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v14    # "buffer":[B
    .restart local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v19    # "i":I
    .restart local v22    # "packageName":Ljava/lang/String;
    .restart local v23    # "backoff":J
    .restart local v25    # "N":I
    .restart local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v28    # "flags":I
    :catchall_15
    move-exception v0

    move-object v8, v1

    move-object v5, v13

    move-object/from16 v3, v22

    move-object/from16 v4, v26

    move-object v1, v0

    move-wide/from16 v17, v6

    .end local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v22    # "packageName":Ljava/lang/String;
    .end local v26    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v3    # "packageName":Ljava/lang/String;
    .local v4, "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    goto :goto_14

    .end local v4    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v23    # "backoff":J
    .end local v25    # "N":I
    .end local v27    # "backupRunStatus":I
    .end local v28    # "flags":I
    .restart local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .local v3, "currentPackage":Landroid/content/pm/PackageInfo;
    .local v5, "buffer":[B
    .local v6, "backoff":J
    .local v8, "N":I
    .restart local v11    # "backupRunStatus":I
    .local v12, "packageName":Ljava/lang/String;
    .restart local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .local v14, "flags":I
    .local v17, "quota":J
    :catchall_16
    move-exception v0

    move-object v4, v3

    move-wide/from16 v23, v6

    move/from16 v25, v8

    move-object/from16 v16, v9

    move/from16 v27, v11

    move-object v3, v12

    move/from16 v28, v14

    move-object v14, v5

    move-object v5, v13

    move-object v8, v1

    move-object v1, v0

    .end local v6    # "backoff":J
    .end local v8    # "N":I
    .end local v11    # "backupRunStatus":I
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .local v3, "packageName":Ljava/lang/String;
    .restart local v4    # "currentPackage":Landroid/content/pm/PackageInfo;
    .local v5, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .local v14, "buffer":[B
    .restart local v23    # "backoff":J
    .restart local v25    # "N":I
    .restart local v27    # "backupRunStatus":I
    .restart local v28    # "flags":I
    goto :goto_14

    .end local v19    # "i":I
    .end local v23    # "backoff":J
    .end local v25    # "N":I
    .end local v27    # "backupRunStatus":I
    .end local v28    # "flags":I
    .local v3, "currentPackage":Landroid/content/pm/PackageInfo;
    .local v4, "i":I
    .local v5, "buffer":[B
    .restart local v6    # "backoff":J
    .restart local v8    # "N":I
    .restart local v11    # "backupRunStatus":I
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .local v14, "flags":I
    :catchall_17
    move-exception v0

    move/from16 v19, v4

    move-wide/from16 v23, v6

    move/from16 v25, v8

    move-object/from16 v16, v9

    move/from16 v27, v11

    move/from16 v28, v14

    move-object v4, v3

    move-object v14, v5

    move-object v3, v12

    move-object v5, v13

    move-object v8, v1

    move-object v1, v0

    .end local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v6    # "backoff":J
    .end local v11    # "backupRunStatus":I
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "currentPackage":Landroid/content/pm/PackageInfo;
    .local v5, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .local v8, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .local v14, "buffer":[B
    .restart local v19    # "i":I
    .restart local v23    # "backoff":J
    .restart local v25    # "N":I
    .restart local v27    # "backupRunStatus":I
    .restart local v28    # "flags":I
    :goto_14
    :try_start_26
    monitor-exit v16
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_19

    .end local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v23    # "backoff":J
    .end local v27    # "backupRunStatus":I
    .end local p0    # "this":Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :try_start_27
    throw v1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_9
    .catchall {:try_start_27 .. :try_end_27} :catchall_18

    .line 624
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v14    # "buffer":[B
    .end local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v17    # "quota":J
    .end local v19    # "i":I
    .end local v25    # "N":I
    .end local v28    # "flags":I
    .restart local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v23    # "backoff":J
    .restart local v27    # "backupRunStatus":I
    .restart local p0    # "this":Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :catchall_18
    move-exception v0

    move-object v1, v0

    move-wide/from16 v12, v23

    goto/16 :goto_1e

    .line 611
    :catch_9
    move-exception v0

    move-object v1, v0

    move-object v2, v5

    move-wide/from16 v3, v23

    goto/16 :goto_1b

    .line 398
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v14    # "buffer":[B
    .restart local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v17    # "quota":J
    .restart local v19    # "i":I
    .restart local v25    # "N":I
    .restart local v28    # "flags":I
    :catchall_19
    move-exception v0

    move-object v1, v0

    goto :goto_14

    .line 624
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v14    # "buffer":[B
    .end local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v17    # "quota":J
    .end local v19    # "i":I
    .end local v23    # "backoff":J
    .end local v25    # "N":I
    .end local v27    # "backupRunStatus":I
    .end local v28    # "flags":I
    .restart local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "backoff":J
    .restart local v11    # "backupRunStatus":I
    .restart local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :catchall_1a
    move-exception v0

    move-wide/from16 v23, v6

    move/from16 v27, v11

    move-object v5, v13

    move-object v8, v1

    move-wide/from16 v12, v23

    move-object v1, v0

    .end local v6    # "backoff":J
    .end local v11    # "backupRunStatus":I
    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v23    # "backoff":J
    .restart local v27    # "backupRunStatus":I
    goto/16 :goto_1e

    .line 611
    .end local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v23    # "backoff":J
    .end local v27    # "backupRunStatus":I
    .restart local v6    # "backoff":J
    .restart local v11    # "backupRunStatus":I
    .restart local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :catch_a
    move-exception v0

    move-wide/from16 v23, v6

    move/from16 v27, v11

    move-object v5, v13

    move-object v8, v1

    move-object v2, v5

    move-wide/from16 v3, v23

    move-object v1, v0

    .end local v6    # "backoff":J
    .end local v11    # "backupRunStatus":I
    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v23    # "backoff":J
    .restart local v27    # "backupRunStatus":I
    goto/16 :goto_1b

    .line 624
    .end local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v23    # "backoff":J
    .end local v27    # "backupRunStatus":I
    .local v2, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "backoff":J
    .restart local v11    # "backupRunStatus":I
    :catchall_1b
    move-exception v0

    move-wide/from16 v23, v6

    move/from16 v27, v11

    move-object v8, v1

    move-object v5, v2

    move-wide/from16 v12, v23

    move-object v1, v0

    .end local v6    # "backoff":J
    .end local v11    # "backupRunStatus":I
    .restart local v23    # "backoff":J
    .restart local v27    # "backupRunStatus":I
    goto/16 :goto_1e

    .line 611
    .end local v23    # "backoff":J
    .end local v27    # "backupRunStatus":I
    .restart local v6    # "backoff":J
    .restart local v11    # "backupRunStatus":I
    :catch_b
    move-exception v0

    move-wide/from16 v23, v6

    move/from16 v27, v11

    move-object v8, v1

    move-wide/from16 v3, v23

    move-object v1, v0

    .end local v6    # "backoff":J
    .end local v11    # "backupRunStatus":I
    .restart local v23    # "backoff":J
    .restart local v27    # "backupRunStatus":I
    goto/16 :goto_1b

    .line 360
    .end local v23    # "backoff":J
    .end local v27    # "backupRunStatus":I
    .local v4, "i":I
    .local v5, "buffer":[B
    .restart local v6    # "backoff":J
    .local v8, "N":I
    .restart local v11    # "backupRunStatus":I
    .restart local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_20
    move/from16 v19, v4

    move-object v14, v5

    move-wide/from16 v23, v6

    move/from16 v25, v8

    move/from16 v27, v11

    .end local v4    # "i":I
    .end local v5    # "buffer":[B
    .end local v6    # "backoff":J
    .end local v8    # "N":I
    .end local v11    # "backupRunStatus":I
    .restart local v14    # "buffer":[B
    .restart local v19    # "i":I
    .restart local v23    # "backoff":J
    .restart local v25    # "N":I
    .restart local v27    # "backupRunStatus":I
    move-object v13, v2

    .line 624
    .end local v2    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v14    # "buffer":[B
    .end local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v19    # "i":I
    .end local v25    # "N":I
    .restart local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :goto_15
    iget-boolean v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v2, :cond_21

    .line 625
    const/16 v11, -0x7d3

    .end local v27    # "backupRunStatus":I
    .restart local v11    # "backupRunStatus":I
    goto :goto_16

    .line 624
    .end local v11    # "backupRunStatus":I
    .restart local v27    # "backupRunStatus":I
    :cond_21
    move/from16 v11, v27

    .line 629
    .end local v27    # "backupRunStatus":I
    .restart local v11    # "backupRunStatus":I
    :goto_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Full backup completed with status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PFTBT"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v2, v11}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 633
    invoke-virtual {v10, v13}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 634
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 636
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 638
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v2, :cond_22

    .line 639
    iget v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 642
    :cond_22
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 643
    :try_start_28
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 644
    monitor-exit v5
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1c

    .line 646
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v3, "PFTBT.run()"

    invoke-interface {v2, v3}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 648
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 652
    iget-boolean v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v2, :cond_23

    .line 653
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    move-wide/from16 v6, v23

    .end local v23    # "backoff":J
    .restart local v6    # "backoff":J
    invoke-virtual {v2, v6, v7}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    goto :goto_17

    .line 652
    .end local v6    # "backoff":J
    .restart local v23    # "backoff":J
    :cond_23
    move-wide/from16 v6, v23

    .line 656
    .end local v23    # "backoff":J
    .restart local v6    # "backoff":J
    :goto_17
    const-string v2, "PFTBT"

    const-string v3, "Full data backup pass finished."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 658
    move-wide v3, v6

    move-object v2, v13

    goto/16 :goto_1d

    .line 644
    .end local v6    # "backoff":J
    .restart local v23    # "backoff":J
    :catchall_1c
    move-exception v0

    move-wide/from16 v6, v23

    move-object v2, v0

    .end local v23    # "backoff":J
    .restart local v6    # "backoff":J
    :goto_18
    :try_start_29
    monitor-exit v5
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1d

    throw v2

    :catchall_1d
    move-exception v0

    move-object v2, v0

    goto :goto_18

    .line 323
    .end local v6    # "backoff":J
    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .local v3, "backoff":J
    :cond_24
    move/from16 v27, v11

    .line 326
    .end local v11    # "backupRunStatus":I
    .restart local v27    # "backupRunStatus":I
    :goto_19
    :try_start_2a
    const-string v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "full backup requested but enabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 327
    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->isEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " setupComplete="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 328
    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->isSetupComplete()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "; ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 326
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->isSetupComplete()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 333
    const/16 v5, 0xd

    .local v5, "monitoringEvent":I
    goto :goto_1a

    .line 335
    .end local v5    # "monitoringEvent":I
    :cond_25
    const/16 v5, 0xe

    .line 337
    .restart local v5    # "monitoringEvent":I
    :goto_1a
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 338
    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static {v6, v5, v8, v7, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v6

    iput-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 341
    const/4 v6, 0x0

    iput-boolean v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_c
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1f

    .line 342
    const/16 v6, -0x7d1

    .line 624
    .end local v27    # "backupRunStatus":I
    .local v6, "backupRunStatus":I
    iget-boolean v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v7, :cond_26

    .line 625
    const/16 v6, -0x7d3

    .line 629
    :cond_26
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Full backup completed with status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PFTBT"

    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v7, v6}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 633
    invoke-virtual {v10, v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 634
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 636
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 638
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v7, :cond_27

    .line 639
    iget v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v7, v8}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 642
    :cond_27
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 643
    :try_start_2b
    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 644
    monitor-exit v7
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1e

    .line 646
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v8, "PFTBT.run()"

    invoke-interface {v7, v8}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 648
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 652
    iget-boolean v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v7, :cond_28

    .line 653
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v7, v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 656
    :cond_28
    const-string v7, "PFTBT"

    const-string v8, "Full data backup pass finished."

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 343
    return-void

    .line 644
    :catchall_1e
    move-exception v0

    move-object v8, v0

    :try_start_2c
    monitor-exit v7
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_1e

    throw v8

    .line 624
    .end local v5    # "monitoringEvent":I
    .end local v6    # "backupRunStatus":I
    .restart local v27    # "backupRunStatus":I
    :catchall_1f
    move-exception v0

    move-object v8, v1

    move-object v5, v2

    move-wide v12, v3

    move-object v1, v0

    goto/16 :goto_1e

    .line 611
    :catch_c
    move-exception v0

    move-object v8, v1

    move-object v1, v0

    goto :goto_1b

    .line 624
    .end local v27    # "backupRunStatus":I
    .restart local v11    # "backupRunStatus":I
    :catchall_20
    move-exception v0

    move/from16 v27, v11

    move-object v8, v1

    move-object v5, v2

    move-wide v12, v3

    move-object v1, v0

    .end local v11    # "backupRunStatus":I
    .restart local v27    # "backupRunStatus":I
    goto/16 :goto_1e

    .line 611
    .end local v27    # "backupRunStatus":I
    .restart local v11    # "backupRunStatus":I
    :catch_d
    move-exception v0

    move/from16 v27, v11

    move-object v8, v1

    move-object v1, v0

    .line 612
    .end local v11    # "backupRunStatus":I
    .local v1, "e":Ljava/lang/Exception;
    .local v8, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v27    # "backupRunStatus":I
    :goto_1b
    const/16 v11, -0x3e8

    .line 613
    .end local v27    # "backupRunStatus":I
    .restart local v11    # "backupRunStatus":I
    :try_start_2d
    const-string v5, "PFTBT"

    const-string v6, "Exception trying full transport backup"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0x13

    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const-string v9, "android.app.backup.extra.LOG_EXCEPTION_FULL_BACKUP"

    .line 620
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    .line 618
    const/4 v13, 0x0

    invoke-static {v13, v9, v12}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 614
    const/4 v12, 0x3

    invoke-static {v5, v6, v7, v12, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_22

    .line 624
    .end local v1    # "e":Ljava/lang/Exception;
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v1, :cond_29

    .line 625
    const/16 v1, -0x7d3

    .end local v11    # "backupRunStatus":I
    .local v1, "backupRunStatus":I
    goto :goto_1c

    .line 624
    .end local v1    # "backupRunStatus":I
    .restart local v11    # "backupRunStatus":I
    :cond_29
    move v1, v11

    .line 629
    .end local v11    # "backupRunStatus":I
    .restart local v1    # "backupRunStatus":I
    :goto_1c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Full backup completed with status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PFTBT"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v5, v1}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 633
    invoke-virtual {v10, v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 634
    invoke-virtual {v10, v8}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 636
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 638
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v5, :cond_2a

    .line 639
    iget v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v5, v6}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 642
    :cond_2a
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 643
    :try_start_2e
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 644
    monitor-exit v5
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_21

    .line 646
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v6, "PFTBT.run()"

    invoke-interface {v5, v6}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 648
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 652
    iget-boolean v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v5, :cond_2b

    .line 653
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v5, v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 656
    :cond_2b
    const-string v5, "PFTBT"

    const-string v6, "Full data backup pass finished."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 658
    move v11, v1

    move-object v1, v8

    .line 659
    .end local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .local v1, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v11    # "backupRunStatus":I
    :goto_1d
    return-void

    .line 644
    .end local v11    # "backupRunStatus":I
    .local v1, "backupRunStatus":I
    .restart local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    :catchall_21
    move-exception v0

    move-object v6, v0

    :try_start_2f
    monitor-exit v5
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_21

    throw v6

    .line 624
    .end local v1    # "backupRunStatus":I
    .restart local v11    # "backupRunStatus":I
    :catchall_22
    move-exception v0

    move-object v1, v0

    move-object v5, v2

    move-wide v12, v3

    move/from16 v27, v11

    .end local v2    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v3    # "backoff":J
    .end local v11    # "backupRunStatus":I
    .local v5, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .local v12, "backoff":J
    .restart local v27    # "backupRunStatus":I
    :goto_1e
    iget-boolean v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v2, :cond_2c

    .line 625
    const/16 v27, -0x7d3

    move/from16 v2, v27

    goto :goto_1f

    .line 624
    :cond_2c
    move/from16 v2, v27

    .line 629
    .end local v27    # "backupRunStatus":I
    .local v2, "backupRunStatus":I
    :goto_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Full backup completed with status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PFTBT"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v3, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 633
    invoke-virtual {v10, v5}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 634
    invoke-virtual {v10, v8}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 636
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 638
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v3, :cond_2d

    .line 639
    iget v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 642
    :cond_2d
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 643
    :try_start_30
    iget-object v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 644
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_23

    .line 646
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v4, "PFTBT.run()"

    invoke-interface {v3, v4}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 648
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 652
    iget-boolean v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v3, :cond_2e

    .line 653
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v3, v12, v13}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 656
    :cond_2e
    const-string v3, "PFTBT"

    const-string v4, "Full data backup pass finished."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v1

    .line 644
    :catchall_23
    move-exception v0

    move-object v1, v0

    :try_start_31
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_23

    throw v1
.end method

.method public unregisterTask()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-virtual {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->removeOperation(I)V

    .line 265
    return-void
.end method
