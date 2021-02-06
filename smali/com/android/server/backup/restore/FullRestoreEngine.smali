.class public Lcom/android/server/backup/restore/FullRestoreEngine;
.super Lcom/android/server/backup/restore/RestoreEngine;
.source "FullRestoreEngine.java"


# instance fields
.field private mAgent:Landroid/app/IBackupAgent;

.field private mAgentPackage:Ljava/lang/String;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field final mAllowApks:Z

.field private mAppVersion:J

.field private final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field final mBuffer:[B

.field private final mClearedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

.field final mEphemeralOpToken:I

.field private final mIsAdbRestore:Z

.field private final mManifestSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field final mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field private final mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

.field private mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

.field private mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field final mOnlyPackage:Landroid/content/pm/PackageInfo;

.field private final mPackageInstallers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackagePolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/restore/RestorePolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mPipes:[Landroid/os/ParcelFileDescriptor;

.field private mPipesClosed:Z

.field private final mPipesLock:Ljava/lang/Object;

.field private mTargetApp:Landroid/content/pm/ApplicationInfo;

.field private final mUserId:I

.field private mWidgetData:[B


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Landroid/content/pm/PackageInfo;ZIZ)V
    .locals 2
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "monitorTask"    # Lcom/android/server/backup/BackupRestoreTask;
    .param p3, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p4, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p5, "onlyPackage"    # Landroid/content/pm/PackageInfo;
    .param p6, "allowApks"    # Z
    .param p7, "ephemeralOpToken"    # I
    .param p8, "isAdbRestore"    # Z

    .line 136
    invoke-direct {p0}, Lcom/android/server/backup/restore/RestoreEngine;-><init>()V

    .line 77
    new-instance v0, Lcom/android/server/backup/restore/RestoreDeleteObserver;

    invoke-direct {v0}, Lcom/android/server/backup/restore/RestoreDeleteObserver;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 102
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    .line 106
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    .line 109
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    .line 113
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    .line 119
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 120
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    .line 123
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    .line 137
    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 138
    iput p7, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mEphemeralOpToken:I

    .line 139
    iput-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    .line 140
    iput-object p3, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 141
    iput-object p4, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 142
    iput-object p5, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    .line 143
    iput-boolean p6, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowApks:Z

    .line 144
    const v0, 0x8000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBuffer:[B

    .line 145
    nop

    .line 146
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    .line 145
    const-string v1, "Timeout parameters cannot be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 148
    iput-boolean p8, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    .line 149
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    .line 150
    return-void
.end method

.method private static isCanonicalFilePath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 657
    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 664
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 661
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z
    .locals 3
    .param p0, "info"    # Lcom/android/server/backup/FileMetadata;

    .line 632
    iget-object v0, p0, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string v1, "c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 636
    return v1

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string/jumbo v2, "r"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 644
    iget-object v0, p0, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v2, "no_backup/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    return v1

    .line 653
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$restoreOneFile$0(J)V
    .locals 0
    .param p0, "bytesRead"    # J

    .line 167
    return-void
.end method

.method private setUpPipes()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 566
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 567
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 568
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesClosed:Z

    .line 569
    monitor-exit v0

    .line 570
    return-void

    .line 569
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private shouldForceClearAppDataOnFullRestore(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 674
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 675
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    .line 674
    const-string/jumbo v2, "packages_to_clear_data_before_full_restore"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, "packageListString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 679
    const/4 v1, 0x0

    return v1

    .line 682
    :cond_0
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 683
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V
    .locals 7
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "doRestoreFinished"    # Z

    .line 591
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_2

    .line 594
    if-eqz p2, :cond_1

    .line 595
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    .line 596
    .local v0, "token":I
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 597
    invoke-virtual {v1}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    move-result-wide v3

    .line 598
    .local v3, "fullBackupAgentTimeoutMillis":J
    new-instance v5, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {v5, v1, v0}, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;-><init>(Lcom/android/server/backup/UserBackupManagerService;I)V

    .line 600
    .local v5, "latch":Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v6, 0x1

    move v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 602
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    new-instance v1, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;

    iget-object v2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v6, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {v1, v2, v0, v6}, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;-><init>(Landroid/app/IBackupAgent;ILcom/android/server/backup/UserBackupManagerService;)V

    .line 608
    .local v1, "runner":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    const-string/jumbo v6, "restore-sys-finished-runner"

    invoke-direct {v2, v1, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 609
    .end local v1    # "runner":Ljava/lang/Runnable;
    goto :goto_0

    .line 610
    :cond_0
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 611
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v2

    .line 610
    invoke-interface {v1, v0, v2}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V

    .line 614
    :goto_0
    invoke-virtual {v5}, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->await()V

    .line 617
    .end local v0    # "token":I
    .end local v3    # "fullBackupAgentTimeoutMillis":J
    .end local v5    # "latch":Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;
    :cond_1
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    goto :goto_1

    .line 618
    :catch_0
    move-exception v0

    .line 619
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Lost app trying to shut down"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 623
    :cond_2
    return-void
.end method

.method private tearDownPipes()V
    .locals 4

    .line 576
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 577
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesClosed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 579
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 580
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 582
    iput-boolean v2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesClosed:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 585
    goto :goto_0

    .line 583
    :catch_0
    move-exception v1

    .line 584
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "BackupManagerService"

    const-string v3, "Couldn\'t close agent pipes"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 587
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 588
    return-void

    .line 587
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public getAgent()Landroid/app/IBackupAgent;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    return-object v0
.end method

.method public getWidgetData()[B
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    return-object v0
.end method

.method handleTimeout()V
    .locals 1

    .line 626
    invoke-direct {p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 627
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 628
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 629
    return-void
.end method

.method public restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)Z
    .locals 42
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "mustKillAgent"    # Z
    .param p3, "buffer"    # [B
    .param p4, "onlyPackage"    # Landroid/content/pm/PackageInfo;
    .param p5, "allowApks"    # Z
    .param p6, "token"    # I
    .param p7, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;

    .line 162
    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRunning()Z

    move-result v0

    const/4 v14, 0x0

    const-string v15, "BackupManagerService"

    if-nez v0, :cond_0

    .line 163
    const-string v0, "Restore engine used after halting"

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return v14

    .line 167
    :cond_0
    sget-object v10, Lcom/android/server/backup/restore/-$$Lambda$FullRestoreEngine$4tWYktC0BIhLX9UJcbVLlqtWGqU;->INSTANCE:Lcom/android/server/backup/restore/-$$Lambda$FullRestoreEngine$4tWYktC0BIhLX9UJcbVLlqtWGqU;

    .line 169
    .local v10, "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    new-instance v0, Lcom/android/server/backup/utils/TarBackupReader;

    move-object/from16 v9, p7

    invoke-direct {v0, v11, v10, v9}, Lcom/android/server/backup/utils/TarBackupReader;-><init>(Ljava/io/InputStream;Lcom/android/server/backup/utils/BytesReadListener;Landroid/app/backup/IBackupManagerMonitor;)V

    move-object v8, v0

    .line 177
    .local v8, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    const/4 v6, -0x3

    :try_start_0
    invoke-virtual {v8}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeaders()Lcom/android/server/backup/FileMetadata;

    move-result-object v0

    move-object v4, v0

    .line 178
    .local v4, "info":Lcom/android/server/backup/FileMetadata;
    if-eqz v4, :cond_22

    .line 183
    iget-object v0, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object v3, v0

    .line 184
    .local v3, "pkg":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1b

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 187
    if-eqz v13, :cond_1

    .line 188
    :try_start_1
    iget-object v0, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected data for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but saw "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {v1, v6}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 191
    invoke-virtual {v1, v14}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 192
    return v14

    .line 198
    :cond_1
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 199
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v7, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_2
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_3

    .line 206
    const-string v0, "Saw new package; finalizing old one"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 210
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-boolean v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    invoke-direct {v1, v0, v7}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 211
    iput-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 212
    iput-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 543
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "info":Lcom/android/server/backup/FileMetadata;
    :catch_0
    move-exception v0

    move-object v13, v8

    move-object/from16 v31, v10

    goto/16 :goto_17

    .line 216
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v4    # "info":Lcom/android/server/backup/FileMetadata;
    :cond_3
    :goto_0
    :try_start_2
    iget-object v0, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v7, "_manifest"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1b

    if-eqz v0, :cond_4

    .line 217
    :try_start_3
    invoke-virtual {v8, v4}, Lcom/android/server/backup/utils/TarBackupReader;->readAppManifestAndReturnSignatures(Lcom/android/server/backup/FileMetadata;)[Landroid/content/pm/Signature;

    move-result-object v0

    .line 221
    .local v0, "signatures":[Landroid/content/pm/Signature;
    iget-wide v5, v4, Lcom/android/server/backup/FileMetadata;->version:J

    iput-wide v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAppVersion:J

    .line 222
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/content/pm/PackageManagerInternal;

    .line 224
    .local v7, "pmi":Landroid/content/pm/PackageManagerInternal;
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 225
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 224
    move-object v2, v8

    move-object v14, v3

    .end local v3    # "pkg":Ljava/lang/String;
    .local v14, "pkg":Ljava/lang/String;
    move-object v3, v5

    move-object v5, v4

    .end local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .local v5, "info":Lcom/android/server/backup/FileMetadata;
    move/from16 v4, p5

    move-object/from16 v29, v5

    const/4 v13, 0x1

    .end local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .local v29, "info":Lcom/android/server/backup/FileMetadata;
    move/from16 v16, v6

    move-object v6, v0

    move-object v13, v8

    .end local v8    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v13, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    move/from16 v8, v16

    :try_start_4
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/backup/utils/TarBackupReader;->chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;Landroid/content/pm/PackageManagerInternal;I)Lcom/android/server/backup/restore/RestorePolicy;

    move-result-object v2

    .line 227
    .local v2, "restorePolicy":Lcom/android/server/backup/restore/RestorePolicy;
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    move-object/from16 v6, v29

    .end local v29    # "info":Lcom/android/server/backup/FileMetadata;
    .local v6, "info":Lcom/android/server/backup/FileMetadata;
    iget-object v4, v6, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v3, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    iget-object v4, v6, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v3, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-wide v3, v6, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v13, v3, v4}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 234
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v3, v14}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendOnRestorePackage(Landroid/app/backup/IFullBackupRestoreObserver;Ljava/lang/String;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 235
    .end local v0    # "signatures":[Landroid/content/pm/Signature;
    .end local v2    # "restorePolicy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v7    # "pmi":Landroid/content/pm/PackageManagerInternal;
    move-object v3, v6

    move-object/from16 v31, v10

    goto/16 :goto_15

    .line 543
    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v14    # "pkg":Ljava/lang/String;
    .restart local v8    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_1
    move-exception v0

    move-object v13, v8

    move-object/from16 v31, v10

    .end local v8    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_17

    .line 235
    .end local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v8    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :cond_4
    move-object v14, v3

    move-object v6, v4

    move-object v13, v8

    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v8    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v14    # "pkg":Ljava/lang/String;
    :try_start_5
    iget-object v0, v6, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v3, "_meta"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1a

    if-eqz v0, :cond_5

    .line 237
    :try_start_6
    invoke-virtual {v13, v6}, Lcom/android/server/backup/utils/TarBackupReader;->readMetadata(Lcom/android/server/backup/FileMetadata;)V

    .line 243
    invoke-virtual {v13}, Lcom/android/server/backup/utils/TarBackupReader;->getWidgetData()[B

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    .line 245
    invoke-virtual {v13}, Lcom/android/server/backup/utils/TarBackupReader;->getMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move-object v2, v0

    .line 247
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v2, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :try_start_7
    iget-wide v3, v6, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v13, v3, v4}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    move-object v3, v6

    move-object/from16 v31, v10

    goto/16 :goto_16

    .line 543
    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v14    # "pkg":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v9, v2

    move-object/from16 v31, v10

    goto/16 :goto_17

    .end local v2    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :catch_3
    move-exception v0

    move-object/from16 v31, v10

    goto/16 :goto_17

    .line 251
    .restart local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v14    # "pkg":Ljava/lang/String;
    :cond_5
    const/4 v0, 0x1

    .line 252
    .local v0, "okay":Z
    :try_start_8
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/restore/RestorePolicy;

    move-object/from16 v29, v3

    .line 253
    .local v29, "policy":Lcom/android/server/backup/restore/RestorePolicy;
    sget-object v3, Lcom/android/server/backup/restore/FullRestoreEngine$1;->$SwitchMap$com$android$server$backup$restore$RestorePolicy:[I

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/backup/restore/RestorePolicy;->ordinal()I

    move-result v4

    aget v3, v3, v4
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1a

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_b

    const/4 v5, 0x2

    const-string v7, "a"

    if-eq v3, v5, :cond_8

    if-eq v3, v4, :cond_6

    .line 306
    :try_start_9
    const-string v3, "Invalid policy from manifest"

    invoke-static {v15, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v0, 0x0

    .line 308
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v3, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v6

    move-object/from16 v31, v10

    goto/16 :goto_2

    .line 290
    :cond_6
    iget-object v3, v6, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 292
    const-string v3, "apk present but ACCEPT"

    invoke-static {v15, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 298
    const/4 v0, 0x0

    move-object v3, v6

    move-object/from16 v31, v10

    goto :goto_2

    .line 290
    :cond_7
    move-object v3, v6

    move-object/from16 v31, v10

    goto :goto_2

    .line 261
    :cond_8
    :try_start_a
    iget-object v3, v6, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 263
    const-string v2, "APK file; installing"

    invoke-static {v15, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    .line 267
    .local v8, "installerPackageName":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 268
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    iget v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1a

    .line 267
    move/from16 v16, v2

    move-object/from16 v2, p1

    move-object/from16 v30, v6

    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .local v30, "info":Lcom/android/server/backup/FileMetadata;
    move-object v6, v7

    move-object/from16 v7, v30

    move-object v9, v10

    move-object/from16 v31, v10

    .end local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .local v31, "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    move/from16 v10, v16

    :try_start_b
    invoke-static/range {v2 .. v10}, Lcom/android/server/backup/utils/RestoreUtils;->installApk(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;I)Z

    move-result v2

    .line 273
    .local v2, "isSuccessfullyInstalled":Z
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v2, :cond_9

    .line 274
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    goto :goto_1

    .line 275
    :cond_9
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    .line 273
    :goto_1
    invoke-virtual {v3, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    move-object/from16 v3, v30

    .end local v30    # "info":Lcom/android/server/backup/FileMetadata;
    .local v3, "info":Lcom/android/server/backup/FileMetadata;
    iget-wide v4, v3, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v13, v4, v5}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 280
    const/4 v4, 0x1

    return v4

    .line 284
    .end local v2    # "isSuccessfullyInstalled":Z
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v8    # "installerPackageName":Ljava/lang/String;
    .end local v31    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :cond_a
    move-object v3, v6

    move-object/from16 v31, v10

    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v31    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v5, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const/4 v0, 0x0

    .line 287
    goto :goto_2

    .line 255
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v31    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :cond_b
    move-object v3, v6

    move-object/from16 v31, v10

    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v31    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    const/4 v0, 0x0

    .line 256
    nop

    .line 313
    :goto_2
    invoke-static {v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/backup/restore/FullRestoreEngine;->isCanonicalFilePath(Ljava/lang/String;)Z

    move-result v5
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_19

    if-nez v5, :cond_c

    goto :goto_3

    :cond_c
    move v5, v0

    goto :goto_4

    .line 314
    :cond_d
    :goto_3
    const/4 v0, 0x0

    move v5, v0

    .line 322
    .end local v0    # "okay":Z
    .local v5, "okay":Z
    :goto_4
    const-string/jumbo v6, "k"

    if-eqz v5, :cond_12

    :try_start_c
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_19

    if-nez v0, :cond_12

    .line 328
    :try_start_d
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 329
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    .line 330
    const/4 v8, 0x0

    invoke-virtual {v0, v14, v8, v7}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 334
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 341
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->shouldForceClearAppDataOnFullRestore(Ljava/lang/String;)Z

    move-result v0

    .line 343
    .local v0, "forceClear":Z
    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v7, :cond_e

    if-eqz v0, :cond_f

    .line 345
    :cond_e
    const-string v7, "Clearing app data preparatory to full restore"

    invoke-static {v15, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v7, v14}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataBeforeRestore(Ljava/lang/String;)V

    .line 355
    :cond_f
    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v7, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 364
    .end local v0    # "forceClear":Z
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setUpPipes()V

    .line 365
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 366
    iget-object v8, v3, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 367
    const/4 v4, 0x0

    goto :goto_5

    .line 368
    :cond_11
    nop

    .line 365
    :goto_5
    invoke-virtual {v0, v7, v4}, Lcom/android/server/backup/UserBackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 369
    iput-object v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_d} :catch_4

    .line 372
    goto :goto_6

    .line 370
    :catch_4
    move-exception v0

    .line 374
    :goto_6
    :try_start_e
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-nez v0, :cond_12

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create agent for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 v5, 0x0

    .line 377
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 378
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    :cond_12
    if-eqz v5, :cond_13

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring data for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " but agent is for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_19

    .line 387
    const/4 v5, 0x0

    .line 394
    :cond_13
    if-eqz v5, :cond_1e

    .line 395
    const/4 v4, 0x1

    .line 396
    .local v4, "agentSuccess":Z
    :try_start_f
    iget-wide v9, v3, Lcom/android/server/backup/FileMetadata;->size:J

    .line 397
    .local v9, "toCopy":J
    const-string v0, "com.android.sharedstoragebackup"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_18

    move/from16 v30, v0

    .line 398
    .local v30, "isSharedStorage":Z
    if-eqz v30, :cond_14

    .line 399
    :try_start_10
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getSharedBackupAgentTimeoutMillis()J

    move-result-wide v16
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_19

    move-wide/from16 v34, v16

    goto :goto_7

    .line 400
    :cond_14
    :try_start_11
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis()J

    move-result-wide v16
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_18

    move-wide/from16 v34, v16

    :goto_7
    nop

    .line 402
    .local v34, "timeout":J
    :try_start_12
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    const/16 v37, 0x1

    move-object/from16 v32, v0

    move/from16 v33, p6

    move-object/from16 v36, v2

    invoke-virtual/range {v32 .. v37}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 407
    const-string/jumbo v0, "obb"

    iget-object v2, v3, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_13

    const-string v2, " : "

    if-eqz v0, :cond_15

    .line 409
    :try_start_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restoring OBB file for "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x0

    aget-object v18, v2, v6

    iget-wide v7, v3, Lcom/android/server/backup/FileMetadata;->size:J

    iget v2, v3, Lcom/android/server/backup/FileMetadata;->type:I

    iget-object v6, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_9

    move/from16 v37, v4

    move/from16 v36, v5

    .end local v4    # "agentSuccess":Z
    .end local v5    # "okay":Z
    .local v36, "okay":Z
    .local v37, "agentSuccess":Z
    :try_start_14
    iget-wide v4, v3, Lcom/android/server/backup/FileMetadata;->mode:J
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_7

    move-wide/from16 v38, v9

    .end local v9    # "toCopy":J
    .local v38, "toCopy":J
    :try_start_15
    iget-wide v9, v3, Lcom/android/server/backup/FileMetadata;->mtime:J
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_5

    move-object/from16 v40, v13

    .end local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v40, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :try_start_16
    iget-object v13, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 415
    invoke-virtual {v13}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v28

    .line 412
    move-object/from16 v16, v0

    move-object/from16 v17, v14

    move-wide/from16 v19, v7

    move/from16 v21, v2

    move-object/from16 v22, v6

    move-wide/from16 v23, v4

    move-wide/from16 v25, v9

    move/from16 v27, p6

    invoke-virtual/range {v16 .. v28}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_b

    move-object/from16 v41, v14

    goto/16 :goto_8

    .line 455
    .end local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_5
    move-exception v0

    move-object/from16 v40, v13

    move-object/from16 v41, v14

    .end local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_9

    .line 450
    .end local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_6
    move-exception v0

    move-object/from16 v40, v13

    move-object/from16 v41, v14

    .end local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_a

    .line 455
    .end local v38    # "toCopy":J
    .end local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v9    # "toCopy":J
    .restart local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_7
    move-exception v0

    move-wide/from16 v38, v9

    move-object/from16 v40, v13

    move-object/from16 v41, v14

    .end local v9    # "toCopy":J
    .end local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v38    # "toCopy":J
    .restart local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_9

    .line 450
    .end local v38    # "toCopy":J
    .end local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v9    # "toCopy":J
    .restart local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_8
    move-exception v0

    move-wide/from16 v38, v9

    move-object/from16 v40, v13

    move-object/from16 v41, v14

    .end local v9    # "toCopy":J
    .end local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v38    # "toCopy":J
    .restart local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_a

    .line 455
    .end local v36    # "okay":Z
    .end local v37    # "agentSuccess":Z
    .end local v38    # "toCopy":J
    .end local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v4    # "agentSuccess":Z
    .restart local v5    # "okay":Z
    .restart local v9    # "toCopy":J
    .restart local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_9
    move-exception v0

    move/from16 v37, v4

    move/from16 v36, v5

    move-wide/from16 v38, v9

    move-object/from16 v40, v13

    move-object/from16 v41, v14

    .end local v4    # "agentSuccess":Z
    .end local v5    # "okay":Z
    .end local v9    # "toCopy":J
    .end local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v36    # "okay":Z
    .restart local v37    # "agentSuccess":Z
    .restart local v38    # "toCopy":J
    .restart local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_9

    .line 450
    .end local v36    # "okay":Z
    .end local v37    # "agentSuccess":Z
    .end local v38    # "toCopy":J
    .end local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v4    # "agentSuccess":Z
    .restart local v5    # "okay":Z
    .restart local v9    # "toCopy":J
    .restart local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_a
    move-exception v0

    move/from16 v37, v4

    move/from16 v36, v5

    move-wide/from16 v38, v9

    move-object/from16 v40, v13

    move-object/from16 v41, v14

    .end local v4    # "agentSuccess":Z
    .end local v5    # "okay":Z
    .end local v9    # "toCopy":J
    .end local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v36    # "okay":Z
    .restart local v37    # "agentSuccess":Z
    .restart local v38    # "toCopy":J
    .restart local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_a

    .line 416
    .end local v36    # "okay":Z
    .end local v37    # "agentSuccess":Z
    .end local v38    # "toCopy":J
    .end local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v4    # "agentSuccess":Z
    .restart local v5    # "okay":Z
    .restart local v9    # "toCopy":J
    .restart local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :cond_15
    move/from16 v37, v4

    move/from16 v36, v5

    move-wide/from16 v38, v9

    move-object/from16 v40, v13

    .end local v4    # "agentSuccess":Z
    .end local v5    # "okay":Z
    .end local v9    # "toCopy":J
    .end local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v36    # "okay":Z
    .restart local v37    # "agentSuccess":Z
    .restart local v38    # "toCopy":J
    .restart local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :try_start_17
    iget-object v0, v3, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_12
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_11

    if-eqz v0, :cond_16

    .line 420
    :try_start_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring key-value file for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-wide v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAppVersion:J

    iput-wide v4, v3, Lcom/android/server/backup/FileMetadata;->version:J

    .line 425
    new-instance v0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 428
    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v18

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    aget-object v20, v4, v5

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    move/from16 v22, p6

    invoke-direct/range {v16 .. v22}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/io/File;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;Landroid/app/IBackupAgent;I)V

    .line 430
    .local v0, "restoreEngine":Lcom/android/server/backup/KeyValueAdbRestoreEngine;
    new-instance v2, Ljava/lang/Thread;

    const-string/jumbo v4, "restore-key-value-runner"

    invoke-direct {v2, v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_c
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_b

    .line 431
    .end local v0    # "restoreEngine":Lcom/android/server/backup/KeyValueAdbRestoreEngine;
    move-object/from16 v41, v14

    goto/16 :goto_8

    .line 455
    :catch_b
    move-exception v0

    move-object/from16 v41, v14

    goto/16 :goto_9

    .line 450
    :catch_c
    move-exception v0

    move-object/from16 v41, v14

    goto/16 :goto_a

    .line 439
    :cond_16
    :try_start_19
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_12
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_11

    if-eqz v0, :cond_17

    .line 440
    :try_start_1a
    const-string/jumbo v0, "system process agent - spinning a thread"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance v0, Lcom/android/server/backup/restore/RestoreFileRunnable;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x0

    aget-object v20, v5, v6

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v3

    move/from16 v21, p6

    invoke-direct/range {v16 .. v21}, Lcom/android/server/backup/restore/RestoreFileRunnable;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;I)V

    .line 443
    .local v0, "runner":Lcom/android/server/backup/restore/RestoreFileRunnable;
    new-instance v2, Ljava/lang/Thread;

    const-string/jumbo v4, "restore-sys-runner"

    invoke-direct {v2, v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_c
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_b

    .line 444
    .end local v0    # "runner":Lcom/android/server/backup/restore/RestoreFileRunnable;
    move-object/from16 v41, v14

    goto :goto_8

    .line 445
    :cond_17
    :try_start_1b
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    aget-object v17, v2, v4

    iget-wide v4, v3, Lcom/android/server/backup/FileMetadata;->size:J

    iget v2, v3, Lcom/android/server/backup/FileMetadata;->type:I

    iget-object v6, v3, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    iget-wide v8, v3, Lcom/android/server/backup/FileMetadata;->mode:J
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_12
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_11

    move-object v10, v14

    .end local v14    # "pkg":Ljava/lang/String;
    .local v10, "pkg":Ljava/lang/String;
    :try_start_1c
    iget-wide v13, v3, Lcom/android/server/backup/FileMetadata;->mtime:J
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_10
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_f

    move-object/from16 v41, v10

    .end local v10    # "pkg":Ljava/lang/String;
    .local v41, "pkg":Ljava/lang/String;
    :try_start_1d
    iget-object v10, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 447
    invoke-virtual {v10}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v28

    .line 445
    move-object/from16 v16, v0

    move-wide/from16 v18, v4

    move/from16 v20, v2

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-wide/from16 v23, v8

    move-wide/from16 v25, v13

    move/from16 v27, p6

    invoke-interface/range {v16 .. v28}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_e
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_d

    .line 461
    :goto_8
    move/from16 v5, v36

    move/from16 v4, v37

    goto :goto_b

    .line 455
    :catch_d
    move-exception v0

    goto :goto_9

    .line 450
    :catch_e
    move-exception v0

    goto :goto_a

    .line 455
    .end local v41    # "pkg":Ljava/lang/String;
    .restart local v10    # "pkg":Ljava/lang/String;
    :catch_f
    move-exception v0

    move-object/from16 v41, v10

    .end local v10    # "pkg":Ljava/lang/String;
    .restart local v41    # "pkg":Ljava/lang/String;
    goto :goto_9

    .line 450
    .end local v41    # "pkg":Ljava/lang/String;
    .restart local v10    # "pkg":Ljava/lang/String;
    :catch_10
    move-exception v0

    move-object/from16 v41, v10

    .end local v10    # "pkg":Ljava/lang/String;
    .restart local v41    # "pkg":Ljava/lang/String;
    goto :goto_a

    .line 455
    .end local v41    # "pkg":Ljava/lang/String;
    .restart local v14    # "pkg":Ljava/lang/String;
    :catch_11
    move-exception v0

    move-object/from16 v41, v14

    .end local v14    # "pkg":Ljava/lang/String;
    .restart local v41    # "pkg":Ljava/lang/String;
    goto :goto_9

    .line 450
    .end local v41    # "pkg":Ljava/lang/String;
    .restart local v14    # "pkg":Ljava/lang/String;
    :catch_12
    move-exception v0

    move-object/from16 v41, v14

    .end local v14    # "pkg":Ljava/lang/String;
    .restart local v41    # "pkg":Ljava/lang/String;
    goto :goto_a

    .line 455
    .end local v36    # "okay":Z
    .end local v37    # "agentSuccess":Z
    .end local v38    # "toCopy":J
    .end local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v41    # "pkg":Ljava/lang/String;
    .restart local v4    # "agentSuccess":Z
    .restart local v5    # "okay":Z
    .restart local v9    # "toCopy":J
    .restart local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v14    # "pkg":Ljava/lang/String;
    :catch_13
    move-exception v0

    move/from16 v37, v4

    move/from16 v36, v5

    move-wide/from16 v38, v9

    move-object/from16 v40, v13

    move-object/from16 v41, v14

    .line 458
    .end local v4    # "agentSuccess":Z
    .end local v5    # "okay":Z
    .end local v9    # "toCopy":J
    .end local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v14    # "pkg":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v36    # "okay":Z
    .restart local v37    # "agentSuccess":Z
    .restart local v38    # "toCopy":J
    .restart local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v41    # "pkg":Ljava/lang/String;
    :goto_9
    :try_start_1e
    const-string v2, "Agent crashed during full restore"

    invoke-static {v15, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_14

    .line 459
    const/4 v4, 0x0

    .line 460
    .end local v37    # "agentSuccess":Z
    .restart local v4    # "agentSuccess":Z
    const/4 v2, 0x0

    move v5, v2

    .end local v36    # "okay":Z
    .local v2, "okay":Z
    goto :goto_b

    .line 543
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "okay":Z
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v4    # "agentSuccess":Z
    .end local v29    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v30    # "isSharedStorage":Z
    .end local v34    # "timeout":J
    .end local v38    # "toCopy":J
    .end local v41    # "pkg":Ljava/lang/String;
    :catch_14
    move-exception v0

    move-object/from16 v9, p7

    move-object/from16 v13, v40

    goto/16 :goto_17

    .line 450
    .end local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v4    # "agentSuccess":Z
    .restart local v5    # "okay":Z
    .restart local v9    # "toCopy":J
    .restart local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v14    # "pkg":Ljava/lang/String;
    .restart local v29    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v30    # "isSharedStorage":Z
    .restart local v34    # "timeout":J
    :catch_15
    move-exception v0

    move/from16 v37, v4

    move/from16 v36, v5

    move-wide/from16 v38, v9

    move-object/from16 v40, v13

    move-object/from16 v41, v14

    .line 452
    .end local v4    # "agentSuccess":Z
    .end local v5    # "okay":Z
    .end local v9    # "toCopy":J
    .end local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v14    # "pkg":Ljava/lang/String;
    .local v0, "e":Ljava/io/IOException;
    .restart local v36    # "okay":Z
    .restart local v37    # "agentSuccess":Z
    .restart local v38    # "toCopy":J
    .restart local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v41    # "pkg":Ljava/lang/String;
    :goto_a
    :try_start_1f
    const-string v2, "Couldn\'t establish restore"

    invoke-static {v15, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const/4 v4, 0x0

    .line 454
    .end local v37    # "agentSuccess":Z
    .restart local v4    # "agentSuccess":Z
    const/4 v0, 0x0

    .line 461
    .end local v36    # "okay":Z
    .local v0, "okay":Z
    move v5, v0

    .line 464
    .end local v0    # "okay":Z
    .restart local v5    # "okay":Z
    :goto_b
    if-eqz v5, :cond_1c

    .line 468
    const/4 v0, 0x1

    .line 469
    .local v0, "pipeOkay":Z
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    .line 470
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_17

    move v6, v0

    move-wide/from16 v9, v38

    .line 471
    .end local v0    # "pipeOkay":Z
    .end local v38    # "toCopy":J
    .local v2, "pipe":Ljava/io/FileOutputStream;
    .local v6, "pipeOkay":Z
    .restart local v9    # "toCopy":J
    :goto_c
    const-wide/16 v13, 0x0

    cmp-long v0, v9, v13

    if-lez v0, :cond_1b

    .line 472
    :try_start_20
    array-length v0, v12

    int-to-long v13, v0

    cmp-long v0, v9, v13

    if-lez v0, :cond_18

    .line 473
    array-length v0, v12

    goto :goto_d

    :cond_18
    long-to-int v0, v9

    :goto_d
    move v8, v0

    .line 474
    .local v8, "toRead":I
    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_14

    move v13, v0

    .line 475
    .local v13, "nRead":I
    if-gtz v13, :cond_19

    .line 476
    goto :goto_f

    .line 478
    :cond_19
    move v14, v8

    .end local v8    # "toRead":I
    .local v14, "toRead":I
    int-to-long v7, v13

    sub-long/2addr v9, v7

    .line 482
    if-eqz v6, :cond_1a

    .line 484
    const/4 v7, 0x0

    :try_start_21
    invoke-virtual {v2, v12, v7, v13}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_16

    .line 489
    goto :goto_e

    .line 485
    :catch_16
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 486
    .local v0, "e":Ljava/io/IOException;
    :try_start_22
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to write to restore pipe: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 486
    invoke-static {v15, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_14

    .line 488
    const/4 v6, 0x0

    .line 491
    .end local v0    # "e":Ljava/io/IOException;
    .end local v13    # "nRead":I
    .end local v14    # "toRead":I
    :cond_1a
    :goto_e
    const/4 v7, 0x1

    goto :goto_c

    .line 495
    :cond_1b
    :goto_f
    :try_start_23
    iget-wide v7, v3, Lcom/android/server/backup/FileMetadata;->size:J
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_17

    move-object/from16 v13, v40

    .end local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v13, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :try_start_24
    invoke-virtual {v13, v7, v8}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 499
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_18

    move/from16 v7, p6

    :try_start_25
    invoke-virtual {v0, v7}, Lcom/android/server/backup/UserBackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v0

    move v4, v0

    goto :goto_10

    .line 464
    .end local v2    # "pipe":Ljava/io/FileOutputStream;
    .end local v6    # "pipeOkay":Z
    .end local v9    # "toCopy":J
    .end local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v38    # "toCopy":J
    .restart local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :cond_1c
    move/from16 v7, p6

    move-object/from16 v13, v40

    .end local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    move-wide/from16 v9, v38

    .line 504
    .end local v38    # "toCopy":J
    .restart local v9    # "toCopy":J
    :goto_10
    if-nez v4, :cond_1d

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Agent failure restoring "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v41

    .end local v41    # "pkg":Ljava/lang/String;
    .local v2, "pkg":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; ending restore"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v6, 0x12

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 508
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 509
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v6, 0x0

    invoke-direct {v1, v0, v6}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 510
    const/4 v6, 0x0

    iput-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 511
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    const/4 v6, 0x1

    if-eqz p4, :cond_1f

    .line 516
    const/4 v0, -0x2

    invoke-virtual {v1, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 517
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 518
    return v8

    .line 504
    .end local v2    # "pkg":Ljava/lang/String;
    .restart local v41    # "pkg":Ljava/lang/String;
    :cond_1d
    move-object/from16 v2, v41

    const/4 v6, 0x1

    .end local v41    # "pkg":Ljava/lang/String;
    .restart local v2    # "pkg":Ljava/lang/String;
    goto :goto_11

    .line 543
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v4    # "agentSuccess":Z
    .end local v5    # "okay":Z
    .end local v9    # "toCopy":J
    .end local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v29    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v30    # "isSharedStorage":Z
    .end local v34    # "timeout":J
    .restart local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_17
    move-exception v0

    move/from16 v7, p6

    move-object/from16 v13, v40

    move-object/from16 v9, p7

    .end local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto :goto_17

    :catch_18
    move-exception v0

    move/from16 v7, p6

    goto :goto_14

    .line 394
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v5    # "okay":Z
    .local v14, "pkg":Ljava/lang/String;
    .restart local v29    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_1e
    move/from16 v7, p6

    move/from16 v36, v5

    move-object v2, v14

    const/4 v6, 0x1

    .line 526
    .end local v14    # "pkg":Ljava/lang/String;
    .restart local v2    # "pkg":Ljava/lang/String;
    :cond_1f
    :goto_11
    if-nez v5, :cond_23

    .line 530
    iget-wide v8, v3, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v16, 0x1ff

    add-long v8, v8, v16

    const-wide/16 v16, -0x200

    and-long v8, v8, v16

    .line 531
    .local v8, "bytesToConsume":J
    :goto_12
    const-wide/16 v16, 0x0

    cmp-long v0, v8, v16

    if-lez v0, :cond_23

    .line 532
    array-length v0, v12

    int-to-long v6, v0

    cmp-long v0, v8, v6

    if-lez v0, :cond_20

    .line 533
    array-length v0, v12

    goto :goto_13

    :cond_20
    long-to-int v0, v8

    .line 534
    .local v0, "toRead":I
    :goto_13
    const/4 v4, 0x0

    invoke-virtual {v11, v12, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v6
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_19

    int-to-long v6, v6

    .line 535
    .local v6, "nRead":J
    const-wide/16 v18, 0x0

    cmp-long v4, v6, v18

    if-gtz v4, :cond_21

    .line 536
    goto :goto_15

    .line 538
    :cond_21
    sub-long/2addr v8, v6

    .line 539
    .end local v0    # "toRead":I
    .end local v6    # "nRead":J
    move/from16 v7, p6

    const/4 v6, 0x1

    goto :goto_12

    .line 543
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v5    # "okay":Z
    .end local v8    # "bytesToConsume":J
    .end local v29    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :catch_19
    move-exception v0

    :goto_14
    move-object/from16 v9, p7

    goto :goto_17

    .end local v31    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .local v10, "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :catch_1a
    move-exception v0

    move-object/from16 v31, v10

    move-object/from16 v9, p7

    .end local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v31    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    goto :goto_17

    .line 178
    .end local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v31    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .local v4, "info":Lcom/android/server/backup/FileMetadata;
    .local v8, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :cond_22
    move-object v3, v4

    move-object v13, v8

    move-object/from16 v31, v10

    .line 549
    .end local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v8    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v31    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :cond_23
    :goto_15
    move-object/from16 v2, p7

    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v2, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :goto_16
    move-object v4, v3

    goto :goto_18

    .line 543
    .end local v2    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v31    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v8    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :catch_1b
    move-exception v0

    move-object v13, v8

    move-object/from16 v31, v10

    move-object/from16 v9, p7

    .line 545
    .end local v8    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v0, "e":Ljava/io/IOException;
    .local v9, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v31    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :goto_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "io exception on restore socket read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 548
    const/4 v4, 0x0

    move-object v2, v9

    .line 552
    .end local v0    # "e":Ljava/io/IOException;
    .end local v9    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v2    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v4    # "info":Lcom/android/server/backup/FileMetadata;
    :goto_18
    if-nez v4, :cond_24

    .line 556
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 557
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 558
    if-eqz p2, :cond_25

    .line 559
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    invoke-direct {v1, v0, v5}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    goto :goto_19

    .line 552
    :cond_24
    const/4 v3, 0x0

    .line 562
    :cond_25
    :goto_19
    if-eqz v4, :cond_26

    const/4 v14, 0x1

    goto :goto_1a

    :cond_26
    move v14, v3

    :goto_1a
    return v14
.end method

.method sendOnRestorePackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 687
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v0, :cond_0

    .line 690
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onRestorePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    goto :goto_0

    .line 691
    :catch_0
    move-exception v0

    .line 692
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "full restore observer went away: restorePackage"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 696
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method
