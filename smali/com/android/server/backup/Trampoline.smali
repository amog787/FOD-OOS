.class public Lcom/android/server/backup/Trampoline;
.super Landroid/app/backup/IBackupManager$Stub;
.source "Trampoline.java"


# static fields
.field private static final BACKUP_ACTIVATED_FILENAME:Ljava/lang/String; = "backup-activated"

.field private static final BACKUP_DISABLE_PROPERTY:Ljava/lang/String; = "ro.backup.disable"

.field private static final BACKUP_SUPPRESS_FILENAME:Ljava/lang/String; = "backup-suppress"

.field private static final BACKUP_THREAD:Ljava/lang/String; = "backup"

.field private static final REMEMBER_ACTIVATED_FILENAME:Ljava/lang/String; = "backup-remember-activated"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGlobalDisable:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private volatile mService:Lcom/android/server/backup/BackupManagerService;

.field private final mStateLock:Ljava/lang/Object;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 116
    invoke-direct {p0}, Landroid/app/backup/IBackupManager$Stub;-><init>()V

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/Trampoline;->mStateLock:Ljava/lang/Object;

    .line 117
    iput-object p1, p0, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    .line 118
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->isBackupDisabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/backup/Trampoline;->mGlobalDisable:Z

    .line 119
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "backup"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/backup/Trampoline;->mHandlerThread:Landroid/os/HandlerThread;

    .line 120
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 121
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/backup/Trampoline;->mHandler:Landroid/os/Handler;

    .line 122
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/Trampoline;->mUserManager:Landroid/os/UserManager;

    .line 123
    return-void
.end method

.method private activateBackupForUserLocked(I)V
    .locals 1
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStateLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    if-nez p1, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->getSuppressFileForSystemUser()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/backup/Trampoline;->deleteFile(Ljava/io/File;)V

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/Trampoline;->getActivatedFileForNonSystemUser(I)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/backup/Trampoline;->createFile(Ljava/io/File;)V

    .line 203
    :goto_0
    return-void
.end method

.method private createFile(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    return-void

    .line 159
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 160
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_1
    return-void
.end method

.method private deactivateBackupForUserLocked(I)V
    .locals 1
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStateLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    if-nez p1, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->getSuppressFileForSystemUser()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/backup/Trampoline;->createFile(Ljava/io/File;)V

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/Trampoline;->getActivatedFileForNonSystemUser(I)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/backup/Trampoline;->deleteFile(Ljava/io/File;)V

    .line 188
    :goto_0
    return-void
.end method

.method private deleteFile(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .line 167
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    return-void

    .line 171
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to delete file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_1
    return-void
.end method

.method private enforcePermissionsOnUser(I)V
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 302
    if-eqz p1, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 306
    .local v0, "isRestrictedUser":Z
    :goto_1
    const-string v1, "No permission to configure backup activity"

    if-eqz v0, :cond_4

    .line 307
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->binderGetCallingUid()I

    move-result v2

    .line 308
    .local v2, "caller":I
    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_3

    if-nez v2, :cond_2

    goto :goto_2

    .line 309
    :cond_2
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 311
    .end local v2    # "caller":I
    :cond_3
    :goto_2
    goto :goto_3

    .line 312
    :cond_4
    iget-object v2, p0, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v2, p0, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :goto_3
    return-void
.end method

.method private isBackupActivatedForUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 218
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->getSuppressFileForSystemUser()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 219
    return v1

    .line 222
    :cond_0
    if-eqz p1, :cond_1

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/server/backup/Trampoline;->getActivatedFileForNonSystemUser(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 222
    :cond_2
    return v1
.end method

.method private isUserReadyForBackup(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 208
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getServiceUsers()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isBackupActivatedForUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 208
    :goto_0
    return v0
.end method

.method private startServiceForUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 276
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isBackupActivatedForUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting service for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->startServiceForUser(I)V

    .line 280
    :cond_0
    return-void
.end method


# virtual methods
.method public acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .locals 7
    .param p1, "token"    # I
    .param p2, "allow"    # Z
    .param p3, "curPassword"    # Ljava/lang/String;
    .param p4, "encryptionPassword"    # Ljava/lang/String;
    .param p5, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 580
    nop

    .line 581
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->binderGetCallingUserId()I

    move-result v1

    .line 580
    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/backup/Trampoline;->acknowledgeFullBackupOrRestoreForUser(IIZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 582
    return-void
.end method

.method public acknowledgeFullBackupOrRestoreForUser(IIZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "token"    # I
    .param p3, "allow"    # Z
    .param p4, "curPassword"    # Ljava/lang/String;
    .param p5, "encryptionPassword"    # Ljava/lang/String;
    .param p6, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 570
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/backup/BackupManagerService;->acknowledgeAdbBackupOrRestore(IIZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 574
    :cond_0
    return-void
.end method

.method public adbBackup(ILandroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V
    .locals 13
    .param p1, "userId"    # I
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "includeApks"    # Z
    .param p4, "includeObbs"    # Z
    .param p5, "includeShared"    # Z
    .param p6, "doWidgets"    # Z
    .param p7, "allApps"    # Z
    .param p8, "allIncludesSystem"    # Z
    .param p9, "doCompress"    # Z
    .param p10, "doKeyValue"    # Z
    .param p11, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 540
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    move v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/backup/BackupManagerService;->adbBackup(ILandroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V

    goto :goto_0

    .line 540
    :cond_0
    move-object v0, p0

    .line 544
    :goto_0
    return-void
.end method

.method public adbRestore(ILandroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 556
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->adbRestore(ILandroid/os/ParcelFileDescriptor;)V

    .line 559
    :cond_0
    return-void
.end method

.method public agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agent"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 449
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/backup/Trampoline;->agentConnectedForUser(ILjava/lang/String;Landroid/os/IBinder;)V

    .line 450
    return-void
.end method

.method public agentConnectedForUser(ILjava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "agent"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 442
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->agentConnected(ILjava/lang/String;Landroid/os/IBinder;)V

    .line 445
    :cond_0
    return-void
.end method

.method public agentDisconnected(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 461
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/Trampoline;->agentDisconnectedForUser(ILjava/lang/String;)V

    .line 462
    return-void
.end method

.method public agentDisconnectedForUser(ILjava/lang/String;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 454
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->agentDisconnected(ILjava/lang/String;)V

    .line 457
    :cond_0
    return-void
.end method

.method public backupNow()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 533
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/Trampoline;->backupNowForUser(I)V

    .line 534
    return-void
.end method

.method public backupNowForUser(I)V
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 526
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->backupNow(I)V

    .line 529
    :cond_0
    return-void
.end method

.method beginFullBackup(ILcom/android/server/backup/FullBackupJob;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "scheduledJob"    # Lcom/android/server/backup/FullBackupJob;

    .line 815
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->beginFullBackup(ILcom/android/server/backup/FullBackupJob;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public beginRestoreSessionForUser(ILjava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "transportID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 724
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->beginRestoreSession(ILjava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v0

    goto :goto_0

    .line 725
    :cond_0
    const/4 v0, 0x0

    .line 724
    :goto_0
    return-object v0
.end method

.method protected binderGetCallingUid()I
    .locals 1

    .line 134
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method protected binderGetCallingUserId()I
    .locals 1

    .line 130
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    return v0
.end method

.method public cancelBackups()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 783
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/Trampoline;->cancelBackupsForUser(I)V

    .line 784
    return-void
.end method

.method public cancelBackupsForUser(I)V
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 776
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->cancelBackups(I)V

    .line 779
    :cond_0
    return-void
.end method

.method public clearBackupData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "transportName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 436
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/backup/Trampoline;->clearBackupDataForUser(ILjava/lang/String;Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public clearBackupDataForUser(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "transportName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 428
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->clearBackupData(ILjava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_0
    return-void
.end method

.method protected createBackupManagerService()Lcom/android/server/backup/BackupManagerService;
    .locals 3

    .line 235
    new-instance v0, Lcom/android/server/backup/BackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/backup/Trampoline;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/server/backup/BackupManagerService;-><init>(Landroid/content/Context;Lcom/android/server/backup/Trampoline;Landroid/os/HandlerThread;)V

    return-object v0
.end method

.method public dataChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 414
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/Trampoline;->dataChangedForUser(ILjava/lang/String;)V

    .line 415
    return-void
.end method

.method public dataChangedForUser(ILjava/lang/String;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 407
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->dataChanged(ILjava/lang/String;)V

    .line 410
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 803
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    const-string v1, "BackupManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 804
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->binderGetCallingUserId()I

    move-result v0

    .line 805
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 806
    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    .line 808
    :cond_1
    const-string v1, "Inactive"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 810
    :goto_0
    return-void
.end method

.method endFullBackup(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 819
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->endFullBackup(I)V

    .line 822
    :cond_0
    return-void
.end method

.method public filterAppsEligibleForBackupForUser(I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packages"    # [Ljava/lang/String;

    .line 754
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->filterAppsEligibleForBackup(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 755
    :cond_0
    const/4 v0, 0x0

    .line 754
    :goto_0
    return-object v0
.end method

.method public fullTransportBackupForUser(I[Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 549
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->fullTransportBackup(I[Ljava/lang/String;)V

    .line 552
    :cond_0
    return-void
.end method

.method protected getActivatedFileForNonSystemUser(I)Ljava/io/File;
    .locals 1
    .param p1, "userId"    # I

    .line 150
    const-string v0, "backup-activated"

    invoke-static {v0, p1}, Lcom/android/server/backup/UserBackupManagerFiles;->getStateFileInSystemDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableRestoreTokenForUser(ILjava/lang/String;)J
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 742
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->getAvailableRestoreToken(ILjava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 743
    :cond_0
    const-wide/16 v0, 0x0

    .line 742
    :goto_0
    return-wide v0
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 687
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/Trampoline;->getConfigurationIntentForUser(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getConfigurationIntentForUser(ILjava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 680
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->getConfigurationIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 681
    :cond_0
    const/4 v0, 0x0

    .line 680
    :goto_0
    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 592
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/Trampoline;->getCurrentTransportForUser(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTransportComponentForUser(I)Landroid/content/ComponentName;
    .locals 1
    .param p1, "userId"    # I

    .line 602
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->getCurrentTransportComponent(I)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    .line 603
    :cond_0
    const/4 v0, 0x0

    .line 602
    :goto_0
    return-object v0
.end method

.method public getCurrentTransportForUser(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 587
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->getCurrentTransport(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 711
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/Trampoline;->getDataManagementIntentForUser(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getDataManagementIntentForUser(ILjava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 704
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->getDataManagementIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 705
    :cond_0
    const/4 v0, 0x0

    .line 704
    :goto_0
    return-object v0
.end method

.method public getDataManagementLabelForUser(ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 717
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->getDataManagementLabel(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 718
    :cond_0
    const/4 v0, 0x0

    .line 717
    :goto_0
    return-object v0
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 698
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/Trampoline;->getDestinationStringForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDestinationStringForUser(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 692
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->getDestinationString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 693
    :cond_0
    const/4 v0, 0x0

    .line 692
    :goto_0
    return-object v0
.end method

.method protected getRememberActivatedFileForNonSystemUser(I)Ljava/io/File;
    .locals 1
    .param p1, "userId"    # I

    .line 145
    const-string v0, "backup-remember-activated"

    invoke-static {v0, p1}, Lcom/android/server/backup/UserBackupManagerFiles;->getStateFileInSystemDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected getSuppressFileForSystemUser()Ljava/io/File;
    .locals 3

    .line 139
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/backup/UserBackupManagerFiles;->getBaseStateDir(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "backup-suppress"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTransportWhitelist()[Ljava/lang/String;
    .locals 2

    .line 624
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->binderGetCallingUserId()I

    move-result v0

    .line 625
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getTransportWhitelist()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getUserForAncestralSerialNumber(J)Landroid/os/UserHandle;
    .locals 1
    .param p1, "ancestralSerialNumber"    # J

    .line 788
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->getUserForAncestralSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0

    .line 791
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getUserManager()Landroid/os/UserManager;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method public hasBackupPassword()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 520
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->binderGetCallingUserId()I

    move-result v0

    .line 521
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->hasBackupPassword()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method initializeService()V
    .locals 1

    .line 248
    new-instance v0, Lcom/android/server/backup/-$$Lambda$Trampoline$RB5ywBeynPqhAQ6VHW4qi9U4c84;

    invoke-direct {v0, p0}, Lcom/android/server/backup/-$$Lambda$Trampoline$RB5ywBeynPqhAQ6VHW4qi9U4c84;-><init>(Lcom/android/server/backup/Trampoline;)V

    invoke-virtual {p0, v0}, Lcom/android/server/backup/Trampoline;->postToHandler(Ljava/lang/Runnable;)V

    .line 262
    return-void
.end method

.method public initializeTransportsForUser(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "transportNames"    # [Ljava/lang/String;
    .param p3, "observer"    # Landroid/app/backup/IBackupObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 420
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->initializeTransports(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V

    .line 423
    :cond_0
    return-void
.end method

.method public isAppEligibleForBackupForUser(ILjava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 748
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->isAppEligibleForBackup(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isBackupDisabled()Z
    .locals 2

    .line 126
    const-string/jumbo v0, "ro.backup.disable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBackupEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 509
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/Trampoline;->isBackupEnabledForUser(I)Z

    move-result v0

    return v0
.end method

.method public isBackupEnabledForUser(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 504
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->isBackupEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBackupServiceActive(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 400
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 401
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isBackupActivatedForUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 402
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$initializeService$0$Trampoline()V
    .locals 4

    .line 250
    const-wide/16 v0, 0x40

    const-string v2, "backup init"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 251
    iget-boolean v2, p0, Lcom/android/server/backup/Trampoline;->mGlobalDisable:Z

    if-eqz v2, :cond_0

    .line 252
    const-string v0, "BackupManagerService"

    const-string v1, "Backup service not supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-void

    .line 255
    :cond_0
    iget-object v2, p0, Lcom/android/server/backup/Trampoline;->mStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 256
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    if-nez v3, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->createBackupManagerService()Lcom/android/server/backup/BackupManagerService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    .line 259
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 261
    return-void

    .line 259
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public synthetic lambda$stopUser$2$Trampoline(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 289
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    if-eqz v0, :cond_0

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stopping service for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->stopServiceForUser(I)V

    .line 293
    :cond_0
    return-void
.end method

.method public synthetic lambda$unlockUser$1$Trampoline(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 270
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->startServiceForUser(I)V

    return-void
.end method

.method public listAllTransportComponentsForUser(I)[Landroid/content/ComponentName;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 618
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->listAllTransportComponents(I)[Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    .line 619
    :cond_0
    const/4 v0, 0x0

    .line 618
    :goto_0
    return-object v0
.end method

.method public listAllTransports()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 613
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/Trampoline;->listAllTransportsForUser(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public listAllTransportsForUser(I)[Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 608
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->listAllTransports(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public opComplete(IJ)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "result"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 737
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/backup/Trampoline;->opCompleteForUser(IIJ)V

    .line 738
    return-void
.end method

.method public opCompleteForUser(IIJ)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "token"    # I
    .param p3, "result"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 730
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/backup/BackupManagerService;->opComplete(IIJ)V

    .line 733
    :cond_0
    return-void
.end method

.method protected postToHandler(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 239
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 240
    return-void
.end method

.method public requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I
    .locals 6
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p3, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 770
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->binderGetCallingUserId()I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/backup/Trampoline;->requestBackupForUser(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v0

    return v0
.end method

.method public requestBackupForUser(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I
    .locals 7
    .param p1, "userId"    # I
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p4, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 761
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 762
    const/16 v0, -0x7d1

    return v0

    .line 764
    :cond_0
    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/backup/BackupManagerService;->requestBackup(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v0

    return v0
.end method

.method public restoreAtInstall(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 474
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/backup/Trampoline;->restoreAtInstallForUser(ILjava/lang/String;I)V

    .line 475
    return-void
.end method

.method public restoreAtInstallForUser(ILjava/lang/String;I)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 467
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->restoreAtInstall(ILjava/lang/String;I)V

    .line 470
    :cond_0
    return-void
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 658
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/Trampoline;->selectBackupTransportForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public selectBackupTransportAsyncForUser(ILandroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "transport"    # Landroid/content/ComponentName;
    .param p3, "listener"    # Landroid/app/backup/ISelectBackupTransportCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 664
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->selectBackupTransportAsync(ILandroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    goto :goto_0

    .line 667
    :cond_0
    if-eqz p3, :cond_1

    .line 669
    const/16 v0, -0x7d1

    :try_start_0
    invoke-interface {p3, v0}, Landroid/app/backup/ISelectBackupTransportCallback;->onFailure(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    goto :goto_0

    .line 670
    :catch_0
    move-exception v0

    .line 675
    :cond_1
    :goto_0
    return-void
.end method

.method public selectBackupTransportForUser(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 652
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->selectBackupTransport(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 653
    :cond_0
    const/4 v0, 0x0

    .line 652
    :goto_0
    return-object v0
.end method

.method public setAncestralSerialNumber(J)V
    .locals 1
    .param p1, "ancestralSerialNumber"    # J

    .line 796
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->setAncestralSerialNumber(J)V

    .line 799
    :cond_0
    return-void
.end method

.method public setAutoRestore(Z)V
    .locals 1
    .param p1, "doAutoRestore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 499
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/Trampoline;->setAutoRestoreForUser(IZ)V

    .line 500
    return-void
.end method

.method public setAutoRestoreForUser(IZ)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "doAutoRestore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 492
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->setAutoRestore(IZ)V

    .line 495
    :cond_0
    return-void
.end method

.method public setBackupEnabled(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 487
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/Trampoline;->setBackupEnabledForUser(IZ)V

    .line 488
    return-void
.end method

.method public setBackupEnabledForUser(IZ)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 480
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->setBackupEnabled(IZ)V

    .line 483
    :cond_0
    return-void
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "currentPw"    # Ljava/lang/String;
    .param p2, "newPw"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 514
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->binderGetCallingUserId()I

    move-result v0

    .line 515
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/backup/BackupManagerService;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setBackupServiceActive(IZ)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "makeActive"    # Z

    .line 326
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->enforcePermissionsOnUser(I)V

    .line 336
    if-eqz p1, :cond_0

    .line 338
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/Trampoline;->getRememberActivatedFileForNonSystemUser(I)Ljava/io/File;

    move-result-object v0

    .line 339
    .local v0, "rememberFile":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/android/server/backup/Trampoline;->createFile(Ljava/io/File;)V

    .line 340
    invoke-static {v0, p2}, Lcom/android/server/backup/utils/RandomAccessFileUtils;->writeBoolean(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    .end local v0    # "rememberFile":Ljava/io/File;
    goto :goto_0

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    const-string v2, "Unable to persist backup service activity"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 346
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/backup/Trampoline;->mGlobalDisable:Z

    if-eqz v0, :cond_1

    .line 347
    const-string v0, "BackupManagerService"

    const-string v1, "Backup service not supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-void

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    :try_start_1
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Making backup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    const-string v3, ""

    goto :goto_1

    :cond_2
    const-string v3, "in"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "active"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    if-eqz p2, :cond_4

    .line 354
    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    if-nez v1, :cond_3

    .line 355
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->createBackupManagerService()Lcom/android/server/backup/BackupManagerService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 358
    :cond_3
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->activateBackupForUserLocked(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 361
    goto :goto_2

    .line 359
    :catch_1
    move-exception v1

    .line 360
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    const-string v2, "BackupManagerService"

    const-string v3, "Unable to persist backup service activity"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 368
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 370
    .local v1, "oldId":J
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->startServiceForUser(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 372
    :try_start_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 373
    nop

    .line 374
    .end local v1    # "oldId":J
    goto :goto_4

    .line 372
    .restart local v1    # "oldId":J
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/backup/Trampoline;
    .end local p1    # "userId":I
    .end local p2    # "makeActive":Z
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 378
    .end local v1    # "oldId":J
    .restart local p0    # "this":Lcom/android/server/backup/Trampoline;
    .restart local p1    # "userId":I
    .restart local p2    # "makeActive":Z
    :cond_4
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->deactivateBackupForUserLocked(I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 381
    goto :goto_3

    .line 379
    :catch_2
    move-exception v1

    .line 380
    .local v1, "e":Ljava/io/IOException;
    :try_start_7
    const-string v2, "BackupManagerService"

    const-string v3, "Unable to persist backup service inactivity"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/server/backup/Trampoline;->stopUser(I)V

    .line 386
    :cond_5
    :goto_4
    monitor-exit v0

    .line 387
    return-void

    .line 386
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1
.end method

.method stopUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 287
    new-instance v0, Lcom/android/server/backup/-$$Lambda$Trampoline$a6uexAeN8zHcMQQ9h_KZ71UQV_A;

    invoke-direct {v0, p0, p1}, Lcom/android/server/backup/-$$Lambda$Trampoline$a6uexAeN8zHcMQQ9h_KZ71UQV_A;-><init>(Lcom/android/server/backup/Trampoline;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/backup/Trampoline;->postToHandler(Ljava/lang/Runnable;)V

    .line 294
    return-void
.end method

.method unlockUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 270
    new-instance v0, Lcom/android/server/backup/-$$Lambda$Trampoline$_vkvTSe7bkLYa64kIjWjqjTHe7E;

    invoke-direct {v0, p0, p1}, Lcom/android/server/backup/-$$Lambda$Trampoline$_vkvTSe7bkLYa64kIjWjqjTHe7E;-><init>(Lcom/android/server/backup/Trampoline;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/backup/Trampoline;->postToHandler(Ljava/lang/Runnable;)V

    .line 271
    return-void
.end method

.method public updateTransportAttributesForUser(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .locals 9
    .param p1, "userId"    # I
    .param p2, "transportComponent"    # Landroid/content/ComponentName;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "configurationIntent"    # Landroid/content/Intent;
    .param p5, "currentDestinationString"    # Ljava/lang/String;
    .param p6, "dataManagementIntent"    # Landroid/content/Intent;
    .param p7, "dataManagementLabel"    # Ljava/lang/CharSequence;

    .line 637
    invoke-direct {p0, p1}, Lcom/android/server/backup/Trampoline;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/backup/BackupManagerService;->updateTransportAttributes(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 637
    :cond_0
    move-object v0, p0

    .line 647
    :goto_0
    return-void
.end method
