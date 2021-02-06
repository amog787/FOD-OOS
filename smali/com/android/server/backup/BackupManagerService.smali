.class public Lcom/android/server/backup/BackupManagerService;
.super Landroid/app/backup/IBackupManager$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final BACKUP_ACTIVATED_FILENAME:Ljava/lang/String; = "backup-activated"

.field private static final BACKUP_DISABLE_PROPERTY:Ljava/lang/String; = "ro.backup.disable"

.field private static final BACKUP_SUPPRESS_FILENAME:Ljava/lang/String; = "backup-suppress"

.field private static final BACKUP_THREAD:Ljava/lang/String; = "backup"

.field public static final DEBUG:Z = true

.field public static final DEBUG_SCHEDULING:Z = true

.field static final DUMP_RUNNING_USERS_MESSAGE:Ljava/lang/String; = "Backup Manager is running for users:"

.field public static final MORE_DEBUG:Z = false

.field private static final REMEMBER_ACTIVATED_FILENAME:Ljava/lang/String; = "backup-remember-activated"

.field public static final TAG:Ljava/lang/String; = "BackupManagerService"

.field static sInstance:Lcom/android/server/backup/BackupManagerService;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGlobalDisable:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mStateLock:Ljava/lang/Object;

.field private final mTransportWhitelist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/UserBackupManagerService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 156
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;-><init>(Landroid/content/Context;Landroid/util/SparseArray;)V

    .line 157
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/SparseArray;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/UserBackupManagerService;",
            ">;)V"
        }
    .end annotation

    .line 160
    .local p2, "userServices":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/backup/UserBackupManagerService;>;"
    invoke-direct {p0}, Landroid/app/backup/IBackupManager$Stub;-><init>()V

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mStateLock:Ljava/lang/Object;

    .line 143
    new-instance v0, Lcom/android/server/backup/BackupManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/backup/BackupManagerService$1;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 161
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    .line 162
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->isBackupDisabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    .line 163
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "backup"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 165
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 166
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mHandler:Landroid/os/Handler;

    .line 167
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mUserManager:Landroid/os/UserManager;

    .line 168
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    .line 170
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getBackupTransportWhitelist()Landroid/util/ArraySet;

    move-result-object v1

    .line 171
    .local v1, "transportWhitelist":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    .line 172
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.USER_REMOVED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/backup/BackupManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;

    .line 91
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/backup/BackupManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # I

    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->onRemovedNonSystemUser(I)V

    return-void
.end method

.method private activateBackupForUserLocked(I)V
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    if-nez p1, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->getSuppressFileForSystemUser()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/backup/BackupManagerService;->deleteFile(Ljava/io/File;)V

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getActivatedFileForNonSystemUser(I)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/backup/BackupManagerService;->createFile(Ljava/io/File;)V

    .line 274
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

    .line 226
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    return-void

    .line 230
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 231
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
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

    .line 234
    :cond_1
    return-void
.end method

.method private deactivateBackupForUserLocked(I)V
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    if-nez p1, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->getSuppressFileForSystemUser()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/backup/BackupManagerService;->createFile(Ljava/io/File;)V

    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getActivatedFileForNonSystemUser(I)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/backup/BackupManagerService;->deleteFile(Ljava/io/File;)V

    .line 259
    :goto_0
    return-void
.end method

.method private deleteFile(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .line 238
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    return-void

    .line 242
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
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

    .line 245
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

    .line 415
    if-eqz p1, :cond_1

    .line 417
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->getUserManager()Landroid/os/UserManager;

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

    .line 419
    .local v0, "isRestrictedUser":Z
    :goto_1
    const-string v1, "No permission to configure backup activity"

    if-eqz v0, :cond_4

    .line 420
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUid()I

    move-result v2

    .line 421
    .local v2, "caller":I
    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_3

    if-nez v2, :cond_2

    goto :goto_2

    .line 422
    :cond_2
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 424
    .end local v2    # "caller":I
    :cond_3
    :goto_2
    goto :goto_3

    .line 425
    :cond_4
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :goto_3
    return-void
.end method

.method static getInstance()Lcom/android/server/backup/BackupManagerService;
    .locals 1

    .line 126
    sget-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/BackupManagerService;

    return-object v0
.end method

.method private isBackupActivatedForUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 294
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->getSuppressFileForSystemUser()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 295
    return v1

    .line 298
    :cond_0
    if-eqz p1, :cond_1

    .line 299
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getActivatedFileForNonSystemUser(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 298
    :cond_2
    return v1
.end method

.method private onRemovedNonSystemUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing state for non system user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {p1}, Lcom/android/server/backup/UserBackupManagerFiles;->getStateDirInSystemDir(I)Ljava/io/File;

    move-result-object v0

    .line 219
    .local v0, "dir":Ljava/io/File;
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete state dir for removed user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    return-void
.end method


# virtual methods
.method public acknowledgeAdbBackupOrRestore(IIZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "token"    # I
    .param p3, "allow"    # Z
    .param p4, "currentPassword"    # Ljava/lang/String;
    .param p5, "encryptionPassword"    # Ljava/lang/String;
    .param p6, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;

    .line 890
    nop

    .line 891
    const-string v0, "acknowledgeAdbBackupOrRestore()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 893
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 894
    move-object v1, v0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/backup/UserBackupManagerService;->acknowledgeAdbBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 897
    :cond_0
    return-void
.end method

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

    .line 903
    nop

    .line 904
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v1

    .line 903
    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/backup/BackupManagerService;->acknowledgeFullBackupOrRestoreForUser(IIZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 905
    return-void
.end method

.method public acknowledgeFullBackupOrRestoreForUser(IIZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .locals 1
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

    .line 873
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/backup/BackupManagerService;->acknowledgeAdbBackupOrRestore(IIZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 877
    :cond_0
    return-void
.end method

.method public adbBackup(ILandroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V
    .locals 14
    .param p1, "userId"    # I
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "includeApks"    # Z
    .param p4, "includeObbs"    # Z
    .param p5, "includeShared"    # Z
    .param p6, "doWidgets"    # Z
    .param p7, "doAllApps"    # Z
    .param p8, "includeSystem"    # Z
    .param p9, "doCompress"    # Z
    .param p10, "doKeyValue"    # Z
    .param p11, "packageNames"    # [Ljava/lang/String;

    .line 805
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 806
    return-void

    .line 808
    :cond_0
    nop

    .line 809
    const-string v0, "adbBackup()"

    move-object v1, p0

    move v2, p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 811
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_1

    .line 812
    move-object v3, v0

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v3 .. v13}, Lcom/android/server/backup/UserBackupManagerService;->adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V

    .line 824
    :cond_1
    return-void
.end method

.method public adbRestore(ILandroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 853
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 854
    return-void

    .line 856
    :cond_0
    nop

    .line 857
    const-string v0, "adbRestore()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 859
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_1

    .line 860
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->adbRestore(Landroid/os/ParcelFileDescriptor;)V

    .line 862
    :cond_1
    return-void
.end method

.method public agentConnected(ILjava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "agentBinder"    # Landroid/os/IBinder;

    .line 608
    nop

    .line 609
    const-string v0, "agentConnected()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 611
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 612
    invoke-virtual {v0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 614
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

    .line 600
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->agentConnectedForUser(ILjava/lang/String;Landroid/os/IBinder;)V

    .line 601
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

    .line 593
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->agentConnected(ILjava/lang/String;Landroid/os/IBinder;)V

    .line 596
    :cond_0
    return-void
.end method

.method public agentDisconnected(ILjava/lang/String;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 633
    nop

    .line 634
    const-string v0, "agentDisconnected()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 636
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->agentDisconnected(Ljava/lang/String;)V

    .line 639
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

    .line 625
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->agentDisconnectedForUser(ILjava/lang/String;)V

    .line 626
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

    .line 618
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->agentDisconnected(ILjava/lang/String;)V

    .line 621
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

    .line 770
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->backupNowForUser(I)V

    .line 771
    return-void
.end method

.method public backupNow(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 778
    nop

    .line 779
    const-string v0, "backupNow()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 781
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 782
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->backupNow()V

    .line 784
    :cond_0
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

    .line 763
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->backupNow(I)V

    .line 766
    :cond_0
    return-void
.end method

.method public beginFullBackup(ILcom/android/server/backup/FullBackupJob;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "scheduledJob"    # Lcom/android/server/backup/FullBackupJob;

    .line 1503
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1504
    return v1

    .line 1506
    :cond_0
    nop

    .line 1507
    const-string v0, "beginFullBackup()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1509
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_1

    .line 1510
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1509
    :goto_0
    return v1
.end method

.method public beginRestoreSession(ILjava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "transportName"    # Ljava/lang/String;

    .line 1251
    nop

    .line 1252
    const-string v0, "beginRestoreSession()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1254
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_0

    .line 1255
    const/4 v1, 0x0

    goto :goto_0

    .line 1256
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v1

    .line 1254
    :goto_0
    return-object v1
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

    .line 1240
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1241
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->beginRestoreSession(ILjava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1240
    :goto_0
    return-object v0
.end method

.method protected binderGetCallingUid()I
    .locals 1

    .line 191
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method protected binderGetCallingUserId()I
    .locals 1

    .line 187
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

    .line 1378
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->cancelBackupsForUser(I)V

    .line 1379
    return-void
.end method

.method public cancelBackups(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 1383
    nop

    .line 1384
    const-string v0, "cancelBackups()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1386
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 1387
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->cancelBackups()V

    .line 1389
    :cond_0
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

    .line 1371
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1372
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->cancelBackups(I)V

    .line 1374
    :cond_0
    return-void
.end method

.method public clearBackupData(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "transportName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 576
    nop

    .line 577
    const-string v0, "clearBackupData()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 579
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 580
    invoke-virtual {v0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
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

    .line 587
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->clearBackupDataForUser(ILjava/lang/String;Ljava/lang/String;)V

    .line 588
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

    .line 566
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->clearBackupData(ILjava/lang/String;Ljava/lang/String;)V

    .line 569
    :cond_0
    return-void
.end method

.method public dataChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 532
    nop

    .line 533
    const-string v0, "dataChanged()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 535
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->dataChanged(Ljava/lang/String;)V

    .line 538
    :cond_0
    return-void
.end method

.method public dataChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 523
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->dataChangedForUser(ILjava/lang/String;)V

    .line 524
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

    .line 516
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->dataChanged(ILjava/lang/String;)V

    .line 519
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1449
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "BackupManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1450
    return-void

    .line 1452
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->dumpWithoutCheckingPermission(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1453
    return-void
.end method

.method dumpWithoutCheckingPermission(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1457
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    .line 1458
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1459
    const-string v1, "Inactive"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1460
    return-void

    .line 1463
    :cond_0
    if-eqz p3, :cond_4

    .line 1464
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p3, v2

    .line 1465
    .local v3, "arg":Ljava/lang/String;
    const-string v4, "-h"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1466
    const-string v1, "\'dumpsys backup\' optional arguments:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1467
    const-string v1, "  -h       : this help text"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1468
    const-string v1, "  a[gents] : dump information about defined backup agents"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1469
    const-string v1, "  transportclients : dump information about transport clients"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1470
    const-string v1, "  transportstats : dump transport statts"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1471
    const-string v1, "  users    : dump the list of users for which backup service is running"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1473
    return-void

    .line 1474
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "users"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1475
    const-string v1, "Backup Manager is running for users:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1476
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1476
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1479
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1480
    return-void

    .line 1464
    .end local v3    # "arg":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1485
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 1486
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    .line 1487
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    const-string v3, "dump()"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v2

    .line 1488
    .local v2, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v2, :cond_5

    .line 1489
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1485
    .end local v2    # "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1492
    .end local v1    # "i":I
    :cond_6
    return-void
.end method

.method public endFullBackup(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 1518
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1519
    return-void

    .line 1521
    :cond_0
    nop

    .line 1522
    const-string v0, "endFullBackup()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1524
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_1

    .line 1525
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->endFullBackup()V

    .line 1527
    :cond_1
    return-void
.end method

.method enforceCallingPermissionOnUserId(ILjava/lang/String;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 1580
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1581
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    :cond_0
    return-void
.end method

.method public excludeKeysFromRestore(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1535
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1536
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returning from excludeKeysFromRestore as backup for user"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not initialized yet"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    return-void

    .line 1541
    :cond_0
    nop

    .line 1542
    const-string v1, "excludeKeysFromRestore()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v1

    .line 1544
    .local v1, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v1, :cond_1

    .line 1545
    invoke-virtual {v1, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->excludeKeysFromRestore(Ljava/lang/String;Ljava/util/List;)V

    .line 1547
    :cond_1
    return-void
.end method

.method public filterAppsEligibleForBackup(I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packages"    # [Ljava/lang/String;

    .line 1327
    nop

    .line 1328
    const-string v0, "filterAppsEligibleForBackup()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1330
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_0

    .line 1331
    const/4 v1, 0x0

    goto :goto_0

    .line 1332
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->filterAppsEligibleForBackup([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1330
    :goto_0
    return-object v1
.end method

.method public filterAppsEligibleForBackupForUser(I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packages"    # [Ljava/lang/String;

    .line 1319
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->filterAppsEligibleForBackup(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public fullTransportBackup(I[Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageNames"    # [Ljava/lang/String;

    .line 838
    nop

    .line 839
    const-string v0, "fullTransportBackup()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 841
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 842
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->fullTransportBackup([Ljava/lang/String;)V

    .line 844
    :cond_0
    return-void
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

    .line 829
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 830
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->fullTransportBackup(I[Ljava/lang/String;)V

    .line 832
    :cond_0
    return-void
.end method

.method protected getActivatedFileForNonSystemUser(I)Ljava/io/File;
    .locals 1
    .param p1, "userId"    # I

    .line 207
    const-string v0, "backup-activated"

    invoke-static {v0, p1}, Lcom/android/server/backup/UserBackupManagerFiles;->getStateFileInSystemDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableRestoreToken(ILjava/lang/String;)J
    .locals 3
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1294
    nop

    .line 1295
    const-string v0, "getAvailableRestoreToken()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1297
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_0

    .line 1298
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 1299
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v1

    .line 1297
    :goto_0
    return-wide v1
.end method

.method public getAvailableRestoreTokenForUser(ILjava/lang/String;)J
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1286
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->getAvailableRestoreToken(ILjava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method getBackupHandler()Landroid/os/Handler;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getConfigurationIntent(ILjava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "transportName"    # Ljava/lang/String;

    .line 1154
    nop

    .line 1155
    const-string v0, "getConfigurationIntent()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1157
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_0

    .line 1158
    const/4 v1, 0x0

    goto :goto_0

    .line 1159
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1157
    :goto_0
    return-object v1
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1144
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->getConfigurationIntentForUser(ILjava/lang/String;)Landroid/content/Intent;

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

    .line 1137
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->getConfigurationIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 1138
    :cond_0
    const/4 v0, 0x0

    .line 1137
    :goto_0
    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 915
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->getCurrentTransportForUser(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTransport(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .line 921
    nop

    .line 922
    const-string v0, "getCurrentTransport()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 924
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_0

    .line 925
    const/4 v1, 0x0

    goto :goto_0

    .line 926
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getCurrentTransport()Ljava/lang/String;

    move-result-object v1

    .line 924
    :goto_0
    return-object v1
.end method

.method public getCurrentTransportComponent(I)Landroid/content/ComponentName;
    .locals 2
    .param p1, "userId"    # I

    .line 945
    nop

    .line 946
    const-string v0, "getCurrentTransportComponent()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 948
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_0

    .line 949
    const/4 v1, 0x0

    goto :goto_0

    .line 950
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getCurrentTransportComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 948
    :goto_0
    return-object v1
.end method

.method public getCurrentTransportComponentForUser(I)Landroid/content/ComponentName;
    .locals 1
    .param p1, "userId"    # I

    .line 936
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getCurrentTransportComponent(I)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

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

    .line 910
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getCurrentTransport(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDataManagementIntent(ILjava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "transportName"    # Ljava/lang/String;

    .line 1208
    nop

    .line 1209
    const-string v0, "getDataManagementIntent()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1211
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_0

    .line 1212
    const/4 v1, 0x0

    goto :goto_0

    .line 1213
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1211
    :goto_0
    return-object v1
.end method

.method public getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1202
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->getDataManagementIntentForUser(ILjava/lang/String;)Landroid/content/Intent;

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

    .line 1195
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1196
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->getDataManagementIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1195
    :goto_0
    return-object v0
.end method

.method public getDataManagementLabel(ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "transportName"    # Ljava/lang/String;

    .line 1229
    nop

    .line 1230
    const-string v0, "getDataManagementLabel()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1232
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_0

    .line 1233
    const/4 v1, 0x0

    goto :goto_0

    .line 1234
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->getDataManagementLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1232
    :goto_0
    return-object v1
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

    .line 1219
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->getDataManagementLabel(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1220
    :cond_0
    const/4 v0, 0x0

    .line 1219
    :goto_0
    return-object v0
.end method

.method public getDestinationString(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "transportName"    # Ljava/lang/String;

    .line 1184
    nop

    .line 1185
    const-string v0, "getDestinationString()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1187
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_0

    .line 1188
    const/4 v1, 0x0

    goto :goto_0

    .line 1189
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1187
    :goto_0
    return-object v1
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1170
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->getDestinationStringForUser(ILjava/lang/String;)Ljava/lang/String;

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

    .line 1164
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->getDestinationString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1165
    :cond_0
    const/4 v0, 0x0

    .line 1164
    :goto_0
    return-object v0
.end method

.method protected getRememberActivatedFileForNonSystemUser(I)Ljava/io/File;
    .locals 1
    .param p1, "userId"    # I

    .line 202
    const-string v0, "backup-remember-activated"

    invoke-static {v0, p1}, Lcom/android/server/backup/UserBackupManagerFiles;->getStateFileInSystemDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .line 1564
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->enforceCallingPermissionOnUserId(ILjava/lang/String;)V

    .line 1565
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/UserBackupManagerService;

    .line 1566
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_0

    .line 1567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for unknown user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    :cond_0
    return-object v0
.end method

.method protected getSuppressFileForSystemUser()Ljava/io/File;
    .locals 3

    .line 196
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/backup/UserBackupManagerFiles;->getBaseStateDir(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "backup-suppress"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTransportWhitelist()[Ljava/lang/String;
    .locals 6

    .line 993
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    .line 994
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 995
    const/4 v1, 0x0

    return-object v1

    .line 998
    :cond_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 999
    .local v1, "whitelistedTransports":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1000
    .local v2, "i":I
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1001
    .local v4, "component":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 1002
    nop

    .end local v4    # "component":Landroid/content/ComponentName;
    add-int/lit8 v2, v2, 0x1

    .line 1003
    goto :goto_0

    .line 1004
    :cond_1
    return-object v1
.end method

.method public getUserForAncestralSerialNumber(J)Landroid/os/UserHandle;
    .locals 11
    .param p1, "ancestralSerialNumber"    # J

    .line 1402
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1403
    return-object v1

    .line 1405
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1406
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1409
    .local v2, "oldId":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1411
    .local v4, "userIds":[I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1412
    nop

    .line 1414
    array-length v6, v4

    :goto_0
    if-ge v5, v6, :cond_2

    aget v7, v4, v5

    .line 1415
    .local v7, "userId":I
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/backup/UserBackupManagerService;

    .line 1416
    .local v8, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v8, :cond_1

    .line 1417
    invoke-virtual {v8}, Lcom/android/server/backup/UserBackupManagerService;->getAncestralSerialNumber()J

    move-result-wide v9

    cmp-long v9, v9, p1

    if-nez v9, :cond_1

    .line 1418
    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    return-object v1

    .line 1414
    .end local v7    # "userId":I
    .end local v8    # "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1423
    :cond_2
    return-object v1

    .line 1411
    .end local v4    # "userIds":[I
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1412
    throw v1
.end method

.method protected getUserManager()Landroid/os/UserManager;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method public getUserService(I)Lcom/android/server/backup/UserBackupManagerService;
    .locals 1
    .param p1, "userId"    # I

    .line 406
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/UserBackupManagerService;

    return-object v0
.end method

.method getUserServices()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/UserBackupManagerService;",
            ">;"
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    return-object v0
.end method

.method public hasBackupPassword()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 750
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    .line 751
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 752
    return v2

    .line 754
    :cond_0
    nop

    .line 755
    const-string v1, "hasBackupPassword()"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v1

    .line 758
    .local v1, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->hasBackupPassword()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public initializeTransports(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "transportNames"    # [Ljava/lang/String;
    .param p3, "observer"    # Landroid/app/backup/IBackupObserver;

    .line 555
    nop

    .line 556
    const-string v0, "initializeTransports()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 558
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {v0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->initializeTransports([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V

    .line 561
    :cond_0
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

    .line 547
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->initializeTransports(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V

    .line 550
    :cond_0
    return-void
.end method

.method public isAppEligibleForBackup(ILjava/lang/String;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1310
    nop

    .line 1311
    const-string/jumbo v0, "isAppEligibleForBackup()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1313
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 1314
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->isAppEligibleForBackup(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1313
    :goto_0
    return v1
.end method

.method public isAppEligibleForBackupForUser(ILjava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1304
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->isAppEligibleForBackup(ILjava/lang/String;)Z

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

    .line 183
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

    .line 719
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isBackupEnabledForUser(I)Z

    move-result v0

    return v0
.end method

.method public isBackupEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 726
    nop

    .line 727
    const-string/jumbo v0, "isBackupEnabled()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 729
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->isBackupEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isBackupEnabledForUser(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 714
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isBackupEnabled(I)Z

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

    .line 509
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 510
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isBackupActivatedForUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 511
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isUserReadyForBackup(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 284
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    .line 285
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 284
    :goto_0
    return v1
.end method

.method public synthetic lambda$onStopUser$1$BackupManagerService(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 396
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    if-nez v0, :cond_0

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stopping service for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->stopServiceForUser(I)V

    .line 400
    :cond_0
    return-void
.end method

.method public synthetic lambda$onUnlockUser$0$BackupManagerService(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 321
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->startServiceForUser(I)V

    return-void
.end method

.method public listAllTransportComponents(I)[Landroid/content/ComponentName;
    .locals 2
    .param p1, "userId"    # I

    .line 983
    nop

    .line 984
    const-string/jumbo v0, "listAllTransportComponents()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 986
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_0

    .line 987
    const/4 v1, 0x0

    goto :goto_0

    .line 988
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->listAllTransportComponents()[Landroid/content/ComponentName;

    move-result-object v1

    .line 986
    :goto_0
    return-object v1
.end method

.method public listAllTransportComponentsForUser(I)[Landroid/content/ComponentName;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 976
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 977
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->listAllTransportComponents(I)[Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 976
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

    .line 971
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->listAllTransportsForUser(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public listAllTransports(I)[Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .line 961
    nop

    .line 962
    const-string/jumbo v0, "listAllTransports()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 964
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_0

    .line 965
    const/4 v1, 0x0

    goto :goto_0

    .line 966
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->listAllTransports()[Ljava/lang/String;

    move-result-object v1

    .line 964
    :goto_0
    return-object v1
.end method

.method public listAllTransportsForUser(I)[Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 955
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->listAllTransports(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method onStopUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 394
    new-instance v0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$PzvNLQ5gp1PWnFQ6Pxc6Lw6ubKU;

    invoke-direct {v0, p0, p1}, Lcom/android/server/backup/-$$Lambda$BackupManagerService$PzvNLQ5gp1PWnFQ6Pxc6Lw6ubKU;-><init>(Lcom/android/server/backup/BackupManagerService;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->postToHandler(Ljava/lang/Runnable;)V

    .line 401
    return-void
.end method

.method onUnlockUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 321
    new-instance v0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$6P4GQiH-FZ5t_w1XVcGR55OdSL4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/backup/-$$Lambda$BackupManagerService$6P4GQiH-FZ5t_w1XVcGR55OdSL4;-><init>(Lcom/android/server/backup/BackupManagerService;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->postToHandler(Ljava/lang/Runnable;)V

    .line 322
    return-void
.end method

.method public opComplete(IIJ)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "token"    # I
    .param p3, "result"    # J

    .line 1276
    nop

    .line 1277
    const-string/jumbo v0, "opComplete()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1279
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 1280
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/backup/UserBackupManagerService;->opComplete(IJ)V

    .line 1282
    :cond_0
    return-void
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

    .line 1268
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->opCompleteForUser(IIJ)V

    .line 1269
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

    .line 1261
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1262
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/backup/BackupManagerService;->opComplete(IIJ)V

    .line 1264
    :cond_0
    return-void
.end method

.method protected postToHandler(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 311
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 312
    return-void
.end method

.method public requestBackup(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p4, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p5, "flags"    # I

    .line 1361
    nop

    .line 1362
    const-string/jumbo v0, "requestBackup()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1364
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_0

    .line 1365
    const/16 v1, -0x7d1

    goto :goto_0

    .line 1366
    :cond_0
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/server/backup/UserBackupManagerService;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v1

    .line 1364
    :goto_0
    return v1
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

    .line 1347
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/backup/BackupManagerService;->requestBackupForUser(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v0

    return v0
.end method

.method public requestBackupForUser(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I
    .locals 1
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

    .line 1338
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1339
    const/16 v0, -0x7d1

    return v0

    .line 1341
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/backup/BackupManagerService;->requestBackup(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v0

    return v0
.end method

.method public restoreAtInstall(ILjava/lang/String;I)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "token"    # I

    .line 659
    nop

    .line 660
    const-string/jumbo v0, "restoreAtInstall()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 662
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 663
    invoke-virtual {v0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->restoreAtInstall(Ljava/lang/String;I)V

    .line 665
    :cond_0
    return-void
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

    .line 651
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->restoreAtInstallForUser(ILjava/lang/String;I)V

    .line 652
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

    .line 644
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->restoreAtInstall(ILjava/lang/String;I)V

    .line 647
    :cond_0
    return-void
.end method

.method public selectBackupTransport(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "transportName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1094
    nop

    .line 1095
    const-string/jumbo v0, "selectBackupTransport()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1097
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_0

    .line 1098
    const/4 v1, 0x0

    goto :goto_0

    .line 1099
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1097
    :goto_0
    return-object v1
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1082
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->selectBackupTransportForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public selectBackupTransportAsync(ILandroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "transportComponent"    # Landroid/content/ComponentName;
    .param p3, "listener"    # Landroid/app/backup/ISelectBackupTransportCallback;

    .line 1126
    nop

    .line 1127
    const-string/jumbo v0, "selectBackupTransportAsync()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1129
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 1130
    invoke-virtual {v0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->selectBackupTransportAsync(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    .line 1132
    :cond_0
    return-void
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

    .line 1105
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1106
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->selectBackupTransportAsync(ILandroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    goto :goto_0

    .line 1108
    :cond_0
    if-eqz p3, :cond_1

    .line 1110
    const/16 v0, -0x7d1

    :try_start_0
    invoke-interface {p3, v0}, Landroid/app/backup/ISelectBackupTransportCallback;->onFailure(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1113
    goto :goto_0

    .line 1111
    :catch_0
    move-exception v0

    .line 1116
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

    .line 1076
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1077
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->selectBackupTransport(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1076
    :goto_0
    return-object v0
.end method

.method public setAncestralSerialNumber(J)V
    .locals 2
    .param p1, "ancestralSerialNumber"    # J

    .line 1434
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    if-eqz v0, :cond_0

    .line 1435
    return-void

    .line 1437
    :cond_0
    nop

    .line 1439
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1438
    const-string/jumbo v1, "setAncestralSerialNumber()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1442
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_1

    .line 1443
    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->setAncestralSerialNumber(J)V

    .line 1445
    :cond_1
    return-void
.end method

.method public setAutoRestore(IZ)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "autoRestore"    # Z

    .line 704
    nop

    .line 705
    const-string/jumbo v0, "setAutoRestore()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 707
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->setAutoRestore(Z)V

    .line 710
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

    .line 699
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->setAutoRestoreForUser(IZ)V

    .line 700
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

    .line 692
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->setAutoRestore(IZ)V

    .line 695
    :cond_0
    return-void
.end method

.method public setBackupEnabled(IZ)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "enable"    # Z

    .line 682
    nop

    .line 683
    const-string/jumbo v0, "setBackupEnabled()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 685
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 686
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->setBackupEnabled(Z)V

    .line 688
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

    .line 677
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->setBackupEnabledForUser(IZ)V

    .line 678
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

    .line 670
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->setBackupEnabled(IZ)V

    .line 673
    :cond_0
    return-void
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "currentPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;

    .line 735
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    .line 736
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 737
    return v2

    .line 739
    :cond_0
    nop

    .line 740
    const-string/jumbo v1, "setBackupPassword()"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v1

    .line 743
    .local v1, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v1, :cond_1

    .line 744
    invoke-virtual {v1, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 743
    :goto_0
    return v2
.end method

.method public setBackupServiceActive(IZ)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "makeActive"    # Z

    .line 439
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->enforcePermissionsOnUser(I)V

    .line 449
    if-eqz p1, :cond_0

    .line 451
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getRememberActivatedFileForNonSystemUser(I)Ljava/io/File;

    move-result-object v0

    .line 452
    .local v0, "rememberFile":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/android/server/backup/BackupManagerService;->createFile(Ljava/io/File;)V

    .line 453
    invoke-static {v0, p2}, Lcom/android/server/backup/utils/RandomAccessFileUtils;->writeBoolean(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    .end local v0    # "rememberFile":Ljava/io/File;
    goto :goto_0

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    const-string v2, "Unable to persist backup service activity"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 459
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    if-eqz v0, :cond_1

    .line 460
    const-string v0, "BackupManagerService"

    const-string v1, "Backup service not supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return-void

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 465
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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 466
    if-eqz p2, :cond_3

    .line 468
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->activateBackupForUserLocked(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 471
    goto :goto_2

    .line 469
    :catch_1
    move-exception v1

    .line 470
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    const-string v2, "BackupManagerService"

    const-string v3, "Unable to persist backup service activity"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 478
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 480
    .local v1, "oldId":J
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->startServiceForUser(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 482
    :try_start_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 483
    nop

    .line 484
    .end local v1    # "oldId":J
    goto :goto_4

    .line 482
    .restart local v1    # "oldId":J
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 483
    nop

    .end local p0    # "this":Lcom/android/server/backup/BackupManagerService;
    .end local p1    # "userId":I
    .end local p2    # "makeActive":Z
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 488
    .end local v1    # "oldId":J
    .restart local p0    # "this":Lcom/android/server/backup/BackupManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "makeActive":Z
    :cond_3
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->deactivateBackupForUserLocked(I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 491
    goto :goto_3

    .line 489
    :catch_2
    move-exception v1

    .line 490
    .local v1, "e":Ljava/io/IOException;
    :try_start_7
    const-string v2, "BackupManagerService"

    const-string v3, "Unable to persist backup service inactivity"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->onStopUser(I)V

    .line 496
    :cond_4
    :goto_4
    monitor-exit v0

    .line 497
    return-void

    .line 496
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1
.end method

.method startServiceForUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 332
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    const-string v1, "BackupManagerService"

    if-eqz v0, :cond_0

    .line 333
    const-string v0, "Backup service not supported"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void

    .line 336
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isBackupActivatedForUser(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backup not activated for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return-void

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "userId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " already started, so not starting again"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return-void

    .line 344
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting service for user: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    .line 346
    invoke-static {p1, v0, p0, v1}, Lcom/android/server/backup/UserBackupManagerService;->createAndInitializeService(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerService;Ljava/util/Set;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 348
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->startServiceForUser(ILcom/android/server/backup/UserBackupManagerService;)V

    .line 349
    return-void
.end method

.method startServiceForUser(ILcom/android/server/backup/UserBackupManagerService;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "userBackupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;

    .line 356
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 358
    const-wide/16 v0, 0x40

    const-string v2, "backup enable"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->initializeBackupEnableState()V

    .line 360
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 361
    return-void
.end method

.method protected stopServiceForUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 366
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/UserBackupManagerService;

    .line 368
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->tearDownService()V

    .line 371
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(ILandroid/content/Context;)V

    .line 372
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/server/backup/FullBackupJob;->cancel(ILandroid/content/Context;)V

    .line 374
    :cond_0
    return-void
.end method

.method public updateTransportAttributes(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "transportComponent"    # Landroid/content/ComponentName;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "configurationIntent"    # Landroid/content/Intent;
    .param p5, "currentDestinationString"    # Ljava/lang/String;
    .param p6, "dataManagementIntent"    # Landroid/content/Intent;
    .param p7, "dataManagementLabel"    # Ljava/lang/CharSequence;

    .line 1059
    nop

    .line 1060
    const-string/jumbo v0, "updateTransportAttributes()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1062
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 1063
    move-object v1, v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/backup/UserBackupManagerService;->updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    .line 1071
    :cond_0
    return-void
.end method

.method public updateTransportAttributesForUser(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "transportComponent"    # Landroid/content/ComponentName;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "configurationIntent"    # Landroid/content/Intent;
    .param p5, "currentDestinationString"    # Ljava/lang/String;
    .param p6, "dataManagementIntent"    # Landroid/content/Intent;
    .param p7, "dataManagementLabel"    # Ljava/lang/CharSequence;

    .line 1016
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1017
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/backup/BackupManagerService;->updateTransportAttributes(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    .line 1026
    :cond_0
    return-void
.end method
