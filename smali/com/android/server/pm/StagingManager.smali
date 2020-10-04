.class public Lcom/android/server/pm/StagingManager;
.super Ljava/lang/Object;
.source "StagingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/StagingManager$LocalIntentReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StagingManager"


# instance fields
.field private final mApexManager:Lcom/android/server/pm/ApexManager;

.field private final mBgHandler:Landroid/os/Handler;

.field private final mPi:Lcom/android/server/pm/PackageInstallerService;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mStagedSessions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStagedSessions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/ApexManager;Landroid/content/Context;)V
    .locals 1
    .param p1, "pi"    # Lcom/android/server/pm/PackageInstallerService;
    .param p2, "am"    # Lcom/android/server/pm/ApexManager;
    .param p3, "context"    # Landroid/content/Context;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    .line 80
    iput-object p1, p0, Lcom/android/server/pm/StagingManager;->mPi:Lcom/android/server/pm/PackageInstallerService;

    .line 81
    iput-object p2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 82
    const-string/jumbo v0, "power"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/pm/StagingManager;->mPowerManager:Landroid/os/PowerManager;

    .line 83
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/StagingManager;->mBgHandler:Landroid/os/Handler;

    .line 84
    return-void
.end method

.method private checkStateAndResume(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 2
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 643
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 645
    return-void

    .line 648
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionFailed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionApplied()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 652
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionReady()Z

    move-result v0

    if-nez v0, :cond_2

    .line 655
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$StagingManager$P2Wce7WbRVyHPDejgMPiovUuc0M;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/-$$Lambda$StagingManager$P2Wce7WbRVyHPDejgMPiovUuc0M;-><init>(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 659
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->resumeSession(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 661
    :goto_0
    return-void

    .line 650
    :cond_3
    :goto_1
    return-void
.end method

.method private commitApkSession(Lcom/android/server/pm/PackageInstallerSession;IZ)Z
    .locals 6
    .param p1, "apkSession"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "originalSessionId"    # I
    .param p3, "preReboot"    # Z

    .line 434
    if-nez p3, :cond_0

    .line 435
    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 438
    nop

    .line 439
    const-string/jumbo v0, "rollback"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 438
    invoke-static {v0}, Landroid/content/rollback/IRollbackManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/rollback/IRollbackManager;

    move-result-object v0

    .line 441
    .local v0, "rm":Landroid/content/rollback/IRollbackManager;
    :try_start_0
    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-interface {v0, p2, v1}, Landroid/content/rollback/IRollbackManager;->notifyStagedApkSession(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    goto :goto_0

    .line 442
    :catch_0
    move-exception v1

    .line 448
    .end local v0    # "rm":Landroid/content/rollback/IRollbackManager;
    :cond_0
    :goto_0
    new-instance v0, Lcom/android/server/pm/StagingManager$LocalIntentReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/pm/StagingManager$LocalIntentReceiver;-><init>(Lcom/android/server/pm/StagingManager$1;)V

    .line 449
    .local v0, "receiver":Lcom/android/server/pm/StagingManager$LocalIntentReceiver;
    invoke-virtual {v0}, Lcom/android/server/pm/StagingManager$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->commit(Landroid/content/IntentSender;Z)V

    .line 450
    invoke-virtual {v0}, Lcom/android/server/pm/StagingManager$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v1

    .line 451
    .local v1, "result":Landroid/content/Intent;
    const/4 v3, 0x1

    const-string v4, "android.content.pm.extra.STATUS"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 453
    .local v4, "status":I
    if-nez v4, :cond_1

    .line 454
    return v3

    .line 456
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure to install APK staged session "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    const-string v5, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 456
    const-string v5, "StagingManager"

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    return v2
.end method

.method private createAndWriteApkSession(Lcom/android/server/pm/PackageInstallerSession;Z)Lcom/android/server/pm/PackageInstallerSession;
    .locals 20
    .param p1, "originalSession"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "preReboot"    # Z

    .line 386
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    const/4 v3, 0x0

    const-string v4, "StagingManager"

    if-nez v0, :cond_0

    .line 387
    const-string v0, "Attempting to install a staged APK session with no staging dir"

    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return-object v3

    .line 390
    :cond_0
    iget-object v0, v2, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-direct {v1, v0}, Lcom/android/server/pm/StagingManager;->findAPKsInDir(Ljava/io/File;)Ljava/util/List;

    move-result-object v5

    .line 391
    .local v5, "apkFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find staged APK in "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    return-object v3

    .line 396
    :cond_1
    iget-object v0, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->copy()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v6

    .line 397
    .local v6, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    const/4 v0, 0x0

    iput-boolean v0, v6, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 398
    iget v7, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v8, 0x200000

    or-int/2addr v7, v8

    iput v7, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 400
    if-eqz p2, :cond_2

    .line 401
    iget v7, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v8, -0x40001

    and-int/2addr v7, v8

    iput v7, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 402
    iget v7, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v8, 0x800000

    or-int/2addr v7, v8

    iput v7, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_0

    .line 404
    :cond_2
    iget v7, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v8, 0x80000

    or-int/2addr v7, v8

    iput v7, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 406
    :goto_0
    iget-object v7, v1, Lcom/android/server/pm/StagingManager;->mPi:Lcom/android/server/pm/PackageInstallerService;

    .line 407
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v8

    .line 406
    invoke-virtual {v7, v6, v8, v0}, Lcom/android/server/pm/PackageInstallerService;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v7

    .line 409
    .local v7, "apkSessionId":I
    iget-object v0, v1, Lcom/android/server/pm/StagingManager;->mPi:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v15

    .line 412
    .local v15, "apkSession":Lcom/android/server/pm/PackageInstallerSession;
    :try_start_0
    invoke-virtual {v15}, Lcom/android/server/pm/PackageInstallerSession;->open()V

    .line 413
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v12, v8

    .line 414
    .local v12, "apkFilePath":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v13, v8

    .line 415
    .local v13, "apkFile":Ljava/io/File;
    const/high16 v8, 0x10000000

    invoke-static {v13, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v14

    .line 417
    .local v14, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v8

    move-wide/from16 v16, v8

    .line 418
    .local v16, "sizeBytes":J
    const-wide/16 v8, 0x0

    cmp-long v8, v16, v8

    if-gez v8, :cond_3

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to get size of: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-object v3

    .line 422
    :cond_3
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-wide/16 v10, 0x0

    move-object v8, v15

    move-object/from16 v18, v12

    move-object/from16 v19, v13

    .end local v12    # "apkFilePath":Ljava/lang/String;
    .end local v13    # "apkFile":Ljava/io/File;
    .local v18, "apkFilePath":Ljava/lang/String;
    .local v19, "apkFile":Ljava/io/File;
    move-wide/from16 v12, v16

    invoke-virtual/range {v8 .. v14}, Lcom/android/server/pm/PackageInstallerSession;->write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    .end local v14    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v16    # "sizeBytes":J
    .end local v18    # "apkFilePath":Ljava/lang/String;
    .end local v19    # "apkFile":Ljava/io/File;
    goto :goto_1

    .line 427
    :cond_4
    nop

    .line 428
    return-object v15

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failure to install APK staged session "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 426
    return-object v3
.end method

.method private findAPKsInDir(Ljava/io/File;)Ljava/util/List;
    .locals 7
    .param p1, "stageDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 375
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 376
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 377
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    .end local v4    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 381
    :cond_1
    return-object v0
.end method

.method private installApksInSession(Lcom/android/server/pm/PackageInstallerSession;Z)Z
    .locals 10
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "preReboot"    # Z

    .line 463
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/server/pm/StagingManager;->isApexSession(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 465
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/StagingManager;->createAndWriteApkSession(Lcom/android/server/pm/PackageInstallerSession;Z)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v0

    .line 466
    .local v0, "apkSession":Lcom/android/server/pm/PackageInstallerSession;
    if-nez v0, :cond_0

    .line 467
    return v1

    .line 469
    :cond_0
    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/pm/StagingManager;->commitApkSession(Lcom/android/server/pm/PackageInstallerSession;IZ)Z

    move-result v1

    return v1

    .line 470
    .end local v0    # "apkSession":Lcom/android/server/pm/PackageInstallerSession;
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 476
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 477
    nop

    .line 478
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIds()[I

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v3

    new-instance v4, Lcom/android/server/pm/-$$Lambda$StagingManager$SBQcrV7wm5jyjLxIITacOTLs_k4;

    invoke-direct {v4, p0}, Lcom/android/server/pm/-$$Lambda$StagingManager$SBQcrV7wm5jyjLxIITacOTLs_k4;-><init>(Lcom/android/server/pm/StagingManager;)V

    .line 480
    invoke-interface {v3, v4}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/android/server/pm/-$$Lambda$StagingManager$W4xn2etqxcpB6KS2WmEUcUMWK4M;->INSTANCE:Lcom/android/server/pm/-$$Lambda$StagingManager$W4xn2etqxcpB6KS2WmEUcUMWK4M;

    .line 482
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 483
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 484
    .local v3, "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 487
    return v2

    .line 489
    :cond_2
    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->copy()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v0

    .line 490
    .local v0, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 491
    if-eqz p2, :cond_3

    .line 492
    iget v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v4, -0x40001

    and-int/2addr v2, v4

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 495
    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mPi:Lcom/android/server/pm/PackageInstallerService;

    .line 496
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v4

    .line 495
    invoke-virtual {v2, v0, v4, v1}, Lcom/android/server/pm/PackageInstallerService;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v2

    .line 498
    .local v2, "apkParentSessionId":I
    iget-object v4, p0, Lcom/android/server/pm/StagingManager;->mPi:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v4, v2}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v4

    .line 500
    .local v4, "apkParentSession":Lcom/android/server/pm/PackageInstallerSession;
    :try_start_1
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->open()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 505
    nop

    .line 507
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageInstallerSession;

    .line 508
    .local v6, "sessionToClone":Lcom/android/server/pm/PackageInstallerSession;
    nop

    .line 509
    invoke-direct {p0, v6, p2}, Lcom/android/server/pm/StagingManager;->createAndWriteApkSession(Lcom/android/server/pm/PackageInstallerSession;Z)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v7

    .line 510
    .local v7, "apkChildSession":Lcom/android/server/pm/PackageInstallerSession;
    if-nez v7, :cond_4

    .line 511
    return v1

    .line 514
    :cond_4
    :try_start_2
    iget v8, v7, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v4, v8}, Lcom/android/server/pm/PackageInstallerSession;->addChildSessionId(I)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 518
    nop

    .line 519
    .end local v6    # "sessionToClone":Lcom/android/server/pm/PackageInstallerSession;
    .end local v7    # "apkChildSession":Lcom/android/server/pm/PackageInstallerSession;
    goto :goto_0

    .line 515
    .restart local v6    # "sessionToClone":Lcom/android/server/pm/PackageInstallerSession;
    .restart local v7    # "apkChildSession":Lcom/android/server/pm/PackageInstallerSession;
    :catch_0
    move-exception v5

    .line 516
    .local v5, "e":Ljava/lang/IllegalStateException;
    const-string v8, "StagingManager"

    const-string v9, "Failed to add a child session for installing the APK files"

    invoke-static {v8, v9, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 517
    return v1

    .line 520
    .end local v5    # "e":Ljava/lang/IllegalStateException;
    .end local v6    # "sessionToClone":Lcom/android/server/pm/PackageInstallerSession;
    .end local v7    # "apkChildSession":Lcom/android/server/pm/PackageInstallerSession;
    :cond_5
    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-direct {p0, v4, v1, p2}, Lcom/android/server/pm/StagingManager;->commitApkSession(Lcom/android/server/pm/PackageInstallerSession;IZ)Z

    move-result v1

    return v1

    .line 501
    :catch_1
    move-exception v5

    .line 502
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to prepare multi-package session for staged session "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "StagingManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    return v1

    .line 484
    .end local v0    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v2    # "apkParentSessionId":I
    .end local v3    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .end local v4    # "apkParentSession":Lcom/android/server/pm/PackageInstallerSession;
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 523
    :cond_6
    return v2
.end method

.method private static isApexSession(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 2
    .param p0, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 199
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isApexSessionFailed(Landroid/apex/ApexSessionInfo;)Z
    .locals 1
    .param p0, "apexSessionInfo"    # Landroid/apex/ApexSessionInfo;

    .line 592
    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isRolledBack:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isRollbackInProgress:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isRollbackFailed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isApexSessionFinalized(Landroid/apex/ApexSessionInfo;)Z
    .locals 1
    .param p1, "session"    # Landroid/apex/ApexSessionInfo;

    .line 585
    iget-boolean v0, p1, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Landroid/apex/ApexSessionInfo;->isRolledBack:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isMultiPackageSessionComplete(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 6
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStagedSessions"
        }
    .end annotation

    .line 602
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 604
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIds()[I

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    .line 605
    .local v4, "childSession":I
    iget-object v5, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 606
    return v1

    .line 604
    .end local v4    # "childSession":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 609
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 611
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 612
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    .line 613
    .local v0, "parent":Lcom/android/server/pm/PackageInstallerSession;
    if-nez v0, :cond_3

    .line 614
    return v1

    .line 616
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/pm/StagingManager;->isMultiPackageSessionComplete(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v1

    return v1

    .line 618
    .end local v0    # "parent":Lcom/android/server/pm/PackageInstallerSession;
    :cond_4
    const-string v0, "StagingManager"

    const-string v2, "Attempting to restore an invalid multi-package session."

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    return v1
.end method

.method static synthetic lambda$installApksInSession$9(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 1
    .param p0, "childSession"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 482
    invoke-static {p0}, Lcom/android/server/pm/StagingManager;->isApexSession(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$preRebootVerification$2(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 1
    .param p0, "childSession"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 218
    invoke-static {p0}, Lcom/android/server/pm/StagingManager;->isApexSession(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$sessionContains$4(Ljava/util/function/Predicate;Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 1
    .param p0, "filter"    # Ljava/util/function/Predicate;
    .param p1, "childSession"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 296
    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$sessionContainsApex$5(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 1
    .param p0, "s"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 303
    invoke-static {p0}, Lcom/android/server/pm/StagingManager;->isApexSession(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$sessionContainsApk$6(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 1
    .param p0, "s"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 307
    invoke-static {p0}, Lcom/android/server/pm/StagingManager;->isApexSession(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$submitSessionToApexService$0(Lcom/android/server/pm/PackageInstallerSession;)I
    .locals 1
    .param p0, "s"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 148
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    return v0
.end method

.method private preRebootVerification(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 9
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 203
    const/4 v0, 0x1

    .line 205
    .local v0, "success":Z
    new-instance v1, Landroid/apex/ApexInfoList;

    invoke-direct {v1}, Landroid/apex/ApexInfoList;-><init>()V

    .line 208
    .local v1, "apexInfoList":Landroid/apex/ApexInfoList;
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    invoke-static {p1}, Lcom/android/server/pm/StagingManager;->isApexSession(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/pm/StagingManager;->submitSessionToApexService(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/List;Landroid/apex/ApexInfoList;)Z

    move-result v0

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    nop

    .line 214
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIds()[I

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/-$$Lambda$StagingManager$BE6qQjRTVtd2eql5RkbIXPjyDYY;

    invoke-direct {v3, p0}, Lcom/android/server/pm/-$$Lambda$StagingManager$BE6qQjRTVtd2eql5RkbIXPjyDYY;-><init>(Lcom/android/server/pm/StagingManager;)V

    .line 216
    invoke-interface {v2, v3}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/server/pm/-$$Lambda$StagingManager$AgaT69AQKjTcEHdOPat7Y2rDy90;->INSTANCE:Lcom/android/server/pm/-$$Lambda$StagingManager$AgaT69AQKjTcEHdOPat7Y2rDy90;

    .line 218
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 219
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 220
    .local v2, "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 221
    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/pm/StagingManager;->submitSessionToApexService(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/List;Landroid/apex/ApexInfoList;)Z

    move-result v0

    .line 225
    .end local v2    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 227
    return-void

    .line 230
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->sessionContainsApk(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 231
    invoke-direct {p0, p1, v3}, Lcom/android/server/pm/StagingManager;->installApksInSession(Lcom/android/server/pm/PackageInstallerSession;Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 232
    const-string v2, "APK verification failed. Check logcat messages for more information."

    invoke-virtual {p1, v3, v2}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 236
    return-void

    .line 240
    :cond_3
    iget-object v2, v1, Landroid/apex/ApexInfoList;->apexInfos:[Landroid/apex/ApexInfo;

    if-eqz v2, :cond_5

    iget-object v2, v1, Landroid/apex/ApexInfoList;->apexInfos:[Landroid/apex/ApexInfo;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 245
    iget-object v2, v1, Landroid/apex/ApexInfoList;->apexInfos:[Landroid/apex/ApexInfo;

    array-length v4, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_5

    aget-object v6, v2, v5

    .line 246
    .local v6, "apexPackage":Landroid/apex/ApexInfo;
    iget-object v7, v6, Landroid/apex/ApexInfo;->packagePath:Ljava/lang/String;

    iget-object v8, v6, Landroid/apex/ApexInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/android/server/pm/StagingManager;->validateApexSignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APK-container signature verification failed for package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v6, Landroid/apex/ApexInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Signature of file "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v6, Landroid/apex/ApexInfo;->packagePath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not match the signature of  the package already installed."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 254
    return-void

    .line 245
    .end local v6    # "apexPackage":Landroid/apex/ApexInfo;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 259
    :cond_5
    iget-object v2, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v4, 0x40000

    and-int/2addr v2, v4

    if-eqz v2, :cond_7

    .line 263
    nop

    .line 264
    const-string/jumbo v2, "rollback"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 263
    invoke-static {v2}, Landroid/content/rollback/IRollbackManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/rollback/IRollbackManager;

    move-result-object v2

    .line 268
    .local v2, "rm":Landroid/content/rollback/IRollbackManager;
    :try_start_0
    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-interface {v2, v4}, Landroid/content/rollback/IRollbackManager;->notifyStagedSession(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 269
    const-string v4, "StagingManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to enable rollback for session: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_6
    goto :goto_2

    .line 271
    :catch_0
    move-exception v4

    .line 276
    .end local v2    # "rm":Landroid/content/rollback/IRollbackManager;
    :cond_7
    :goto_2
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionReady()V

    .line 277
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->sessionContainsApex(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 278
    invoke-virtual {v2, v4}, Lcom/android/server/pm/ApexManager;->markStagedSessionReady(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 279
    const-string v2, "APEX staging failed, check logcat messages from apexd for more details."

    invoke-virtual {p1, v3, v2}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 283
    :cond_8
    return-void
.end method

.method private resumeSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 5
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 311
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->sessionContainsApex(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    .line 312
    .local v0, "hasApex":Z
    const/4 v1, 0x2

    const-string v2, "StagingManager"

    if-eqz v0, :cond_3

    .line 314
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v3, v4}, Lcom/android/server/pm/ApexManager;->getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;

    move-result-object v3

    .line 315
    .local v3, "apexSessionInfo":Landroid/apex/ApexSessionInfo;
    if-nez v3, :cond_0

    .line 316
    const-string v2, "apexd did not know anything about a staged session supposed to beactivated"

    invoke-virtual {p1, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 319
    return-void

    .line 321
    :cond_0
    invoke-static {v3}, Lcom/android/server/pm/StagingManager;->isApexSessionFailed(Landroid/apex/ApexSessionInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 322
    const-string v2, "APEX activation failed. Check logcat messages from apexd for more information."

    invoke-virtual {p1, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 325
    return-void

    .line 327
    :cond_1
    iget-boolean v4, v3, Landroid/apex/ApexSessionInfo;->isVerified:Z

    if-eqz v4, :cond_2

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found pending staged session "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " still to be verified, resuming pre-reboot verification"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mBgHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/-$$Lambda$StagingManager$83GfAqr7qlzXNwZi6rOoUuwZb9c;

    invoke-direct {v2, p0, p1}, Lcom/android/server/pm/-$$Lambda$StagingManager$83GfAqr7qlzXNwZi6rOoUuwZb9c;-><init>(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 334
    return-void

    .line 336
    :cond_2
    iget-boolean v4, v3, Landroid/apex/ApexSessionInfo;->isActivated:Z

    if-nez v4, :cond_3

    iget-boolean v4, v3, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    if-nez v4, :cond_3

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Staged session "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " scheduled to be applied at boot didn\'t activate nor fail. This usually means that apexd will retry at next reboot."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return-void

    .line 346
    .end local v3    # "apexSessionInfo":Landroid/apex/ApexSessionInfo;
    :cond_3
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/server/pm/StagingManager;->installApksInSession(Lcom/android/server/pm/PackageInstallerSession;Z)Z

    move-result v3

    if-nez v3, :cond_6

    .line 347
    const-string v3, "Staged installation of APKs failed. Check logcat messages formore information."

    invoke-virtual {p1, v1, v3}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 351
    if-nez v0, :cond_4

    .line 352
    return-void

    .line 355
    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v1}, Lcom/android/server/pm/ApexManager;->abortActiveSession()Z

    move-result v1

    if-nez v1, :cond_5

    .line 356
    const-string v1, "Failed to abort APEXd session"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 358
    :cond_5
    const-string v1, "Successfully aborted apexd session. Rebooting device in order to revert to the previous state of APEXd."

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 363
    :goto_0
    return-void

    .line 366
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionApplied()V

    .line 367
    if-eqz v0, :cond_7

    .line 368
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ApexManager;->markStagedSessionSuccessful(I)V

    .line 370
    :cond_7
    return-void
.end method

.method private sessionContains(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/function/Predicate;)Z
    .locals 3
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageInstallerSession;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;)Z"
        }
    .end annotation

    .line 288
    .local p2, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/pm/PackageInstallerSession;>;"
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    invoke-interface {p2, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 292
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIds()[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/-$$Lambda$StagingManager$zPvhMKF7o6jzlVNzE42Fq_qJt9I;

    invoke-direct {v2, p0}, Lcom/android/server/pm/-$$Lambda$StagingManager$zPvhMKF7o6jzlVNzE42Fq_qJt9I;-><init>(Lcom/android/server/pm/StagingManager;)V

    .line 294
    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/-$$Lambda$StagingManager$lOH9gVOKGitWaFqixZa09s5PphU;

    invoke-direct {v2, p2}, Lcom/android/server/pm/-$$Lambda$StagingManager$lOH9gVOKGitWaFqixZa09s5PphU;-><init>(Ljava/util/function/Predicate;)V

    .line 296
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 297
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 298
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    .line 292
    return v1

    .line 299
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sessionContainsApex(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 1
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 303
    sget-object v0, Lcom/android/server/pm/-$$Lambda$StagingManager$HJyijsQNJwcPQ10-2tU6415xlVo;->INSTANCE:Lcom/android/server/pm/-$$Lambda$StagingManager$HJyijsQNJwcPQ10-2tU6415xlVo;

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/StagingManager;->sessionContains(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method private sessionContainsApk(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 1
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 307
    sget-object v0, Lcom/android/server/pm/-$$Lambda$StagingManager$j1RpPmMrsxcldNpyt2n2wcJbVA0;->INSTANCE:Lcom/android/server/pm/-$$Lambda$StagingManager$j1RpPmMrsxcldNpyt2n2wcJbVA0;

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/StagingManager;->sessionContains(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method private submitSessionToApexService(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/List;Landroid/apex/ApexInfoList;)Z
    .locals 18
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p3, "apexInfoList"    # Landroid/apex/ApexInfoList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageInstallerSession;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;",
            "Landroid/apex/ApexInfoList;",
            ")Z"
        }
    .end annotation

    .line 145
    .local p2, "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    iget-object v3, v0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget v4, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 147
    const/4 v5, 0x0

    if-eqz p2, :cond_0

    .line 148
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    sget-object v7, Lcom/android/server/pm/-$$Lambda$StagingManager$ox-u05b9FQec8uLfg6h5LkmV4gk;->INSTANCE:Lcom/android/server/pm/-$$Lambda$StagingManager$ox-u05b9FQec8uLfg6h5LkmV4gk;

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v6

    goto :goto_0

    .line 149
    :cond_0
    new-array v6, v5, [I

    .line 145
    :goto_0
    invoke-virtual {v3, v4, v6, v2}, Lcom/android/server/pm/ApexManager;->submitStagedSession(I[ILandroid/apex/ApexInfoList;)Z

    move-result v3

    .line 151
    .local v3, "submittedToApexd":Z
    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 152
    const-string v6, "APEX staging failed, check logcat messages from apexd for more details."

    invoke-virtual {v1, v4, v6}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 155
    return v5

    .line 157
    :cond_1
    iget-object v6, v2, Landroid/apex/ApexInfoList;->apexInfos:[Landroid/apex/ApexInfo;

    array-length v7, v6

    move v8, v5

    :goto_1
    if-ge v8, v7, :cond_8

    aget-object v9, v6, v8

    .line 158
    .local v9, "newPackage":Landroid/apex/ApexInfo;
    iget-object v10, v0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget-object v11, v9, Landroid/apex/ApexInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/server/pm/ApexManager;->getPackageInfoForApexName(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 160
    .local v10, "activePackage":Landroid/content/pm/PackageInfo;
    if-nez v10, :cond_2

    .line 161
    move v4, v5

    move-object/from16 v17, v6

    goto/16 :goto_2

    .line 163
    :cond_2
    iget-object v11, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v11, v11, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 164
    .local v11, "activeVersion":J
    iget-object v13, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v13, v13, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    const-wide/16 v15, -0x1

    cmp-long v13, v13, v15

    const-string v14, "Failed to abort apex session "

    const-string v15, "StagingManager"

    if-eqz v13, :cond_4

    .line 166
    iget-object v13, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    move-object/from16 v17, v6

    iget-wide v5, v13, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    cmp-long v5, v11, v5

    if-eqz v5, :cond_5

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Installed version of APEX package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v9, Landroid/apex/ApexInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " does not match required. Active version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " required: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v6, v6, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 173
    iget-object v4, v0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v4}, Lcom/android/server/pm/ApexManager;->abortActiveSession()Z

    move-result v4

    if-nez v4, :cond_3

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_3
    const/4 v4, 0x0

    return v4

    .line 164
    :cond_4
    move-object/from16 v17, v6

    .line 180
    :cond_5
    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iget-object v6, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->isDowngradePermitted(II)Z

    move-result v5

    .line 182
    .local v5, "allowsDowngrade":Z
    move v13, v5

    .end local v5    # "allowsDowngrade":Z
    .local v13, "allowsDowngrade":Z
    iget-wide v4, v9, Landroid/apex/ApexInfo;->versionCode:J

    cmp-long v4, v11, v4

    if-lez v4, :cond_7

    if-nez v13, :cond_7

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Downgrade of APEX package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Landroid/apex/ApexInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not allowed. Active version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " attempted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v9, Landroid/apex/ApexInfo;->versionCode:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v4}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 189
    iget-object v4, v0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v4}, Lcom/android/server/pm/ApexManager;->abortActiveSession()Z

    move-result v4

    if-nez v4, :cond_6

    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_6
    const/4 v4, 0x0

    return v4

    .line 182
    :cond_7
    const/4 v4, 0x0

    .line 157
    .end local v9    # "newPackage":Landroid/apex/ApexInfo;
    .end local v10    # "activePackage":Landroid/content/pm/PackageInfo;
    .end local v11    # "activeVersion":J
    .end local v13    # "allowsDowngrade":Z
    :goto_2
    add-int/lit8 v8, v8, 0x1

    move v5, v4

    move-object/from16 v6, v17

    const/4 v4, 0x1

    goto/16 :goto_1

    .line 195
    :cond_8
    const/4 v4, 0x1

    return v4
.end method

.method private updateStoredSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 4
    .param p1, "sessionInfo"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 87
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 91
    .local v1, "storedSession":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v1, :cond_0

    .line 92
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    .end local v1    # "storedSession":Lcom/android/server/pm/PackageInstallerSession;
    :cond_0
    monitor-exit v0

    .line 95
    return-void

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private validateApexSignature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "apexPath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 110
    const-string v0, "Unable to parse APEX package: "

    const-string v1, "StagingManager"

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1, v2}, Landroid/util/apk/ApkSignatureVerifier;->verify(Ljava/lang/String;I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 114
    .local v4, "signingDetails":Landroid/content/pm/PackageParser$SigningDetails;
    nop

    .line 116
    iget-object v5, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v5, p2}, Lcom/android/server/pm/ApexManager;->getPackageInfoForApexName(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 118
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v5, :cond_0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to install a new apex "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Rejecting"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return v3

    .line 126
    :cond_0
    :try_start_1
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v6, v2}, Landroid/util/apk/ApkSignatureVerifier;->verify(Ljava/lang/String;I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 132
    .local v0, "existingSigningDetails":Landroid/content/pm/PackageParser$SigningDetails;
    nop

    .line 135
    iget-object v1, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iget-object v6, v4, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v1, v6}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    return v2

    .line 139
    :cond_1
    return v3

    .line 128
    .end local v0    # "existingSigningDetails":Landroid/content/pm/PackageParser$SigningDetails;
    :catch_0
    move-exception v2

    .line 129
    .local v2, "e":Landroid/content/pm/PackageParser$PackageParserException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    return v3

    .line 111
    .end local v2    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .end local v4    # "signingDetails":Landroid/content/pm/PackageParser$SigningDetails;
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v2

    .line 112
    .restart local v2    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    return v3
.end method


# virtual methods
.method abortCommittedSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 4
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 565
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionApplied()Z

    move-result v0

    const-string v1, "StagingManager"

    if-eqz v0, :cond_0

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot abort applied session : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    return-void

    .line 569
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->abortSession(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 571
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->sessionContainsApex(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    .line 572
    .local v0, "hasApex":Z
    if-eqz v0, :cond_3

    .line 573
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ApexManager;->getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;

    move-result-object v2

    .line 574
    .local v2, "apexSession":Landroid/apex/ApexSessionInfo;
    if-eqz v2, :cond_2

    invoke-direct {p0, v2}, Lcom/android/server/pm/StagingManager;->isApexSessionFinalized(Landroid/apex/ApexSessionInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 579
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v1}, Lcom/android/server/pm/ApexManager;->abortActiveSession()Z

    goto :goto_1

    .line 575
    :cond_2
    :goto_0
    const-string v3, "Cannot abort session because it is not active or APEXD is not reachable"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    return-void

    .line 581
    .end local v2    # "apexSession":Landroid/apex/ApexSessionInfo;
    :cond_3
    :goto_1
    return-void
.end method

.method abortSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 3
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 559
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 560
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 561
    monitor-exit v0

    .line 562
    return-void

    .line 561
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method commitSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 2
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 527
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->updateStoredSession(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 528
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$StagingManager$oTjNN2Q2v9Dr5k3q884ZdgcuSqA;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/-$$Lambda$StagingManager$oTjNN2Q2v9Dr5k3q884ZdgcuSqA;-><init>(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 529
    return-void
.end method

.method createSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 3
    .param p1, "sessionInfo"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 553
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 554
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 555
    monitor-exit v0

    .line 556
    return-void

    .line 555
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getActiveSession()Lcom/android/server/pm/PackageInstallerSession;
    .locals 4

    .line 533
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 534
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 535
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    .line 536
    .local v2, "session":Lcom/android/server/pm/PackageInstallerSession;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 537
    goto :goto_1

    .line 539
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 542
    goto :goto_1

    .line 544
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionApplied()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionFailed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 545
    monitor-exit v0

    return-object v2

    .line 534
    .end local v2    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 548
    .end local v1    # "i":I
    :cond_3
    monitor-exit v0

    .line 549
    const/4 v0, 0x0

    return-object v0

    .line 548
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getSessions()Landroid/content/pm/ParceledListSlice;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v1

    .line 100
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 101
    iget-object v4, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v4, v2}, Lcom/android/server/pm/PackageInstallerSession;->generateInfo(Z)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    .end local v3    # "i":I
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1

    .line 103
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public synthetic lambda$checkStateAndResume$11$StagingManager(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 655
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->preRebootVerification(Lcom/android/server/pm/PackageInstallerSession;)V

    return-void
.end method

.method public synthetic lambda$commitSession$10$StagingManager(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 528
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->preRebootVerification(Lcom/android/server/pm/PackageInstallerSession;)V

    return-void
.end method

.method public synthetic lambda$installApksInSession$8$StagingManager(I)Lcom/android/server/pm/PackageInstallerSession;
    .locals 1
    .param p1, "i"    # I

    .line 480
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    return-object v0
.end method

.method public synthetic lambda$preRebootVerification$1$StagingManager(I)Lcom/android/server/pm/PackageInstallerSession;
    .locals 1
    .param p1, "i"    # I

    .line 216
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    return-object v0
.end method

.method public synthetic lambda$resumeSession$7$StagingManager(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 333
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->preRebootVerification(Lcom/android/server/pm/PackageInstallerSession;)V

    return-void
.end method

.method public synthetic lambda$sessionContains$3$StagingManager(I)Lcom/android/server/pm/PackageInstallerSession;
    .locals 1
    .param p1, "i"    # I

    .line 294
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    return-object v0
.end method

.method restoreSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 4
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 623
    move-object v0, p1

    .line 624
    .local v0, "sessionToResume":Lcom/android/server/pm/PackageInstallerSession;
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v1

    .line 625
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 628
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 629
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->isMultiPackageSessionComplete(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 631
    monitor-exit v1

    return-void

    .line 634
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 635
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    move-object v0, v2

    .line 638
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    invoke-direct {p0, v0}, Lcom/android/server/pm/StagingManager;->checkStateAndResume(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 640
    return-void

    .line 638
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
