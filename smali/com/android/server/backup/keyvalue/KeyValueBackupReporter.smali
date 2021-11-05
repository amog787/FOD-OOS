.class public Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;
.super Ljava/lang/Object;
.source "KeyValueBackupReporter.java"


# static fields
.field private static final DEBUG:Z = true

.field static final MORE_DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "KeyValueBackupTask"


# instance fields
.field private final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field private final mObserver:Landroid/app/backup/IBackupObserver;


# direct methods
.method constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;)V
    .locals 0
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p3, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 75
    iput-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 76
    iput-object p3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 77
    return-void
.end method

.method private getPackageName(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 371
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "no_package_yet"

    :goto_0
    return-object v0
.end method

.method static onNewThread(Ljava/lang/String;)V
    .locals 2
    .param p0, "threadName"    # Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Spinning thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyValueBackupTask"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method


# virtual methods
.method getMonitor()Landroid/app/backup/IBackupManagerMonitor;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-object v0
.end method

.method getObserver()Landroid/app/backup/IBackupObserver;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    return-object v0
.end method

.method onAgentCancelled(Landroid/content/pm/PackageInfo;)V
    .locals 5
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 349
    invoke-direct {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->getPackageName(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "packageName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancel backing up "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyValueBackupTask"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/16 v1, 0xb07

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 352
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 358
    const/4 v2, 0x0

    const-string v3, "android.app.backup.extra.LOG_CANCEL_ALL"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v2

    .line 353
    const/16 v3, 0x15

    const/4 v4, 0x2

    invoke-static {v1, v3, p1, v4, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 360
    return-void
.end method

.method onAgentDataError(Ljava/lang/String;Ljava/io/IOException;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/io/IOException;

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to read/write agent data for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyValueBackupTask"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method

.method onAgentDoQuotaExceededError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to notify about quota exceeded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyValueBackupTask"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-void
.end method

.method onAgentError(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v1, -0x3eb

    invoke-static {v0, p1, v1}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 175
    return-void
.end method

.method onAgentFilesReady(Ljava/io/File;)V
    .locals 0
    .param p1, "backupDataFile"    # Ljava/io/File;

    .line 187
    return-void
.end method

.method onAgentIllegalKey(Landroid/content/pm/PackageInfo;Ljava/lang/String;)V
    .locals 5
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "key"    # Ljava/lang/String;

    .line 209
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 210
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    const-string v3, "bad key"

    aput-object v3, v1, v2

    const/16 v2, 0xb07

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 211
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 217
    const/4 v2, 0x0

    const-string v3, "android.app.backup.extra.LOG_ILLEGAL_KEY"

    invoke-static {v2, v3, p2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 212
    const/4 v3, 0x5

    const/4 v4, 0x3

    invoke-static {v1, v3, p1, v4, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 219
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v2, -0x3eb

    invoke-static {v1, v0, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 226
    return-void
.end method

.method onAgentResultError(Landroid/content/pm/PackageInfo;)V
    .locals 4
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 363
    invoke-direct {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->getPackageName(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v2, -0x3eb

    invoke-static {v1, v0, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 366
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "result error"

    aput-object v3, v1, v2

    const/16 v2, 0xb07

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Agent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error in onBackup()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyValueBackupTask"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-void
.end method

.method onAgentTimedOut(Landroid/content/pm/PackageInfo;)V
    .locals 5
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 333
    invoke-direct {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->getPackageName(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "packageName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Agent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " timed out"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyValueBackupTask"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/16 v1, 0xb07

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 338
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 344
    const/4 v2, 0x0

    const-string v3, "android.app.backup.extra.LOG_CANCEL_ALL"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v2

    .line 339
    const/16 v3, 0x15

    const/4 v4, 0x2

    invoke-static {v1, v3, p1, v4, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 346
    return-void
.end method

.method onAgentUnknown(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 158
    const-string v0, "KeyValueBackupTask"

    const-string v1, "Package does not exist, skipping"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v1, -0x7d2

    invoke-static {v0, p1, v1}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 161
    return-void
.end method

.method onBackupFinished(I)V
    .locals 1
    .param p1, "status"    # I

    .line 414
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, p1}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 415
    return-void
.end method

.method onBindAgentError(Ljava/lang/String;Ljava/lang/SecurityException;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/SecurityException;

    .line 164
    const-string v0, "KeyValueBackupTask"

    const-string v1, "Error in bind/backup"

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v1, -0x3eb

    invoke-static {v0, p1, v1}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 167
    return-void
.end method

.method onCallAgentDoBackupError(Ljava/lang/String;ZLjava/lang/Exception;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingAgent"    # Z
    .param p3, "e"    # Ljava/lang/Exception;

    .line 194
    const-string v0, ": "

    const-string v1, "KeyValueBackupTask"

    if-eqz p2, :cond_0

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error invoking agent on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v1, -0x3eb

    invoke-static {v0, p1, v1}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_0

    .line 199
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error before invoking agent on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_0
    const/16 v0, 0xb07

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 202
    return-void
.end method

.method onCancel()V
    .locals 0

    .line 330
    return-void
.end method

.method onCloseFileDescriptorError(Ljava/lang/String;)V
    .locals 2
    .param p1, "logName"    # Ljava/lang/String;

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error closing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " file-descriptor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyValueBackupTask"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return-void
.end method

.method onDigestError(Ljava/security/NoSuchAlgorithmException;)V
    .locals 2
    .param p1, "e"    # Ljava/security/NoSuchAlgorithmException;

    .line 233
    const-string v0, "KeyValueBackupTask"

    const-string v1, "Unable to use SHA-1!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void
.end method

.method onEmptyData(Landroid/content/pm/PackageInfo;)V
    .locals 4
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 257
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 258
    const/4 v1, 0x7

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 264
    return-void
.end method

.method onEmptyQueueAtStart()V
    .locals 2

    .line 96
    const-string v0, "KeyValueBackupTask"

    const-string v1, "Backup begun with an empty queue, nothing to do"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method onExtractAgentData(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invoking agent on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyValueBackupTask"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void
.end method

.method onExtractPmAgentDataError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 131
    const-string v0, "KeyValueBackupTask"

    const-string v1, "Error during PM metadata backup"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    return-void
.end method

.method onFailAgentError(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error conveying failure to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyValueBackupTask"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void
.end method

.method onInitializeTransport(Ljava/lang/String;)V
    .locals 2
    .param p1, "transportName"    # Ljava/lang/String;

    .line 110
    const-string v0, "KeyValueBackupTask"

    const-string v1, "Initializing transport and resetting backup state"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method

.method onInitializeTransportError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 123
    const-string v0, "KeyValueBackupTask"

    const-string v1, "Error during initialization"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    return-void
.end method

.method onJournalDeleteFailed(Lcom/android/server/backup/DataChangedJournal;)V
    .locals 2
    .param p1, "journal"    # Lcom/android/server/backup/DataChangedJournal;

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to remove backup journal file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyValueBackupTask"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return-void
.end method

.method onPackageBackupComplete(Ljava/lang/String;J)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "size"    # J

    .line 267
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 269
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0xb08

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 270
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/UserBackupManagerService;->logBackupComplete(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method onPackageBackupNonIncrementalAndNonIncrementalRequired(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 303
    const-string v0, "KeyValueBackupTask"

    const-string v1, "Transport requested non-incremental but already the case"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v1, -0x3e8

    invoke-static {v0, p1, v1}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 306
    const/16 v0, 0xb06

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 307
    return-void
.end method

.method onPackageBackupNonIncrementalRequired(Landroid/content/pm/PackageInfo;)V
    .locals 4
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 293
    const-string v0, "KeyValueBackupTask"

    const-string v1, "Transport lost data, retrying package"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v1, 0x33

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    .line 300
    return-void
.end method

.method onPackageBackupQuotaExceeded(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 283
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v1, -0x3ed

    invoke-static {v0, p1, v1}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 285
    const/16 v0, 0xb0d

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 286
    return-void
.end method

.method onPackageBackupRejected(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v1, -0x3ea

    invoke-static {v0, p1, v1}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 276
    const-string v0, "Transport rejected"

    invoke-static {p1, v0}, Lcom/android/server/EventLogTags;->writeBackupAgentFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method onPackageBackupTransportError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transport error backing up "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyValueBackupTask"

    invoke-static {v1, v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v1, -0x3e8

    invoke-static {v0, p1, v1}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 319
    const/16 v0, 0xb06

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 320
    return-void
.end method

.method onPackageBackupTransportFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 310
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v1, -0x3e8

    invoke-static {v0, p1, v1}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 312
    const/16 v0, 0xb06

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 313
    return-void
.end method

.method onPackageEligibleForFullBackup(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " performs full-backup rather than key-value, skipping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyValueBackupTask"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v1, -0x7d1

    invoke-static {v0, p1, v1}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 150
    return-void
.end method

.method onPackageNotEligibleForBackup(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " no longer supports backup, skipping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyValueBackupTask"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v1, -0x7d1

    invoke-static {v0, p1, v1}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 142
    return-void
.end method

.method onPackageStopped(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v1, -0x7d1

    invoke-static {v0, p1, v1}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 155
    return-void
.end method

.method onPendingInitializeTransportError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to query transport name for pending init: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyValueBackupTask"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-void
.end method

.method onQueueReady(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 101
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Beginning backup of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " targets"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyValueBackupTask"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method onRemoteCallReturned(Lcom/android/server/backup/remote/RemoteResult;Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Lcom/android/server/backup/remote/RemoteResult;
    .param p2, "logIdentifier"    # Ljava/lang/String;

    .line 388
    return-void
.end method

.method onRestoreconFailed(Ljava/io/File;)V
    .locals 2
    .param p1, "backupDataFile"    # Ljava/io/File;

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELinux restorecon failed on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyValueBackupTask"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method

.method onRevertTask()V
    .locals 0

    .line 378
    return-void
.end method

.method onSetCurrentTokenError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transport threw reporting restore set: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyValueBackupTask"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return-void
.end method

.method onSkipBackup()V
    .locals 2

    .line 91
    const-string v0, "KeyValueBackupTask"

    const-string v1, "Skipping backup since one is already in progress"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method onSkipPm()V
    .locals 2

    .line 127
    const-string v0, "KeyValueBackupTask"

    const-string v1, "Skipping backup of PM metadata"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method onStartFullBackup(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 418
    .local p1, "pendingFullBackups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting full backups for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyValueBackupTask"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return-void
.end method

.method onStartPackageBackup(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting key-value backup of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyValueBackupTask"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method

.method onTaskFinished()V
    .locals 2

    .line 422
    const-string v0, "KeyValueBackupTask"

    const-string v1, "K/V backup pass finished"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return-void
.end method

.method onTransportInitialized(I)V
    .locals 2
    .param p1, "status"    # I

    .line 114
    if-nez p1, :cond_0

    .line 115
    const/16 v0, 0xb0b

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_0

    .line 117
    :cond_0
    const/16 v0, 0xb06

    const-string v1, "(initialize)"

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 118
    const-string v0, "KeyValueBackupTask"

    const-string v1, "Transport error in initializeDevice()"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_0
    return-void
.end method

.method onTransportNotInitialized(Ljava/lang/String;)V
    .locals 1
    .param p1, "transportName"    # Ljava/lang/String;

    .line 399
    const/16 v0, 0xb0a

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 403
    return-void
.end method

.method onTransportPerformBackup(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 251
    return-void
.end method

.method onTransportReady(Ljava/lang/String;)V
    .locals 1
    .param p1, "transportName"    # Ljava/lang/String;

    .line 106
    const/16 v0, 0xb05

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 107
    return-void
.end method

.method onTransportRequestBackupTimeError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to contact transport for recommended backoff: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyValueBackupTask"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return-void
.end method

.method onWriteWidgetData(Z[B)V
    .locals 0
    .param p1, "priorStateExists"    # Z
    .param p2, "widgetState"    # [B

    .line 245
    return-void
.end method
