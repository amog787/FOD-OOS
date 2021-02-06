.class public Lcom/android/server/pm/StagingManager;
.super Ljava/lang/Object;
.source "StagingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;,
        Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;,
        Lcom/android/server/pm/StagingManager$LocalIntentReceiverAsync;,
        Lcom/android/server/pm/StagingManager$Lifecycle;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StagingManager"


# instance fields
.field private final mApexManager:Lcom/android/server/pm/ApexManager;

.field private final mContext:Landroid/content/Context;

.field private final mFailedPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFailureReason:Ljava/lang/String;

.field private final mFailureReasonFile:Ljava/io/File;

.field private mNativeFailureReason:Ljava/lang/String;

.field private final mPackageParserSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            ">;"
        }
    .end annotation
.end field

.field private final mPi:Lcom/android/server/pm/PackageInstallerService;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mPreRebootVerificationHandler:Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

.field private final mSessionRollbackIds:Landroid/util/SparseIntArray;

.field private final mStagedSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuccessfulStagedSessionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerService;Landroid/content/Context;Ljava/util/function/Supplier;)V
    .locals 3
    .param p1, "pi"    # Lcom/android/server/pm/PackageInstallerService;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageInstallerService;",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            ">;)V"
        }
    .end annotation

    .line 126
    .local p3, "packageParserSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/pm/parsing/PackageParser2;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/io/File;

    const-string v1, "/metadata/staged-install/failure_reason.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailureReasonFile:Ljava/io/File;

    .line 112
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    .line 115
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/StagingManager;->mSessionRollbackIds:Landroid/util/SparseIntArray;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    .line 127
    iput-object p1, p0, Lcom/android/server/pm/StagingManager;->mPi:Lcom/android/server/pm/PackageInstallerService;

    .line 128
    iput-object p2, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    .line 129
    iput-object p3, p0, Lcom/android/server/pm/StagingManager;->mPackageParserSupplier:Ljava/util/function/Supplier;

    .line 131
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 132
    const-string/jumbo v0, "power"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/pm/StagingManager;->mPowerManager:Landroid/os/PowerManager;

    .line 133
    new-instance v0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    .line 134
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;-><init>(Lcom/android/server/pm/StagingManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/StagingManager;->mPreRebootVerificationHandler:Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    .line 136
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailureReasonFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mFailureReasonFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/StagingManager;->mFailureReason:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 137
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/pm/StagingManager;
    .end local p1    # "pi":Lcom/android/server/pm/PackageInstallerService;
    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "packageParserSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/pm/parsing/PackageParser2;>;"
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 139
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .restart local p0    # "this":Lcom/android/server/pm/StagingManager;
    .restart local p1    # "pi":Lcom/android/server/pm/PackageInstallerService;
    .restart local p2    # "context":Landroid/content/Context;
    .restart local p3    # "packageParserSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/pm/parsing/PackageParser2;>;"
    :catch_0
    move-exception v0

    .line 141
    :cond_0
    :goto_1
    return-void
.end method

.method private abortCheckpoint(ILjava/lang/String;)V
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to install sessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "failureReason":Ljava/lang/String;
    const-string v1, "StagingManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/StagingManager;->supportsCheckpoint()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/pm/StagingManager;->needsCheckpoint()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_1

    .line 391
    :try_start_1
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    iget-object v4, p0, Lcom/android/server/pm/StagingManager;->mFailureReasonFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 393
    .local v2, "writer":Ljava/io/BufferedWriter;
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 394
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 396
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    goto :goto_1

    .line 391
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "failureReason":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/pm/StagingManager;
    .end local p1    # "sessionId":I
    .end local p2    # "errorMsg":Ljava/lang/String;
    :goto_0
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 394
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v0    # "failureReason":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/pm/StagingManager;
    .restart local p1    # "sessionId":I
    .restart local p2    # "errorMsg":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 395
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v3, "Failed to save failure reason: "

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v2}, Lcom/android/server/pm/ApexManager;->isApexSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 400
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v2}, Lcom/android/server/pm/ApexManager;->revertActiveSessions()Z

    .line 402
    :cond_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v2

    const-string v3, "StagingManager initiated"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/storage/IStorageManager;->abortChanges(Ljava/lang/String;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 412
    :cond_1
    goto :goto_2

    .line 405
    :catch_1
    move-exception v2

    .line 406
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v3, "Failed to abort checkpoint"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v1}, Lcom/android/server/pm/ApexManager;->isApexSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 409
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v1}, Lcom/android/server/pm/ApexManager;->revertActiveSessions()Z

    .line 411
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 413
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager;
    .param p1, "x1"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->sessionContainsApex(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager;
    .param p1, "x1"    # Lcom/android/server/pm/PackageInstallerSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->submitSessionToApexService(Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/pm/StagingManager;Landroid/content/pm/PackageInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager;
    .param p1, "x1"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->validateApexSignature(Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager;
    .param p1, "x1"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->sessionContainsApk(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager;
    .param p1, "x1"    # Lcom/android/server/pm/PackageInstallerSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->verifyApksInSession(Lcom/android/server/pm/PackageInstallerSession;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/pm/StagingManager;)Lcom/android/server/pm/ApexManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager;

    .line 98
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/StagingManager;)Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager;

    .line 98
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mPreRebootVerificationHandler:Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/pm/StagingManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager;

    .line 98
    invoke-direct {p0}, Lcom/android/server/pm/StagingManager;->logFailedApexSessionsIfNecessary()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/pm/StagingManager;I)Lcom/android/server/pm/PackageInstallerSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager;
    .param p1, "x1"    # I

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->getStagedSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/StagingManager;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager;

    .line 98
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/pm/StagingManager;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager;

    .line 98
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mSessionRollbackIds:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method private checkDowngrade(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)V
    .locals 10
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "activePackage"    # Landroid/content/pm/PackageInfo;
    .param p3, "newPackage"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 335
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v0, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 336
    .local v0, "activeVersion":J
    iget-object v2, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v2, v2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 337
    .local v2, "newVersionCode":J
    iget-object v4, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 339
    .local v4, "isAppDebuggable":Z
    :goto_0
    iget-object v6, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v6, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-static {v6, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->isDowngradePermitted(IZ)Z

    move-result v6

    .line 341
    .local v6, "allowsDowngrade":Z
    cmp-long v7, v0, v2

    if-lez v7, :cond_2

    if-nez v6, :cond_2

    .line 342
    iget-object v7, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget v8, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v7, v8}, Lcom/android/server/pm/ApexManager;->abortStagedSession(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 343
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to abort apex session "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "StagingManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_1
    new-instance v7, Lcom/android/server/pm/PackageManagerException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Downgrade of APEX package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is not allowed. Active version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " attempted: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 351
    :cond_2
    return-void
.end method

.method private checkInstallationOfApkInApexSuccessful(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 7
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 458
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->extractApexSessions(Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/List;

    move-result-object v0

    .line 459
    .local v0, "apexSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    return-void

    .line 463
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    .line 464
    .local v2, "apexSession":Lcom/android/server/pm/PackageInstallerSession;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 465
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ApexManager;->isApkInApexInstallSuccess(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 469
    .end local v2    # "apexSession":Lcom/android/server/pm/PackageInstallerSession;
    .end local v3    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 466
    .restart local v2    # "apexSession":Lcom/android/server/pm/PackageInstallerSession;
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to install apk-in-apex of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 470
    .end local v2    # "apexSession":Lcom/android/server/pm/PackageInstallerSession;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private checkRequiredVersionCode(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/PackageInfo;)V
    .locals 7
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "activePackage"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 316
    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 317
    return-void

    .line 319
    :cond_0
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v0, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 320
    .local v0, "activeVersion":J
    iget-object v2, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 321
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ApexManager;->abortStagedSession(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to abort apex session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StagingManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_1
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Installed version of APEX package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not match required. Active version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " required: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 330
    :cond_2
    return-void
.end method

.method private checkStateAndResume(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 2
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 1145
    const-string/jumbo v0, "sys.boot_completed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1146
    return-void

    .line 1149
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1151
    return-void

    .line 1154
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionFailed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionApplied()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 1158
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1160
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->abandon()V

    .line 1161
    return-void

    .line 1163
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionReady()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1166
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mPreRebootVerificationHandler:Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {v0, v1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->access$000(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;I)V

    goto :goto_0

    .line 1170
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->resumeSession(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1172
    :goto_0
    return-void

    .line 1156
    :cond_5
    :goto_1
    return-void
.end method

.method private createAndWriteApkSession(Lcom/android/server/pm/PackageInstallerSession;Z)Lcom/android/server/pm/PackageInstallerSession;
    .locals 23
    .param p1, "originalSession"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "preReboot"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 729
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "Unable to get size of: "

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 730
    :cond_0
    const/4 v3, 0x2

    :goto_0
    nop

    .line 731
    .local v3, "errorCode":I
    iget-object v4, v2, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    const-string v5, "StagingManager"

    if-eqz v4, :cond_6

    .line 736
    iget-object v4, v2, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-direct {v1, v4}, Lcom/android/server/pm/StagingManager;->findAPKsInDir(Ljava/io/File;)Ljava/util/List;

    move-result-object v4

    .line 737
    .local v4, "apkFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 743
    iget-object v6, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v6}, Landroid/content/pm/PackageInstaller$SessionParams;->copy()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v6

    .line 744
    .local v6, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 745
    iget v8, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v9, 0x200000

    or-int/2addr v8, v9

    iput v8, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 747
    if-eqz p2, :cond_1

    .line 748
    iget v8, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v9, -0x40001

    and-int/2addr v8, v9

    iput v8, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 749
    iget v8, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v9, 0x800000

    or-int/2addr v8, v9

    iput v8, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_1

    .line 751
    :cond_1
    iget v8, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v9, 0x80000

    or-int/2addr v8, v9

    iput v8, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 754
    :goto_1
    :try_start_0
    iget-object v8, v1, Lcom/android/server/pm/StagingManager;->mPi:Lcom/android/server/pm/PackageInstallerService;

    .line 755
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v9

    .line 754
    invoke-virtual {v8, v6, v9, v7}, Lcom/android/server/pm/PackageInstallerService;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v7

    .line 757
    .local v7, "apkSessionId":I
    iget-object v8, v1, Lcom/android/server/pm/StagingManager;->mPi:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v8, v7}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v8

    .line 758
    .local v8, "apkSession":Lcom/android/server/pm/PackageInstallerSession;
    invoke-virtual {v8}, Lcom/android/server/pm/PackageInstallerSession;->open()V

    .line 759
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    move v15, v10

    move v13, v9

    .end local v9    # "i":I
    .local v13, "i":I
    .local v15, "size":I
    :goto_2
    if-ge v13, v15, :cond_4

    .line 760
    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v14, v9

    .line 761
    .local v14, "apkFilePath":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v11, v9

    .line 762
    .local v11, "apkFile":Ljava/io/File;
    const/high16 v9, 0x10000000

    invoke-static {v11, v9}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    move-object/from16 v16, v9

    .line 764
    .local v16, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v16, :cond_2

    const-wide/16 v9, -0x1

    goto :goto_3

    :cond_2
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v9

    :goto_3
    move-wide/from16 v17, v9

    .line 765
    .local v17, "sizeBytes":J
    const-wide/16 v9, 0x0

    cmp-long v9, v17, v9

    if-ltz v9, :cond_3

    .line 770
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-wide/16 v19, 0x0

    move-object v9, v8

    move-object/from16 v21, v11

    .end local v11    # "apkFile":Ljava/io/File;
    .local v21, "apkFile":Ljava/io/File;
    move-wide/from16 v11, v19

    move/from16 v19, v13

    move-object/from16 v22, v14

    .end local v13    # "i":I
    .end local v14    # "apkFilePath":Ljava/lang/String;
    .local v19, "i":I
    .local v22, "apkFilePath":Ljava/lang/String;
    move-wide/from16 v13, v17

    move/from16 v20, v15

    .end local v15    # "size":I
    .local v20, "size":I
    move-object/from16 v15, v16

    invoke-virtual/range {v9 .. v15}, Lcom/android/server/pm/PackageInstallerSession;->write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V

    .line 759
    .end local v16    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v17    # "sizeBytes":J
    .end local v21    # "apkFile":Ljava/io/File;
    .end local v22    # "apkFilePath":Ljava/lang/String;
    add-int/lit8 v13, v19, 0x1

    move/from16 v15, v20

    .end local v19    # "i":I
    .restart local v13    # "i":I
    goto :goto_2

    .line 766
    .end local v20    # "size":I
    .restart local v11    # "apkFile":Ljava/io/File;
    .restart local v14    # "apkFilePath":Ljava/lang/String;
    .restart local v15    # "size":I
    .restart local v16    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v17    # "sizeBytes":J
    :cond_3
    move-object/from16 v21, v11

    move/from16 v19, v13

    move-object/from16 v22, v14

    move/from16 v20, v15

    .end local v11    # "apkFile":Ljava/io/File;
    .end local v13    # "i":I
    .end local v14    # "apkFilePath":Ljava/lang/String;
    .end local v15    # "size":I
    .restart local v19    # "i":I
    .restart local v20    # "size":I
    .restart local v21    # "apkFile":Ljava/io/File;
    .restart local v22    # "apkFilePath":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v22

    .end local v22    # "apkFilePath":Ljava/lang/String;
    .local v10, "apkFilePath":Ljava/lang/String;
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    new-instance v9, Lcom/android/server/pm/PackageManagerException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v3, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local v3    # "errorCode":I
    .end local v4    # "apkFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local p0    # "this":Lcom/android/server/pm/StagingManager;
    .end local p1    # "originalSession":Lcom/android/server/pm/PackageInstallerSession;
    .end local p2    # "preReboot":Z
    throw v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    .end local v10    # "apkFilePath":Ljava/lang/String;
    .end local v16    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v17    # "sizeBytes":J
    .end local v19    # "i":I
    .end local v20    # "size":I
    .end local v21    # "apkFile":Ljava/io/File;
    .restart local v3    # "errorCode":I
    .restart local v4    # "apkFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local p0    # "this":Lcom/android/server/pm/StagingManager;
    .restart local p1    # "originalSession":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p2    # "preReboot":Z
    :cond_4
    return-object v8

    .line 773
    .end local v7    # "apkSessionId":I
    .end local v8    # "apkSession":Lcom/android/server/pm/PackageInstallerSession;
    :catch_0
    move-exception v0

    .line 774
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure to install APK staged session "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 775
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    const-string v7, "Failed to create/write APK session"

    invoke-direct {v5, v3, v7, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 738
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find staged APK in "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 740
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 732
    .end local v4    # "apkFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    const-string v0, "Attempting to install a staged APK session with no staging dir"

    invoke-static {v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v4, v3, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v4
.end method

.method private extractApexSessions(Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/List;
    .locals 8
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;"
        }
    .end annotation

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .local v0, "apexSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 429
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .local v1, "childrenSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v2

    .line 431
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIds()[I

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget v6, v3, v5

    .line 432
    .local v6, "childSessionId":I
    iget-object v7, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageInstallerSession;

    .line 433
    .local v7, "childSession":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v7, :cond_0

    .line 434
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    .end local v6    # "childSessionId":I
    .end local v7    # "childSession":Lcom/android/server/pm/PackageInstallerSession;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 437
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 439
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    .line 440
    .local v4, "childSession":Lcom/android/server/pm/PackageInstallerSession;
    invoke-direct {p0, v4}, Lcom/android/server/pm/StagingManager;->sessionContainsApex(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 441
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    .end local v4    # "childSession":Lcom/android/server/pm/PackageInstallerSession;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 444
    .end local v1    # "childrenSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_3
    goto :goto_2

    .line 437
    .restart local v1    # "childrenSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 445
    .end local v1    # "childrenSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    :cond_4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    :goto_2
    return-object v0
.end method

.method private extractApksInSession(Lcom/android/server/pm/PackageInstallerSession;Z)Lcom/android/server/pm/PackageInstallerSession;
    .locals 12
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "preReboot"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 786
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 787
    :cond_0
    const/4 v0, 0x2

    :goto_0
    nop

    .line 788
    .local v0, "errorCode":I
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/android/server/pm/StagingManager;->isApexSession(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 789
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/StagingManager;->createAndWriteApkSession(Lcom/android/server/pm/PackageInstallerSession;Z)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v1

    return-object v1

    .line 790
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 795
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 796
    .local v1, "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v3

    .line 797
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIds()[I

    move-result-object v4

    .line 798
    .local v4, "childSessionIds":[I
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_3

    aget v8, v4, v7

    .line 799
    .local v8, "id":I
    iget-object v9, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageInstallerSession;

    .line 800
    .local v9, "s":Lcom/android/server/pm/PackageInstallerSession;
    invoke-static {v9}, Lcom/android/server/pm/StagingManager;->isApexSession(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 801
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 798
    .end local v8    # "id":I
    .end local v9    # "s":Lcom/android/server/pm/PackageInstallerSession;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 804
    .end local v4    # "childSessionIds":[I
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 807
    return-object v2

    .line 809
    :cond_4
    iget-object v2, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionParams;->copy()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v2

    .line 810
    .local v2, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    iput-boolean v6, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 811
    if-eqz p2, :cond_5

    .line 812
    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v4, -0x40001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 815
    :cond_5
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mPi:Lcom/android/server/pm/PackageInstallerService;

    .line 816
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v4

    .line 815
    invoke-virtual {v3, v2, v4, v6}, Lcom/android/server/pm/PackageInstallerService;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v3

    .line 818
    .local v3, "apkParentSessionId":I
    iget-object v4, p0, Lcom/android/server/pm/StagingManager;->mPi:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v4

    .line 820
    .local v4, "apkParentSession":Lcom/android/server/pm/PackageInstallerSession;
    :try_start_1
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->open()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 826
    nop

    .line 828
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "size":I
    :goto_2
    if-ge v5, v6, :cond_6

    .line 829
    nop

    .line 830
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageInstallerSession;

    .line 829
    invoke-direct {p0, v7, p2}, Lcom/android/server/pm/StagingManager;->createAndWriteApkSession(Lcom/android/server/pm/PackageInstallerSession;Z)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v7

    .line 832
    .local v7, "apkChildSession":Lcom/android/server/pm/PackageInstallerSession;
    :try_start_2
    iget v8, v7, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v4, v8}, Lcom/android/server/pm/PackageInstallerSession;->addChildSessionId(I)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 837
    nop

    .line 828
    .end local v7    # "apkChildSession":Lcom/android/server/pm/PackageInstallerSession;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 833
    .restart local v7    # "apkChildSession":Lcom/android/server/pm/PackageInstallerSession;
    :catch_0
    move-exception v8

    .line 834
    .local v8, "e":Ljava/lang/IllegalStateException;
    const-string v9, "StagingManager"

    const-string v10, "Failed to add a child session for installing the APK files"

    invoke-static {v9, v10, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 835
    new-instance v9, Lcom/android/server/pm/PackageManagerException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to add a child session "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v7, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v0, v10}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v9

    .line 839
    .end local v5    # "i":I
    .end local v6    # "size":I
    .end local v7    # "apkChildSession":Lcom/android/server/pm/PackageInstallerSession;
    .end local v8    # "e":Ljava/lang/IllegalStateException;
    :cond_6
    return-object v4

    .line 821
    :catch_1
    move-exception v5

    .line 822
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

    .line 824
    new-instance v6, Lcom/android/server/pm/PackageManagerException;

    const-string v7, "Unable to prepare multi-package session for staged session"

    invoke-direct {v6, v0, v7}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 804
    .end local v2    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v3    # "apkParentSessionId":I
    .end local v4    # "apkParentSession":Lcom/android/server/pm/PackageInstallerSession;
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 841
    .end local v1    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    :cond_7
    return-object v2
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

    .line 714
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 715
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 716
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 717
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 718
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    .end local v4    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 722
    :cond_1
    return-object v0
.end method

.method private getStagedSession(I)Lcom/android/server/pm/PackageInstallerSession;
    .locals 2
    .param p1, "sessionId"    # I

    .line 1258
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1259
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 1260
    .local v1, "session":Lcom/android/server/pm/PackageInstallerSession;
    monitor-exit v0

    .line 1261
    return-object v1

    .line 1260
    .end local v1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private installApksInSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 8
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 878
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/StagingManager;->extractApksInSession(Lcom/android/server/pm/PackageInstallerSession;Z)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v1

    .line 880
    .local v1, "apksToInstall":Lcom/android/server/pm/PackageInstallerSession;
    if-nez v1, :cond_0

    .line 881
    return-void

    .line 884
    :cond_0
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    const-string v3, "StagingManager"

    if-eqz v2, :cond_1

    .line 887
    nop

    .line 888
    const-string/jumbo v2, "rollback"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 887
    invoke-static {v2}, Landroid/content/rollback/IRollbackManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/rollback/IRollbackManager;

    move-result-object v2

    .line 890
    .local v2, "rm":Landroid/content/rollback/IRollbackManager;
    :try_start_0
    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v5, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-interface {v2, v4, v5}, Landroid/content/rollback/IRollbackManager;->notifyStagedApkSession(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    goto :goto_0

    .line 891
    :catch_0
    move-exception v4

    .line 892
    .local v4, "re":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to notifyStagedApkSession for session: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 897
    .end local v2    # "rm":Landroid/content/rollback/IRollbackManager;
    .end local v4    # "re":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    new-instance v2, Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;-><init>(Lcom/android/server/pm/StagingManager$1;)V

    .line 898
    .local v2, "receiver":Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;
    invoke-virtual {v2}, Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lcom/android/server/pm/PackageInstallerSession;->commit(Landroid/content/IntentSender;Z)V

    .line 899
    invoke-virtual {v2}, Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;->getResult()Landroid/content/Intent;

    move-result-object v0

    .line 900
    .local v0, "result":Landroid/content/Intent;
    const/4 v4, 0x1

    const-string v5, "android.content.pm.extra.STATUS"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 902
    .local v4, "status":I
    if-nez v4, :cond_2

    .line 910
    return-void

    .line 903
    :cond_2
    const-string v5, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 905
    .local v5, "errorMessage":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure to install APK staged session "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    const/4 v6, 0x2

    invoke-direct {v3, v6, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method private static isApexSession(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 2
    .param p0, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 354
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

    .line 1086
    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isReverted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isRevertInProgress:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isRevertFailed:Z

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

    .line 1079
    iget-boolean v0, p1, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Landroid/apex/ApexSessionInfo;->isReverted:Z

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

    .line 1096
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1098
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIds()[I

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    .line 1099
    .local v4, "childSession":I
    iget-object v5, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1100
    return v1

    .line 1098
    .end local v4    # "childSession":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1103
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 1105
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1106
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    .line 1107
    .local v0, "parent":Lcom/android/server/pm/PackageInstallerSession;
    if-nez v0, :cond_3

    .line 1108
    return v1

    .line 1110
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/pm/StagingManager;->isMultiPackageSessionComplete(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v1

    return v1

    .line 1112
    .end local v0    # "parent":Lcom/android/server/pm/PackageInstallerSession;
    :cond_4
    const-string v0, "StagingManager"

    const-string v2, "Attempting to restore an invalid multi-package session."

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    return v1
.end method

.method static synthetic lambda$sessionContainsApex$0(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 1
    .param p0, "s"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 377
    invoke-static {p0}, Lcom/android/server/pm/StagingManager;->isApexSession(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$sessionContainsApk$1(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 1
    .param p0, "s"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 381
    invoke-static {p0}, Lcom/android/server/pm/StagingManager;->isApexSession(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private logFailedApexSessionsIfNecessary()V
    .locals 4

    .line 1175
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    monitor-enter v0

    .line 1176
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1177
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mNativeFailureReason:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logApexdRevert(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 1180
    :cond_0
    monitor-exit v0

    .line 1181
    return-void

    .line 1180
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private needsCheckpoint()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 420
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->needsCheckpoint()Z

    move-result v0

    return v0
.end method

.method private parentOrOwnSessionId(Lcom/android/server/pm/PackageInstallerSession;)I
    .locals 1
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 918
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    :goto_0
    return v0
.end method

.method private prepareForLoggingApexdRevert(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;)V
    .locals 3
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "nativeFailureReason"    # Ljava/lang/String;

    .line 559
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    monitor-enter v0

    .line 560
    :try_start_0
    iput-object p2, p0, Lcom/android/server/pm/StagingManager;->mNativeFailureReason:Ljava/lang/String;

    .line 561
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 562
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    :cond_0
    monitor-exit v0

    .line 565
    return-void

    .line 564
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resumeSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 6
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resuming session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StagingManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->sessionContainsApex(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    .line 571
    .local v0, "hasApex":Z
    const/4 v1, 0x0

    .line 572
    .local v1, "apexSessionInfo":Landroid/apex/ApexSessionInfo;
    if-eqz v0, :cond_1

    .line 574
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ApexManager;->getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;

    move-result-object v1

    .line 577
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/apex/ApexSessionInfo;->crashingNativeProcess:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 579
    iget-object v2, v1, Landroid/apex/ApexSessionInfo;->crashingNativeProcess:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/android/server/pm/StagingManager;->prepareForLoggingApexdRevert(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;)V

    .line 582
    :cond_0
    if-eqz v1, :cond_1

    iget-boolean v2, v1, Landroid/apex/ApexSessionInfo;->isVerified:Z

    if-eqz v2, :cond_1

    .line 587
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found pending staged session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " still to be verified, resuming pre-reboot verification"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StagingManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mPreRebootVerificationHandler:Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {v2, v3}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->access$000(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;I)V

    .line 590
    return-void

    .line 602
    :cond_1
    const/4 v2, 0x3

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/StagingManager;->supportsCheckpoint()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/server/pm/StagingManager;->needsCheckpoint()Z

    move-result v3

    if-nez v3, :cond_3

    .line 603
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reverting back to safe state. Marking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " as failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 605
    .local v3, "errorMsg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/StagingManager;->mFailureReason:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 606
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/StagingManager;->mFailureReason:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 608
    :cond_2
    const-string v4, "StagingManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-virtual {p1, v2, v3}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 610
    return-void

    .line 624
    .end local v3    # "errorMsg":Ljava/lang/String;
    :cond_3
    nop

    .line 627
    if-eqz v0, :cond_7

    .line 628
    const/4 v2, 0x2

    if-nez v1, :cond_4

    .line 629
    const-string v3, "apexd did not know anything about a staged session supposed to be activated"

    .line 631
    .restart local v3    # "errorMsg":Ljava/lang/String;
    const-string v4, "apexd did not know anything about a staged session supposed to be activated"

    invoke-virtual {p1, v2, v4}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 633
    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    const-string v4, "apexd did not know anything about a staged session supposed to be activated"

    invoke-direct {p0, v2, v4}, Lcom/android/server/pm/StagingManager;->abortCheckpoint(ILjava/lang/String;)V

    .line 634
    return-void

    .line 636
    .end local v3    # "errorMsg":Ljava/lang/String;
    :cond_4
    invoke-static {v1}, Lcom/android/server/pm/StagingManager;->isApexSessionFailed(Landroid/apex/ApexSessionInfo;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 637
    const-string v3, "APEX activation failed. Check logcat messages from apexd for more information."

    .line 639
    .restart local v3    # "errorMsg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/StagingManager;->mNativeFailureReason:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 640
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Session reverted due to crashing native process: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/StagingManager;->mNativeFailureReason:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 643
    :cond_5
    invoke-virtual {p1, v2, v3}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 645
    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/pm/StagingManager;->abortCheckpoint(ILjava/lang/String;)V

    .line 646
    return-void

    .line 648
    .end local v3    # "errorMsg":Ljava/lang/String;
    :cond_6
    iget-boolean v3, v1, Landroid/apex/ApexSessionInfo;->isActivated:Z

    if-nez v3, :cond_7

    iget-boolean v3, v1, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    if-nez v3, :cond_7

    .line 652
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Staged session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "at boot didn\'t activate nor fail. Marking it as failed anyway."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 654
    .restart local v3    # "errorMsg":Ljava/lang/String;
    invoke-virtual {p1, v2, v3}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 656
    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/pm/StagingManager;->abortCheckpoint(ILjava/lang/String;)V

    .line 657
    return-void

    .line 662
    .end local v3    # "errorMsg":Ljava/lang/String;
    :cond_7
    if-eqz v0, :cond_8

    .line 663
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->checkInstallationOfApkInApexSuccessful(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 664
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->snapshotAndRestoreForApexSession(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 665
    const-string v2, "StagingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APEX packages in session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " were successfully activated. Proceeding with APK packages, if any"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_8
    const-string v2, "StagingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Installing APK packages in session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->installApksInSession(Lcom/android/server/pm/PackageInstallerSession;)V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 689
    nop

    .line 691
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Marking session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " as applied"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StagingManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionApplied()V

    .line 693
    if-eqz v0, :cond_a

    .line 695
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/pm/StagingManager;->supportsCheckpoint()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 698
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    monitor-enter v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 699
    :try_start_3
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "hasApex":Z
    .end local v1    # "apexSessionInfo":Landroid/apex/ApexSessionInfo;
    .end local p0    # "this":Lcom/android/server/pm/StagingManager;
    .end local p1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :try_start_4
    throw v3

    .line 703
    .restart local v0    # "hasApex":Z
    .restart local v1    # "apexSessionInfo":Landroid/apex/ApexSessionInfo;
    .restart local p0    # "this":Lcom/android/server/pm/StagingManager;
    .restart local p1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_9
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ApexManager;->markStagedSessionSuccessful(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 709
    :goto_0
    goto :goto_1

    .line 705
    :catch_0
    move-exception v2

    .line 706
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "StagingManager"

    const-string v4, "Checkpoint support unknown, marking session as successful immediately."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v3, v4}, Lcom/android/server/pm/ApexManager;->markStagedSessionSuccessful(I)V

    .line 711
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_a
    :goto_1
    return-void

    .line 671
    :catch_1
    move-exception v2

    .line 672
    .local v2, "e":Lcom/android/server/pm/PackageManagerException;
    iget v3, v2, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 673
    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/pm/StagingManager;->abortCheckpoint(ILjava/lang/String;)V

    .line 676
    if-nez v0, :cond_b

    .line 677
    return-void

    .line 680
    :cond_b
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v3}, Lcom/android/server/pm/ApexManager;->revertActiveSessions()Z

    move-result v3

    if-nez v3, :cond_c

    .line 681
    const-string v3, "StagingManager"

    const-string v4, "Failed to abort APEXd session"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 683
    :cond_c
    const-string v3, "StagingManager"

    const-string v4, "Successfully aborted apexd session. Rebooting device in order to revert to the previous state of APEXd."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 688
    :goto_2
    return-void

    .line 612
    .end local v2    # "e":Lcom/android/server/pm/PackageManagerException;
    :catch_2
    move-exception v3

    .line 614
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checkpoint support unknown. Aborting staged install for session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StagingManager"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 617
    const-string v4, "Checkpoint support unknown. Aborting staged install."

    invoke-virtual {p1, v2, v4}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 619
    if-eqz v0, :cond_d

    .line 620
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v2}, Lcom/android/server/pm/ApexManager;->revertActiveSessions()Z

    .line 622
    :cond_d
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v4, "Checkpoint support unknown"

    invoke-virtual {v2, v4}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 623
    return-void
.end method

.method private retrieveRollbackIdForCommitSession(I)I
    .locals 6
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/RollbackManager;

    .line 303
    .local v0, "rm":Landroid/content/rollback/RollbackManager;
    invoke-virtual {v0}, Landroid/content/rollback/RollbackManager;->getRecentlyCommittedRollbacks()Ljava/util/List;

    move-result-object v1

    .line 304
    .local v1, "rollbacks":Ljava/util/List;, "Ljava/util/List<Landroid/content/rollback/RollbackInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 305
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/rollback/RollbackInfo;

    .line 306
    .local v4, "rollback":Landroid/content/rollback/RollbackInfo;
    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 307
    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v5

    return v5

    .line 304
    .end local v4    # "rollback":Landroid/content/rollback/RollbackInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 310
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_1
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find rollback id for commit session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private sessionContains(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/function/Predicate;)Z
    .locals 8
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

    .line 359
    .local p2, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/pm/PackageInstallerSession;>;"
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    invoke-interface {p2, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 363
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIds()[I

    move-result-object v1

    .line 364
    .local v1, "childSessionIds":[I
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget v5, v1, v4

    .line 366
    .local v5, "id":I
    iget-object v6, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageInstallerSession;

    .line 368
    .local v6, "s":Lcom/android/server/pm/PackageInstallerSession;
    invoke-interface {p2, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 369
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 364
    .end local v5    # "id":I
    .end local v6    # "s":Lcom/android/server/pm/PackageInstallerSession;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 372
    :cond_2
    monitor-exit v0

    return v3

    .line 373
    .end local v1    # "childSessionIds":[I
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

    .line 377
    sget-object v0, Lcom/android/server/pm/-$$Lambda$StagingManager$cCrTSWVAewHcbpkNkEhDosvsa7E;->INSTANCE:Lcom/android/server/pm/-$$Lambda$StagingManager$cCrTSWVAewHcbpkNkEhDosvsa7E;

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/StagingManager;->sessionContains(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method private sessionContainsApk(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 1
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 381
    sget-object v0, Lcom/android/server/pm/-$$Lambda$StagingManager$DPIjX5kTmtybLfpjEIRETYd18kE;->INSTANCE:Lcom/android/server/pm/-$$Lambda$StagingManager$DPIjX5kTmtybLfpjEIRETYd18kE;

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/StagingManager;->sessionContains(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method private snapshotAndRestoreApexUserData(Ljava/lang/String;[ILandroid/content/rollback/IRollbackManager;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allUsers"    # [I
    .param p3, "rm"    # Landroid/content/rollback/IRollbackManager;

    .line 514
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p3

    move-object v1, p1

    move-object v2, p2

    :try_start_0
    invoke-interface/range {v0 .. v7}, Landroid/content/rollback/IRollbackManager;->snapshotAndRestoreUserData(Ljava/lang/String;[IIJLjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    goto :goto_0

    .line 516
    :catch_0
    move-exception v0

    .line 517
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error snapshotting/restoring user data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StagingManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private snapshotAndRestoreApkInApexUserData(Ljava/lang/String;[ILandroid/content/rollback/IRollbackManager;)V
    .locals 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allUsers"    # [I
    .param p3, "rm"    # Landroid/content/rollback/IRollbackManager;

    .line 523
    move-object/from16 v9, p1

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/content/pm/PackageManagerInternal;

    .line 524
    .local v10, "mPmi":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v10, v9}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v11

    .line 525
    .local v11, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const-string v12, "StagingManager"

    if-nez v11, :cond_0

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "for snapshotting/restoring user data."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    return-void

    .line 531
    :cond_0
    const/4 v0, -0x1

    .line 532
    .local v0, "appId":I
    const-wide/16 v1, -0x1

    .line 533
    .local v1, "ceDataInode":J
    invoke-virtual {v10, v9}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v13

    .line 534
    .local v13, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v13, :cond_1

    .line 535
    iget v14, v13, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 536
    .end local v0    # "appId":I
    .local v14, "appId":I
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Lcom/android/server/pm/PackageSetting;->getCeDataInode(I)J

    move-result-wide v15

    .line 539
    .end local v1    # "ceDataInode":J
    .local v15, "ceDataInode":J
    const/4 v0, 0x1

    move-object/from16 v8, p2

    invoke-virtual {v13, v8, v0}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v17

    .line 541
    .local v17, "installedUsers":[I
    invoke-static {v11, v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v18

    .line 543
    .local v18, "seInfo":Ljava/lang/String;
    const/4 v0, 0x0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move-object/from16 v3, v17

    move v4, v14

    move-wide v5, v15

    move-object/from16 v7, v18

    move v8, v0

    :try_start_0
    invoke-interface/range {v1 .. v8}, Landroid/content/rollback/IRollbackManager;->snapshotAndRestoreUserData(Ljava/lang/String;[IIJLjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    goto :goto_0

    .line 545
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 546
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error snapshotting/restoring user data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v17    # "installedUsers":[I
    .end local v18    # "seInfo":Ljava/lang/String;
    :goto_0
    move v0, v14

    move-wide v1, v15

    .end local v14    # "appId":I
    .end local v15    # "ceDataInode":J
    .local v0, "appId":I
    .restart local v1    # "ceDataInode":J
    :cond_1
    return-void
.end method

.method private snapshotAndRestoreForApexSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 12
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 479
    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 482
    .local v0, "doSnapshotOrRestore":Z
    :goto_1
    if-nez v0, :cond_2

    .line 483
    return-void

    .line 487
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->extractApexSessions(Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/List;

    move-result-object v1

    .line 488
    .local v1, "apexSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 489
    return-void

    .line 492
    :cond_3
    const-class v2, Landroid/os/UserManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManagerInternal;

    .line 493
    .local v2, "um":Landroid/os/UserManagerInternal;
    invoke-virtual {v2}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v3

    .line 494
    .local v3, "allUsers":[I
    nop

    .line 495
    const-string/jumbo v4, "rollback"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 494
    invoke-static {v4}, Landroid/content/rollback/IRollbackManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/rollback/IRollbackManager;

    move-result-object v4

    .line 497
    .local v4, "rm":Landroid/content/rollback/IRollbackManager;
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "sessionsSize":I
    :goto_2
    if-ge v5, v6, :cond_5

    .line 498
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 500
    .local v7, "packageName":Ljava/lang/String;
    invoke-direct {p0, v7, v3, v4}, Lcom/android/server/pm/StagingManager;->snapshotAndRestoreApexUserData(Ljava/lang/String;[ILandroid/content/rollback/IRollbackManager;)V

    .line 503
    iget-object v8, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v8, v7}, Lcom/android/server/pm/ApexManager;->getApksInApex(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 504
    .local v8, "apksInApex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "j":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    .local v10, "apksSize":I
    :goto_3
    if-ge v9, v10, :cond_4

    .line 505
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {p0, v11, v3, v4}, Lcom/android/server/pm/StagingManager;->snapshotAndRestoreApkInApexUserData(Ljava/lang/String;[ILandroid/content/rollback/IRollbackManager;)V

    .line 504
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 497
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "apksInApex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "j":I
    .end local v10    # "apksSize":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 508
    .end local v5    # "i":I
    .end local v6    # "sessionsSize":I
    :cond_5
    return-void
.end method

.method private submitSessionToApexService(Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/List;
    .locals 18
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 238
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    move-object v3, v0

    .line 239
    .local v3, "childSessionIds":Landroid/util/IntArray;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIds()[I

    move-result-object v0

    array-length v5, v0

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_1

    aget v7, v0, v6

    .line 241
    .local v7, "id":I
    invoke-direct {v1, v7}, Lcom/android/server/pm/StagingManager;->getStagedSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/pm/StagingManager;->isApexSession(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 242
    invoke-virtual {v3, v7}, Landroid/util/IntArray;->add(I)V

    .line 240
    .end local v7    # "id":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 246
    :cond_1
    new-instance v0, Landroid/apex/ApexSessionParams;

    invoke-direct {v0}, Landroid/apex/ApexSessionParams;-><init>()V

    move-object v5, v0

    .line 247
    .local v5, "apexSessionParams":Landroid/apex/ApexSessionParams;
    iget v0, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iput v0, v5, Landroid/apex/ApexSessionParams;->sessionId:I

    .line 248
    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    iput-object v0, v5, Landroid/apex/ApexSessionParams;->childSessionIds:[I

    .line 249
    iget-object v0, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    const/4 v6, 0x5

    const/4 v7, 0x1

    if-ne v0, v6, :cond_2

    .line 250
    iput-boolean v7, v5, Landroid/apex/ApexSessionParams;->isRollback:Z

    .line 251
    iget v0, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-direct {v1, v0}, Lcom/android/server/pm/StagingManager;->retrieveRollbackIdForCommitSession(I)I

    move-result v0

    iput v0, v5, Landroid/apex/ApexSessionParams;->rollbackId:I

    goto :goto_1

    .line 253
    :cond_2
    iget-object v6, v1, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v6

    .line 254
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/StagingManager;->mSessionRollbackIds:Landroid/util/SparseIntArray;

    iget v8, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 255
    .local v0, "rollbackId":I
    if-eq v0, v9, :cond_3

    .line 256
    iput-boolean v7, v5, Landroid/apex/ApexSessionParams;->hasRollbackEnabled:Z

    .line 257
    iput v0, v5, Landroid/apex/ApexSessionParams;->rollbackId:I

    .line 259
    .end local v0    # "rollbackId":I
    :cond_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 263
    :goto_1
    iget-object v0, v1, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0, v5}, Lcom/android/server/pm/ApexManager;->submitStagedSession(Landroid/apex/ApexSessionParams;)Landroid/apex/ApexInfoList;

    move-result-object v6

    .line 264
    .local v6, "apexInfoList":Landroid/apex/ApexInfoList;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 265
    .local v8, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 266
    .local v9, "apexPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, v6, Landroid/apex/ApexInfoList;->apexInfos:[Landroid/apex/ApexInfo;

    array-length v10, v0

    move v11, v4

    :goto_2
    if-ge v11, v10, :cond_8

    aget-object v12, v0, v11

    .line 268
    .local v12, "apexInfo":Landroid/apex/ApexInfo;
    const/16 v13, 0x80

    .line 269
    .local v13, "flags":I
    :try_start_1
    iget-object v14, v1, Lcom/android/server/pm/StagingManager;->mPackageParserSupplier:Ljava/util/function/Supplier;

    invoke-interface {v14}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/parsing/PackageParser2;
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 270
    .local v14, "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    :try_start_2
    new-instance v15, Ljava/io/File;

    iget-object v7, v12, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-direct {v15, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v15

    .line 271
    .local v7, "apexFile":Ljava/io/File;
    const/16 v15, 0x80

    invoke-virtual {v14, v7, v15, v4}, Lcom/android/server/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v16

    move-object/from16 v17, v16

    .line 273
    .local v17, "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    move-object/from16 v4, v17

    .end local v17    # "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .local v4, "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    invoke-static {v4, v12, v15}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generate(Landroid/content/pm/parsing/ParsingPackageRead;Landroid/apex/ApexInfo;I)Landroid/content/pm/PackageInfo;

    move-result-object v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 274
    .local v15, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v15, :cond_6

    .line 279
    .end local v4    # "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .end local v7    # "apexFile":Ljava/io/File;
    if-eqz v14, :cond_4

    :try_start_3
    invoke-virtual {v14}, Lcom/android/server/pm/parsing/PackageParser2;->close()V
    :try_end_3
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_3 .. :try_end_3} :catch_0

    .line 282
    .end local v14    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    :cond_4
    nop

    .line 283
    iget-object v4, v1, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget-object v7, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v4, v7, v14}, Lcom/android/server/pm/ApexManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 285
    .local v4, "activePackage":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_5

    .line 290
    invoke-direct {v1, v2, v4}, Lcom/android/server/pm/StagingManager;->checkRequiredVersionCode(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/PackageInfo;)V

    .line 291
    invoke-direct {v1, v2, v4, v15}, Lcom/android/server/pm/StagingManager;->checkDowngrade(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)V

    .line 292
    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v7, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    .end local v4    # "activePackage":Landroid/content/pm/PackageInfo;
    .end local v12    # "apexInfo":Landroid/apex/ApexInfo;
    .end local v13    # "flags":I
    .end local v15    # "packageInfo":Landroid/content/pm/PackageInfo;
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x1

    goto :goto_2

    .line 286
    .restart local v4    # "activePackage":Landroid/content/pm/PackageInfo;
    .restart local v12    # "apexInfo":Landroid/apex/ApexInfo;
    .restart local v13    # "flags":I
    .restart local v15    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempting to install new APEX package "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "StagingManager"

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v7, "It is forbidden to install new APEX packages."

    const/4 v10, 0x1

    invoke-direct {v0, v10, v7}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 275
    .local v4, "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .restart local v7    # "apexFile":Ljava/io/File;
    .restart local v14    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    :cond_6
    :try_start_4
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to generate package info: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v12, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {v0, v11, v10}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local v3    # "childSessionIds":Landroid/util/IntArray;
    .end local v5    # "apexSessionParams":Landroid/apex/ApexSessionParams;
    .end local v6    # "apexInfoList":Landroid/apex/ApexInfoList;
    .end local v8    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "apexPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "apexInfo":Landroid/apex/ApexInfo;
    .end local v13    # "flags":I
    .end local v14    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    .end local p0    # "this":Lcom/android/server/pm/StagingManager;
    .end local p1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 269
    .end local v4    # "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .end local v7    # "apexFile":Ljava/io/File;
    .end local v15    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v3    # "childSessionIds":Landroid/util/IntArray;
    .restart local v5    # "apexSessionParams":Landroid/apex/ApexSessionParams;
    .restart local v6    # "apexInfoList":Landroid/apex/ApexInfoList;
    .restart local v8    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "apexPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "apexInfo":Landroid/apex/ApexInfo;
    .restart local v13    # "flags":I
    .restart local v14    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    .restart local p0    # "this":Lcom/android/server/pm/StagingManager;
    .restart local p1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :catchall_0
    move-exception v0

    move-object v4, v0

    if-eqz v14, :cond_7

    :try_start_5
    invoke-virtual {v14}, Lcom/android/server/pm/parsing/PackageParser2;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v7, v0

    :try_start_6
    invoke-virtual {v4, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "childSessionIds":Landroid/util/IntArray;
    .end local v5    # "apexSessionParams":Landroid/apex/ApexSessionParams;
    .end local v6    # "apexInfoList":Landroid/apex/ApexInfoList;
    .end local v8    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "apexPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "apexInfo":Landroid/apex/ApexInfo;
    .end local v13    # "flags":I
    .end local p0    # "this":Lcom/android/server/pm/StagingManager;
    .end local p1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_7
    :goto_3
    throw v4
    :try_end_6
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_6 .. :try_end_6} :catch_0

    .line 279
    .end local v14    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    .restart local v3    # "childSessionIds":Landroid/util/IntArray;
    .restart local v5    # "apexSessionParams":Landroid/apex/ApexSessionParams;
    .restart local v6    # "apexInfoList":Landroid/apex/ApexInfoList;
    .restart local v8    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "apexPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "apexInfo":Landroid/apex/ApexInfo;
    .restart local v13    # "flags":I
    .restart local p0    # "this":Lcom/android/server/pm/StagingManager;
    .restart local p1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to parse APEX package "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v12, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x1

    invoke-direct {v4, v10, v7, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 295
    .end local v0    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .end local v12    # "apexInfo":Landroid/apex/ApexInfo;
    .end local v13    # "flags":I
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has following APEX packages: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "StagingManager"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-object v8

    .line 259
    .end local v6    # "apexInfoList":Landroid/apex/ApexInfoList;
    .end local v8    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "apexPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0
.end method

.method private supportsCheckpoint()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 416
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->supportsCheckpoint()Z

    move-result v0

    return v0
.end method

.method private updateStoredSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 4
    .param p1, "sessionInfo"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 172
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 176
    .local v1, "storedSession":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v1, :cond_0

    .line 177
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 179
    .end local v1    # "storedSession":Lcom/android/server/pm/PackageInstallerSession;
    :cond_0
    monitor-exit v0

    .line 180
    return-void

    .line 179
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private validateApexSignature(Landroid/content/pm/PackageInfo;)V
    .locals 10
    .param p1, "newApexPkg"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 191
    const-string v0, "Failed to parse APEX package "

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 192
    .local v1, "apexPath":Ljava/lang/String;
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 193
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v3}, Landroid/util/apk/ApkSignatureVerifier;->getMinimumSignatureSchemeVersionForTargetSdk(I)I

    move-result v3

    .line 198
    .local v3, "minSignatureScheme":I
    const/4 v4, 0x1

    :try_start_0
    invoke-static {v1, v3}, Landroid/util/apk/ApkSignatureVerifier;->verify(Ljava/lang/String;I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 202
    .local v5, "newSigningDetails":Landroid/content/pm/PackageParser$SigningDetails;
    nop

    .line 205
    iget-object v6, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v6, v2, v4}, Lcom/android/server/pm/ApexManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 207
    .local v6, "existingApexPkg":Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_2

    .line 215
    :try_start_1
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v7, v4}, Landroid/util/apk/ApkSignatureVerifier;->verify(Ljava/lang/String;I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 220
    .local v0, "existingSigningDetails":Landroid/content/pm/PackageParser$SigningDetails;
    nop

    .line 223
    invoke-virtual {v5, v0, v4}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v7

    if-nez v7, :cond_1

    const/16 v7, 0x8

    .line 225
    invoke-virtual {v0, v5, v7}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    new-instance v7, Lcom/android/server/pm/PackageManagerException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "APK-container signature of APEX package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " with version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " and path "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is not compatible with the one currently installed on device"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v4, v8}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 227
    :cond_1
    :goto_0
    return-void

    .line 217
    .end local v0    # "existingSigningDetails":Landroid/content/pm/PackageParser$SigningDetails;
    :catch_0
    move-exception v7

    .line 218
    .local v7, "e":Landroid/content/pm/PackageParser$PackageParserException;
    new-instance v8, Lcom/android/server/pm/PackageManagerException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v4, v0, v7}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 210
    .end local v7    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown apex package "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    .end local v5    # "newSigningDetails":Landroid/content/pm/PackageParser$SigningDetails;
    .end local v6    # "existingApexPkg":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v5

    .line 200
    .local v5, "e":Landroid/content/pm/PackageParser$PackageParserException;
    new-instance v6, Lcom/android/server/pm/PackageManagerException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v4, v0, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private verifyApksInSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 4
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 847
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/StagingManager;->extractApksInSession(Lcom/android/server/pm/PackageInstallerSession;Z)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v0

    .line 849
    .local v0, "apksToVerify":Lcom/android/server/pm/PackageInstallerSession;
    if-nez v0, :cond_0

    .line 850
    return-void

    .line 853
    :cond_0
    new-instance v1, Lcom/android/server/pm/StagingManager$LocalIntentReceiverAsync;

    new-instance v2, Lcom/android/server/pm/-$$Lambda$StagingManager$p2VgTKfi351HM3Fk-k0-IJXQ-34;

    invoke-direct {v2, p0, p1}, Lcom/android/server/pm/-$$Lambda$StagingManager$p2VgTKfi351HM3Fk-k0-IJXQ-34;-><init>(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)V

    invoke-direct {v1, v2}, Lcom/android/server/pm/StagingManager$LocalIntentReceiverAsync;-><init>(Ljava/util/function/Consumer;)V

    .line 872
    .local v1, "receiver":Lcom/android/server/pm/StagingManager$LocalIntentReceiverAsync;
    invoke-virtual {v1}, Lcom/android/server/pm/StagingManager$LocalIntentReceiverAsync;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/PackageInstallerSession;->commit(Landroid/content/IntentSender;Z)V

    .line 873
    return-void
.end method


# virtual methods
.method abortCommittedSessionLocked(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 5
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 1027
    iget v0, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 1028
    .local v0, "sessionId":I
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionApplied()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "StagingManager"

    if-eqz v1, :cond_0

    .line 1029
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot abort applied session : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    return v2

    .line 1032
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1036
    invoke-direct {p0, v0}, Lcom/android/server/pm/StagingManager;->getStagedSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v1

    const-string v4, "Session "

    if-nez v1, :cond_1

    .line 1037
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has been abandoned already"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    return v2

    .line 1043
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mPreRebootVerificationHandler:Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    invoke-static {v1, v0}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->access$200(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1044
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " aborted before pre-reboot verification completed."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    return v2

    .line 1050
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionReady()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1051
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->sessionContainsApex(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1053
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 1054
    invoke-virtual {v1, v2}, Lcom/android/server/pm/ApexManager;->getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;

    move-result-object v1

    .line 1055
    .local v1, "apexSession":Landroid/apex/ApexSessionInfo;
    if-eqz v1, :cond_4

    invoke-direct {p0, v1}, Lcom/android/server/pm/StagingManager;->isApexSessionFinalized(Landroid/apex/ApexSessionInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 1060
    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v4}, Lcom/android/server/pm/ApexManager;->abortStagedSession(I)Z

    goto :goto_1

    .line 1056
    :cond_4
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot abort session "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " because it is not active."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1067
    .end local v1    # "apexSession":Landroid/apex/ApexSessionInfo;
    :goto_1
    goto :goto_2

    .line 1062
    :catch_0
    move-exception v1

    .line 1066
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not contact apexd to abort staged session "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->abortSession(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1074
    const/4 v1, 0x1

    return v1

    .line 1033
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Committed session must be destroyed before aborting it from StagingManager"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method abortSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 3
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 1007
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1008
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1009
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mSessionRollbackIds:Landroid/util/SparseIntArray;

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1010
    monitor-exit v0

    .line 1011
    return-void

    .line 1010
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method checkNonOverlappingWithStagedSessions(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 9
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 934
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    return-void

    .line 938
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 943
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 944
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->isCheckpointSupported()Z

    move-result v0

    .line 946
    .local v0, "supportsCheckpoint":Z
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v1

    .line 947
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 948
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 949
    .local v3, "stagedSession":Lcom/android/server/pm/PackageInstallerSession;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v4

    if-nez v4, :cond_7

    .line 950
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 951
    goto/16 :goto_1

    .line 953
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 956
    goto/16 :goto_1

    .line 959
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 960
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v4

    .line 961
    .local v4, "parentId":I
    iget-object v5, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageInstallerSession;

    .line 962
    .local v5, "parentSession":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v6

    if-nez v6, :cond_7

    .line 963
    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 965
    goto/16 :goto_1

    .line 972
    .end local v4    # "parentId":I
    .end local v5    # "parentSession":Lcom/android/server/pm/PackageInstallerSession;
    :cond_3
    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v5, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    if-ne v4, v5, :cond_4

    .line 973
    const-string v4, "StagingManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is already staged"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    goto :goto_1

    .line 979
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const/16 v6, -0x77

    if-nez v4, :cond_6

    .line 990
    if-nez v0, :cond_7

    .line 991
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->parentOrOwnSessionId(Lcom/android/server/pm/PackageInstallerSession;)I

    move-result v4

    invoke-direct {p0, v3}, Lcom/android/server/pm/StagingManager;->parentOrOwnSessionId(Lcom/android/server/pm/PackageInstallerSession;)I

    move-result v7

    if-ne v4, v7, :cond_5

    goto :goto_1

    .line 992
    :cond_5
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    const-string v7, "Cannot stage multiple sessions without checkpoint support"

    invoke-direct {v4, v6, v7, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "supportsCheckpoint":Z
    .end local p0    # "this":Lcom/android/server/pm/StagingManager;
    .end local p1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    throw v4

    .line 980
    .restart local v0    # "supportsCheckpoint":Z
    .restart local p0    # "this":Lcom/android/server/pm/StagingManager;
    .restart local p1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_6
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " in session: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " has been staged already by session: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "supportsCheckpoint":Z
    .end local p0    # "this":Lcom/android/server/pm/StagingManager;
    .end local p1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    throw v4

    .line 947
    .end local v3    # "stagedSession":Lcom/android/server/pm/PackageInstallerSession;
    .restart local v0    # "supportsCheckpoint":Z
    .restart local p0    # "this":Lcom/android/server/pm/StagingManager;
    .restart local p1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 997
    .end local v2    # "i":I
    :cond_8
    monitor-exit v1

    .line 998
    return-void

    .line 997
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 939
    .end local v0    # "supportsCheckpoint":Z
    :cond_9
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/4 v1, -0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot stage session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with package name null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method commitSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 2
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 913
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->updateStoredSession(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 914
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mPreRebootVerificationHandler:Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {v0, v1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->access$000(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;I)V

    .line 915
    return-void
.end method

.method createSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 3
    .param p1, "sessionInfo"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 1001
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1002
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1003
    monitor-exit v0

    .line 1004
    return-void

    .line 1003
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$verifyApksInSession$2$StagingManager(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/Intent;)V
    .locals 5
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "result"    # Landroid/content/Intent;

    .line 855
    const-string v0, "android.content.pm.extra.STATUS"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 857
    .local v0, "status":I
    if-eqz v0, :cond_0

    .line 858
    const-string v2, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 860
    .local v2, "errorMessage":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure to verify APK staged session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StagingManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    invoke-virtual {p1, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 864
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mPreRebootVerificationHandler:Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {v1, v3}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->access$1600(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;I)V

    .line 866
    return-void

    .line 868
    .end local v2    # "errorMessage":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mPreRebootVerificationHandler:Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {v1, v2}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->access$1700(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;I)V

    .line 870
    return-void
.end method

.method markStagedSessionsAsSuccessful()V
    .locals 4

    .line 1184
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    monitor-enter v0

    .line 1185
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1186
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ApexManager;->markStagedSessionSuccessful(I)V

    .line 1185
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1188
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0

    .line 1189
    return-void

    .line 1188
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method restoreSession(Lcom/android/server/pm/PackageInstallerSession;Z)V
    .locals 4
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "isDeviceUpgrading"    # Z

    .line 1117
    move-object v0, p1

    .line 1118
    .local v0, "sessionToResume":Lcom/android/server/pm/PackageInstallerSession;
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1119
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1122
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1123
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->isMultiPackageSessionComplete(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1125
    monitor-exit v1

    return-void

    .line 1128
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1129
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    move-object v0, v2

    .line 1132
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1135
    if-eqz p2, :cond_3

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1136
    const/4 v1, 0x2

    const-string v2, "Build fingerprint has changed"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 1138
    return-void

    .line 1140
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/pm/StagingManager;->checkStateAndResume(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1141
    return-void

    .line 1132
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method systemReady()V
    .locals 4

    .line 1192
    new-instance v0, Lcom/android/server/pm/StagingManager$Lifecycle;

    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/pm/StagingManager$Lifecycle;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/android/server/pm/StagingManager$Lifecycle;->startService(Lcom/android/server/pm/StagingManager;)V

    .line 1194
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/pm/StagingManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/StagingManager$1;-><init>(Lcom/android/server/pm/StagingManager;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1204
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailureReasonFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1205
    return-void
.end method
