.class public Lcom/android/server/backup/fullbackup/FullBackupEngine;
.super Ljava/lang/Object;
.source "FullBackupEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;
    }
.end annotation


# instance fields
.field private backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private mAgent:Landroid/app/IBackupAgent;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field private mIncludeApks:Z

.field private final mOpToken:I

.field private mOutput:Ljava/io/OutputStream;

.field private mPkg:Landroid/content/pm/PackageInfo;

.field private mPreflightHook:Lcom/android/server/backup/fullbackup/FullBackupPreflight;

.field private final mQuota:J

.field private mTimeoutMonitor:Lcom/android/server/backup/BackupRestoreTask;

.field private final mTransportFlags:I


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/io/OutputStream;Lcom/android/server/backup/fullbackup/FullBackupPreflight;Landroid/content/pm/PackageInfo;ZLcom/android/server/backup/BackupRestoreTask;JII)V
    .locals 2
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "output"    # Ljava/io/OutputStream;
    .param p3, "preflightHook"    # Lcom/android/server/backup/fullbackup/FullBackupPreflight;
    .param p4, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p5, "alsoApks"    # Z
    .param p6, "timeoutMonitor"    # Lcom/android/server/backup/BackupRestoreTask;
    .param p7, "quota"    # J
    .param p9, "opToken"    # I
    .param p10, "transportFlags"    # I

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 195
    iput-object p2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    .line 196
    iput-object p3, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/fullbackup/FullBackupPreflight;

    .line 197
    iput-object p4, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    .line 198
    iput-boolean p5, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mIncludeApks:Z

    .line 199
    iput-object p6, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTimeoutMonitor:Lcom/android/server/backup/BackupRestoreTask;

    .line 200
    iput-wide p7, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mQuota:J

    .line 201
    iput p9, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOpToken:I

    .line 202
    iput p10, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTransportFlags:I

    .line 203
    nop

    .line 205
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    .line 204
    const-string v1, "Timeout parameters cannot be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 207
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/UserBackupManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 55
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/backup/fullbackup/FullBackupEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 55
    iget v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTransportFlags:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupAgentTimeoutParameters;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 55
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupRestoreTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 55
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTimeoutMonitor:Lcom/android/server/backup/BackupRestoreTask;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/backup/fullbackup/FullBackupEngine;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 55
    iget-wide v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mQuota:J

    return-wide v0
.end method

.method private initializeAgent()Z
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 304
    invoke-virtual {v0, v2, v1}, Lcom/android/server/backup/UserBackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private tearDown()V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    .line 312
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .line 314
    :cond_0
    return-void
.end method


# virtual methods
.method public backupOnePackage()I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 229
    const-string v0, "Error bringing down backup stack"

    const/16 v1, -0x3eb

    .line 231
    .local v1, "result":I
    invoke-direct {p0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->initializeAgent()Z

    move-result v2

    const-string v3, "BackupManagerService"

    if-eqz v2, :cond_6

    .line 232
    const/4 v2, 0x0

    .line 234
    .local v2, "pipes":[Landroid/os/ParcelFileDescriptor;
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    move-object v2, v6

    .line 236
    new-instance v14, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;

    iget-object v8, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v9, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v10, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    aget-object v11, v2, v5

    iget v12, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOpToken:I

    iget-boolean v13, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mIncludeApks:Z

    move-object v6, v14

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;-><init>(Lcom/android/server/backup/fullbackup/FullBackupEngine;Lcom/android/server/backup/UserBackupManagerService;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZ)V

    move-object v6, v14

    .line 244
    .local v6, "runner":Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;
    aget-object v7, v2, v5

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 245
    const/4 v7, 0x0

    aput-object v7, v2, v5

    .line 246
    new-instance v7, Ljava/lang/Thread;

    const-string v8, "app-data-runner"

    invoke-direct {v7, v6, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 247
    .local v7, "t":Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 249
    aget-object v8, v2, v4

    iget-object v9, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-static {v8, v9}, Lcom/android/server/backup/utils/FullBackupUtils;->routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V

    .line 251
    iget-object v8, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v9, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOpToken:I

    invoke-virtual {v8, v9}, Lcom/android/server/backup/UserBackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 252
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Full backup failed on package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 257
    :cond_0
    const/4 v1, 0x0

    .line 265
    .end local v6    # "runner":Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;
    .end local v7    # "t":Ljava/lang/Thread;
    :goto_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 266
    if-eqz v2, :cond_3

    .line 267
    aget-object v6, v2, v4

    if-eqz v6, :cond_1

    .line 268
    aget-object v4, v2, v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 270
    :cond_1
    aget-object v4, v2, v5

    if-eqz v4, :cond_3

    .line 271
    aget-object v4, v2, v5

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 263
    :catchall_0
    move-exception v6

    goto :goto_3

    .line 259
    :catch_0
    move-exception v6

    .line 260
    .local v6, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error backing up "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    const/16 v1, -0x3eb

    .line 265
    .end local v6    # "e":Ljava/io/IOException;
    :try_start_3
    iget-object v6, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 266
    if-eqz v2, :cond_3

    .line 267
    aget-object v6, v2, v4

    if-eqz v6, :cond_2

    .line 268
    aget-object v4, v2, v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 270
    :cond_2
    aget-object v4, v2, v5

    if-eqz v4, :cond_3

    .line 271
    aget-object v4, v2, v5

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 277
    :cond_3
    :goto_1
    goto :goto_2

    .line 274
    :catch_1
    move-exception v4

    .line 275
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/16 v0, -0x3e8

    .line 278
    .end local v1    # "result":I
    .end local v4    # "e":Ljava/io/IOException;
    .local v0, "result":I
    move v1, v0

    .line 279
    .end local v0    # "result":I
    .end local v2    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "result":I
    :goto_2
    goto :goto_5

    .line 265
    .restart local v2    # "pipes":[Landroid/os/ParcelFileDescriptor;
    :goto_3
    :try_start_4
    iget-object v7, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 266
    if-eqz v2, :cond_5

    .line 267
    aget-object v7, v2, v4

    if-eqz v7, :cond_4

    .line 268
    aget-object v4, v2, v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 270
    :cond_4
    aget-object v4, v2, v5

    if-eqz v4, :cond_5

    .line 271
    aget-object v4, v2, v5

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 277
    :cond_5
    goto :goto_4

    .line 274
    :catch_2
    move-exception v4

    .line 275
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/16 v1, -0x3e8

    .line 278
    .end local v4    # "e":Ljava/io/IOException;
    :goto_4
    throw v6

    .line 280
    .end local v2    # "pipes":[Landroid/os/ParcelFileDescriptor;
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to bind to full agent for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :goto_5
    invoke-direct {p0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->tearDown()V

    .line 283
    return v1
.end method

.method public synthetic lambda$sendQuotaExceeded$0$FullBackupEngine(JJLandroid/app/backup/IBackupCallback;)V
    .locals 6
    .param p1, "backupDataBytes"    # J
    .param p3, "quotaBytes"    # J
    .param p5, "callback"    # Landroid/app/backup/IBackupCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/app/IBackupAgent;->doQuotaExceeded(JJLandroid/app/backup/IBackupCallback;)V

    return-void
.end method

.method public preflightCheck()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/fullbackup/FullBackupPreflight;

    if-nez v0, :cond_0

    .line 214
    const/4 v0, 0x0

    return v0

    .line 216
    :cond_0
    invoke-direct {p0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->initializeAgent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/fullbackup/FullBackupPreflight;

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    invoke-interface {v0, v1, v2}, Lcom/android/server/backup/fullbackup/FullBackupPreflight;->preflightFullBackup(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)I

    move-result v0

    .line 221
    .local v0, "result":I
    return v0

    .line 223
    .end local v0    # "result":I
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to bind to full agent for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/16 v0, -0x3eb

    return v0
.end method

.method public sendQuotaExceeded(JJ)V
    .locals 7
    .param p1, "backupDataBytes"    # J
    .param p3, "quotaBytes"    # J

    .line 287
    invoke-direct {p0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->initializeAgent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    :try_start_0
    new-instance v0, Lcom/android/server/backup/fullbackup/-$$Lambda$FullBackupEngine$LOxiPZZ-0md-PJkeX7qAKOXet5g;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/backup/fullbackup/-$$Lambda$FullBackupEngine$LOxiPZZ-0md-PJkeX7qAKOXet5g;-><init>(Lcom/android/server/backup/fullbackup/FullBackupEngine;JJ)V

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 291
    invoke-virtual {v1}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getQuotaExceededTimeoutMillis()J

    move-result-wide v1

    .line 289
    invoke-static {v0, v1, v2}, Lcom/android/server/backup/remote/RemoteCall;->execute(Lcom/android/server/backup/remote/RemoteCallable;J)Lcom/android/server/backup/remote/RemoteResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Remote exception while telling agent about quota exceeded"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method
