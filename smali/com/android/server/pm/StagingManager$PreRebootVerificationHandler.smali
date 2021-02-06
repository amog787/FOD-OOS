.class final Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;
.super Landroid/os/Handler;
.source "StagingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/StagingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreRebootVerificationHandler"
.end annotation


# static fields
.field private static final MSG_PRE_REBOOT_VERIFICATION_APEX:I = 0x2

.field private static final MSG_PRE_REBOOT_VERIFICATION_APK:I = 0x3

.field private static final MSG_PRE_REBOOT_VERIFICATION_END:I = 0x4

.field private static final MSG_PRE_REBOOT_VERIFICATION_START:I = 0x1


# instance fields
.field private mIsReady:Z

.field private mPendingSessionIds:Landroid/util/IntArray;

.field private final mVerificationRunning:Landroid/util/SparseBooleanArray;

.field final synthetic this$0:Lcom/android/server/pm/StagingManager;


# direct methods
.method constructor <init>(Lcom/android/server/pm/StagingManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1271
    iput-object p1, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->this$0:Lcom/android/server/pm/StagingManager;

    .line 1272
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1268
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mVerificationRunning:Landroid/util/SparseBooleanArray;

    .line 1273
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;
    .param p1, "x1"    # I

    .line 1264
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->startPreRebootVerification(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;
    .param p1, "x1"    # I

    .line 1264
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->onPreRebootVerificationComplete(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;
    .param p1, "x1"    # I

    .line 1264
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->notifyPreRebootVerification_Apk_Complete(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;
    .param p1, "x1"    # I

    .line 1264
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->isVerificationRunning(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    .line 1264
    invoke-direct {p0}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->readyToStart()V

    return-void
.end method

.method private handlePreRebootVerification_Apex(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 6
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 1429
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->this$0:Lcom/android/server/pm/StagingManager;

    invoke-static {v0, p1}, Lcom/android/server/pm/StagingManager;->access$1000(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    .line 1433
    .local v0, "hasApex":Z
    if-eqz v0, :cond_1

    .line 1436
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->this$0:Lcom/android/server/pm/StagingManager;

    invoke-static {v1, p1}, Lcom/android/server/pm/StagingManager;->access$1100(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/List;

    move-result-object v1

    .line 1437
    .local v1, "apexPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1438
    iget-object v4, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->this$0:Lcom/android/server/pm/StagingManager;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    invoke-static {v4, v5}, Lcom/android/server/pm/StagingManager;->access$1200(Lcom/android/server/pm/StagingManager;Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1437
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1444
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_0
    nop

    .line 1446
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 1447
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 1448
    .local v2, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManagerInternal;->pruneCachedApksInApex(Ljava/util/List;)V

    goto :goto_1

    .line 1440
    .end local v1    # "apexPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v2    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    :catch_0
    move-exception v1

    .line 1441
    .local v1, "e":Lcom/android/server/pm/PackageManagerException;
    iget v2, v1, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 1442
    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-direct {p0, v2}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->onPreRebootVerificationComplete(I)V

    .line 1443
    return-void

    .line 1451
    .end local v1    # "e":Lcom/android/server/pm/PackageManagerException;
    :cond_1
    :goto_1
    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->notifyPreRebootVerification_Apex_Complete(I)V

    .line 1452
    return-void
.end method

.method private handlePreRebootVerification_Apk(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 3
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 1461
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->this$0:Lcom/android/server/pm/StagingManager;

    invoke-static {v0, p1}, Lcom/android/server/pm/StagingManager;->access$1300(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1462
    iget v0, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-direct {p0, v0}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->notifyPreRebootVerification_Apk_Complete(I)V

    .line 1463
    return-void

    .line 1467
    :cond_0
    :try_start_0
    const-string v0, "StagingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Running a pre-reboot verification for APKs in session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " by performing a dry-run install"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->this$0:Lcom/android/server/pm/StagingManager;

    invoke-static {v0, p1}, Lcom/android/server/pm/StagingManager;->access$1400(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)V
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1476
    goto :goto_0

    .line 1473
    :catch_0
    move-exception v0

    .line 1474
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    iget v1, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 1475
    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->onPreRebootVerificationComplete(I)V

    .line 1477
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    :goto_0
    return-void
.end method

.method private handlePreRebootVerification_End(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 4
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 1489
    const-string v0, "StagingManager"

    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v1

    .line 1490
    .local v1, "storageManager":Landroid/os/storage/IStorageManager;
    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->supportsCheckpoint()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1491
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/os/storage/IStorageManager;->startCheckpoint(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1500
    .end local v1    # "storageManager":Landroid/os/storage/IStorageManager;
    :cond_0
    nop

    .line 1508
    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->onPreRebootVerificationComplete(I)V

    .line 1519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marking session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " as ready"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionReady()V

    .line 1521
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1522
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->this$0:Lcom/android/server/pm/StagingManager;

    invoke-static {v0, p1}, Lcom/android/server/pm/StagingManager;->access$1000(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    .line 1523
    .local v0, "hasApex":Z
    if-eqz v0, :cond_1

    .line 1525
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->this$0:Lcom/android/server/pm/StagingManager;

    invoke-static {v1}, Lcom/android/server/pm/StagingManager;->access$1500(Lcom/android/server/pm/StagingManager;)Lcom/android/server/pm/ApexManager;

    move-result-object v1

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ApexManager;->markStagedSessionReady(I)V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1529
    goto :goto_0

    .line 1526
    :catch_0
    move-exception v1

    .line 1527
    .local v1, "e":Lcom/android/server/pm/PackageManagerException;
    iget v2, v1, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 1528
    return-void

    .line 1532
    .end local v0    # "hasApex":Z
    .end local v1    # "e":Lcom/android/server/pm/PackageManagerException;
    :cond_1
    :goto_0
    return-void

    .line 1493
    :catch_1
    move-exception v1

    .line 1495
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Failed to get hold of StorageManager"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1496
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 1498
    iget v0, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-direct {p0, v0}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->onPreRebootVerificationComplete(I)V

    .line 1499
    return-void
.end method

.method private handlePreRebootVerification_Start(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 5
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 1396
    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 1400
    nop

    .line 1401
    const-string/jumbo v0, "rollback"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1400
    invoke-static {v0}, Landroid/content/rollback/IRollbackManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/rollback/IRollbackManager;

    move-result-object v0

    .line 1405
    .local v0, "rm":Landroid/content/rollback/IRollbackManager;
    :try_start_0
    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-interface {v0, v1}, Landroid/content/rollback/IRollbackManager;->notifyStagedSession(I)I

    move-result v1

    .line 1406
    .local v1, "rollbackId":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1407
    iget-object v2, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->this$0:Lcom/android/server/pm/StagingManager;

    invoke-static {v2}, Lcom/android/server/pm/StagingManager;->access$800(Lcom/android/server/pm/StagingManager;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1408
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->this$0:Lcom/android/server/pm/StagingManager;

    invoke-static {v3}, Lcom/android/server/pm/StagingManager;->access$900(Lcom/android/server/pm/StagingManager;)Landroid/util/SparseIntArray;

    move-result-object v3

    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1409
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "rm":Landroid/content/rollback/IRollbackManager;
    .end local p0    # "this":Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;
    .end local p1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1414
    .end local v1    # "rollbackId":I
    .restart local v0    # "rm":Landroid/content/rollback/IRollbackManager;
    .restart local p0    # "this":Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;
    .restart local p1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_0
    :goto_0
    goto :goto_1

    .line 1411
    :catch_0
    move-exception v1

    .line 1412
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to notifyStagedSession for session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StagingManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1417
    .end local v0    # "rm":Landroid/content/rollback/IRollbackManager;
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    iget v0, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-direct {p0, v0}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->notifyPreRebootVerification_Start_Complete(I)V

    .line 1418
    return-void
.end method

.method private isVerificationRunning(I)Z
    .locals 2
    .param p1, "sessionId"    # I

    .line 1373
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mVerificationRunning:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 1374
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mVerificationRunning:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1375
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyPreRebootVerification_Apex_Complete(I)V
    .locals 2
    .param p1, "sessionId"    # I

    .line 1383
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1384
    return-void
.end method

.method private notifyPreRebootVerification_Apk_Complete(I)V
    .locals 2
    .param p1, "sessionId"    # I

    .line 1387
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1388
    return-void
.end method

.method private notifyPreRebootVerification_Start_Complete(I)V
    .locals 2
    .param p1, "sessionId"    # I

    .line 1379
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1380
    return-void
.end method

.method private onPreRebootVerificationComplete(I)V
    .locals 4
    .param p1, "sessionId"    # I

    .line 1360
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mVerificationRunning:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 1361
    :try_start_0
    const-string v1, "StagingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping preRebootVerification for session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    iget-object v1, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mVerificationRunning:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1363
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1366
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->this$0:Lcom/android/server/pm/StagingManager;

    invoke-static {v0, p1}, Lcom/android/server/pm/StagingManager;->access$700(Lcom/android/server/pm/StagingManager;I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v0

    .line 1367
    .local v0, "session":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1368
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->abandon()V

    .line 1370
    :cond_0
    return-void

    .line 1363
    .end local v0    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private declared-synchronized readyToStart()V
    .locals 2

    monitor-enter p0

    .line 1326
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mIsReady:Z

    .line 1327
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mPendingSessionIds:Landroid/util/IntArray;

    if-eqz v0, :cond_1

    .line 1328
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mPendingSessionIds:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1329
    iget-object v1, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mPendingSessionIds:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->get(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->startPreRebootVerification(I)V

    .line 1328
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1331
    .end local v0    # "i":I
    .end local p0    # "this":Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mPendingSessionIds:Landroid/util/IntArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1333
    :cond_1
    monitor-exit p0

    return-void

    .line 1325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized startPreRebootVerification(I)V
    .locals 5
    .param p1, "sessionId"    # I

    monitor-enter p0

    .line 1337
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mIsReady:Z

    if-nez v0, :cond_1

    .line 1338
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mPendingSessionIds:Landroid/util/IntArray;

    if-nez v0, :cond_0

    .line 1339
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mPendingSessionIds:Landroid/util/IntArray;

    .line 1341
    .end local p0    # "this":Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mPendingSessionIds:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1342
    monitor-exit p0

    return-void

    .line 1345
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->this$0:Lcom/android/server/pm/StagingManager;

    invoke-static {v0, p1}, Lcom/android/server/pm/StagingManager;->access$700(Lcom/android/server/pm/StagingManager;I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v0

    .line 1346
    .local v0, "session":Lcom/android/server/pm/PackageInstallerSession;
    iget-object v1, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mVerificationRunning:Landroid/util/SparseBooleanArray;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1348
    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 1351
    :cond_2
    const-string v2, "StagingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting preRebootVerification for session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    iget-object v2, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mVerificationRunning:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1353
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1354
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0, v3, p1, v1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1355
    monitor-exit p0

    return-void

    .line 1353
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 1349
    :cond_3
    :goto_0
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void

    .line 1353
    .restart local p0    # "this":Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;
    :catchall_1
    move-exception v2

    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1336
    .end local v0    # "session":Lcom/android/server/pm/PackageInstallerSession;
    .end local p0    # "this":Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;
    .end local p1    # "sessionId":I
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1296
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1297
    .local v0, "sessionId":I
    iget-object v1, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->this$0:Lcom/android/server/pm/StagingManager;

    invoke-static {v1, v0}, Lcom/android/server/pm/StagingManager;->access$700(Lcom/android/server/pm/StagingManager;I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v1

    .line 1298
    .local v1, "session":Lcom/android/server/pm/PackageInstallerSession;
    if-nez v1, :cond_0

    .line 1299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session disappeared in the middle of pre-reboot verification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StagingManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    return-void

    .line 1303
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1305
    invoke-direct {p0, v0}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->onPreRebootVerificationComplete(I)V

    .line 1306
    return-void

    .line 1308
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 1319
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->handlePreRebootVerification_End(Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_0

    .line 1316
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->handlePreRebootVerification_Apk(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1317
    goto :goto_0

    .line 1313
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->handlePreRebootVerification_Apex(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1314
    goto :goto_0

    .line 1310
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->handlePreRebootVerification_Start(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1311
    nop

    .line 1322
    :goto_0
    return-void
.end method
