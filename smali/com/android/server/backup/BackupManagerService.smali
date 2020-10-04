.class public Lcom/android/server/backup/BackupManagerService;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$Lifecycle;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final DEBUG_SCHEDULING:Z = true

.field static final DUMP_RUNNING_USERS_MESSAGE:Ljava/lang/String; = "Backup Manager is running for users:"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MORE_DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "BackupManagerService"

.field private static sInstance:Lcom/android/server/backup/Trampoline;


# instance fields
.field private final mBackupThread:Landroid/os/HandlerThread;

.field private final mContext:Landroid/content/Context;

.field private final mServiceUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/UserBackupManagerService;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrampoline:Lcom/android/server/backup/Trampoline;

.field private mTransportWhitelist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserRemovedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/backup/Trampoline;Landroid/os/HandlerThread;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "trampoline"    # Lcom/android/server/backup/Trampoline;
    .param p3, "backupThread"    # Landroid/os/HandlerThread;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mServiceUsers:Landroid/util/SparseArray;

    .line 97
    new-instance v0, Lcom/android/server/backup/BackupManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/backup/BackupManagerService$1;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 112
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    .line 113
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/Trampoline;

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTrampoline:Lcom/android/server/backup/Trampoline;

    .line 114
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupThread:Landroid/os/HandlerThread;

    .line 117
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 118
    .local v0, "systemConfig":Lcom/android/server/SystemConfig;
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getBackupTransportWhitelist()Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    .line 119
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 120
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/backup/BackupManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # I

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->onRemovedNonSystemUser(I)V

    return-void
.end method

.method static synthetic access$100()Lcom/android/server/backup/Trampoline;
    .locals 1

    .line 69
    sget-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/backup/Trampoline;)Lcom/android/server/backup/Trampoline;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/Trampoline;

    .line 69
    sput-object p0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    return-object p0
.end method

.method private enforceCallingPermissionOnUserId(ILjava/lang/String;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 149
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_0
    return-void
.end method

.method static getInstance()Lcom/android/server/backup/Trampoline;
    .locals 1

    .line 85
    sget-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    return-object v0
.end method

.method private onRemovedNonSystemUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing state for non system user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {p1}, Lcom/android/server/backup/UserBackupManagerFiles;->getStateDirInSystemDir(I)Ljava/io/File;

    move-result-object v0

    .line 136
    .local v0, "dir":Ljava/io/File;
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete state dir for removed user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
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

    .line 841
    nop

    .line 842
    const-string v0, "acknowledgeAdbBackupOrRestore()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 844
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 845
    move-object v1, v0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/backup/UserBackupManagerService;->acknowledgeAdbBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 848
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

    .line 798
    nop

    .line 799
    const-string v0, "adbBackup()"

    move-object v1, p0

    move v2, p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 801
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 802
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

    .line 814
    :cond_0
    return-void
.end method

.method public adbRestore(ILandroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 822
    nop

    .line 823
    const-string v0, "adbRestore()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 825
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 826
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->adbRestore(Landroid/os/ParcelFileDescriptor;)V

    .line 828
    :cond_0
    return-void
.end method

.method public agentConnected(ILjava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "agentBinder"    # Landroid/os/IBinder;

    .line 263
    nop

    .line 264
    const-string v0, "agentConnected()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 266
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 269
    :cond_0
    return-void
.end method

.method public agentDisconnected(ILjava/lang/String;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 276
    nop

    .line 277
    const-string v0, "agentDisconnected()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 279
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->agentDisconnected(Ljava/lang/String;)V

    .line 282
    :cond_0
    return-void
.end method

.method public backupNow(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 635
    nop

    .line 636
    const-string v0, "backupNow()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 638
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->backupNow()V

    .line 641
    :cond_0
    return-void
.end method

.method public beginFullBackup(ILcom/android/server/backup/FullBackupJob;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "scheduledJob"    # Lcom/android/server/backup/FullBackupJob;

    .line 680
    nop

    .line 681
    const-string v0, "beginFullBackup()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 683
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 684
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 683
    :goto_0
    return v1
.end method

.method public beginRestoreSession(ILjava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "transportName"    # Ljava/lang/String;

    .line 736
    nop

    .line 737
    const-string v0, "beginRestoreSession()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 739
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_0

    .line 740
    const/4 v1, 0x0

    goto :goto_0

    .line 741
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v1

    .line 739
    :goto_0
    return-object v1
.end method

.method public cancelBackups(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 663
    nop

    .line 664
    const-string v0, "cancelBackups()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 666
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 667
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->cancelBackups()V

    .line 669
    :cond_0
    return-void
.end method

.method public clearBackupData(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "transportName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 317
    nop

    .line 318
    const-string v0, "clearBackupData()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 320
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_0
    return-void
.end method

.method public dataChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 250
    nop

    .line 251
    const-string v0, "dataChanged()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 253
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->dataChanged(Ljava/lang/String;)V

    .line 256
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 856
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "BackupManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 857
    return-void

    .line 860
    :cond_0
    const/4 v0, 0x0

    if-eqz p3, :cond_3

    .line 861
    array-length v1, p3

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p3, v2

    .line 862
    .local v3, "arg":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "users"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 863
    const-string v0, "Backup Manager is running for users:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 864
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mServiceUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 865
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mServiceUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 864
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 867
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 868
    return-void

    .line 861
    .end local v3    # "arg":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 873
    :cond_3
    nop

    .line 874
    const-string v1, "dump()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 876
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_4

    .line 877
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 879
    :cond_4
    return-void
.end method

.method public endFullBackup(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 692
    nop

    .line 693
    const-string v0, "endFullBackup()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 695
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 696
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->endFullBackup()V

    .line 698
    :cond_0
    return-void
.end method

.method public filterAppsEligibleForBackup(I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packages"    # [Ljava/lang/String;

    .line 622
    nop

    .line 623
    const-string v0, "filterAppsEligibleForBackup()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 625
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_0

    .line 626
    const/4 v1, 0x0

    goto :goto_0

    .line 627
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->filterAppsEligibleForBackup([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 625
    :goto_0
    return-object v1
.end method

.method public fullTransportBackup(I[Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageNames"    # [Ljava/lang/String;

    .line 704
    nop

    .line 705
    const-string v0, "fullTransportBackup()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 707
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->fullTransportBackup([Ljava/lang/String;)V

    .line 710
    :cond_0
    return-void
.end method

.method public getAvailableRestoreToken(ILjava/lang/String;)J
    .locals 3
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 749
    nop

    .line 750
    const-string v0, "getAvailableRestoreToken()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 752
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_0

    .line 753
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 754
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v1

    .line 752
    :goto_0
    return-wide v1
.end method

.method public getConfigurationIntent(ILjava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "transportName"    # Ljava/lang/String;

    .line 470
    nop

    .line 471
    const-string v0, "getConfigurationIntent()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 473
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_0

    .line 474
    const/4 v1, 0x0

    goto :goto_0

    .line 475
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 473
    :goto_0
    return-object v1
.end method

.method public getCurrentTransport(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .line 328
    nop

    .line 329
    const-string v0, "getCurrentTransport()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 331
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_0

    .line 332
    const/4 v1, 0x0

    goto :goto_0

    .line 333
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getCurrentTransport()Ljava/lang/String;

    move-result-object v1

    .line 331
    :goto_0
    return-object v1
.end method

.method public getCurrentTransportComponent(I)Landroid/content/ComponentName;
    .locals 2
    .param p1, "userId"    # I

    .line 342
    nop

    .line 343
    const-string v0, "getCurrentTransportComponent()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 345
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_0

    .line 346
    const/4 v1, 0x0

    goto :goto_0

    .line 347
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getCurrentTransportComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 345
    :goto_0
    return-object v1
.end method

.method public getDataManagementIntent(ILjava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "transportName"    # Ljava/lang/String;

    .line 548
    nop

    .line 549
    const-string v0, "getDataManagementIntent()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 551
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_0

    .line 552
    const/4 v1, 0x0

    goto :goto_0

    .line 553
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 551
    :goto_0
    return-object v1
.end method

.method public getDataManagementLabel(ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "transportName"    # Ljava/lang/String;

    .line 562
    nop

    .line 563
    const-string v0, "getDataManagementLabel()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 565
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_0

    .line 566
    const/4 v1, 0x0

    goto :goto_0

    .line 567
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->getDataManagementLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 565
    :goto_0
    return-object v1
.end method

.method public getDestinationString(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "transportName"    # Ljava/lang/String;

    .line 537
    nop

    .line 538
    const-string v0, "getDestinationString()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 540
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_0

    .line 541
    const/4 v1, 0x0

    goto :goto_0

    .line 542
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 540
    :goto_0
    return-object v1
.end method

.method getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "caller"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 225
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->enforceCallingPermissionOnUserId(ILjava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mServiceUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/UserBackupManagerService;

    .line 227
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_0

    .line 228
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

    .line 230
    :cond_0
    return-object v0
.end method

.method public getServiceUsers()Landroid/util/SparseArray;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/UserBackupManagerService;",
            ">;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mServiceUsers:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getTransportWhitelist()[Ljava/lang/String;
    .locals 5

    .line 376
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 377
    .local v0, "whitelistedTransports":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 378
    .local v1, "i":I
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 379
    .local v3, "component":Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 380
    nop

    .end local v3    # "component":Landroid/content/ComponentName;
    add-int/lit8 v1, v1, 0x1

    .line 381
    goto :goto_0

    .line 382
    :cond_0
    return-object v0
.end method

.method public getUserForAncestralSerialNumber(J)Landroid/os/UserHandle;
    .locals 10
    .param p1, "ancestralSerialNumber"    # J

    .line 504
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 505
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 508
    .local v1, "oldId":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/UserManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    .local v3, "userIds":[I
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 512
    nop

    .line 514
    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_1

    aget v6, v3, v4

    .line 515
    .local v6, "userId":I
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->getServiceUsers()Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/backup/UserBackupManagerService;

    .line 516
    .local v7, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v7, :cond_0

    .line 517
    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->getAncestralSerialNumber()J

    move-result-wide v8

    cmp-long v8, v8, p1

    if-nez v8, :cond_0

    .line 518
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    return-object v4

    .line 514
    .end local v6    # "userId":I
    .end local v7    # "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 523
    :cond_1
    const/4 v4, 0x0

    return-object v4

    .line 511
    .end local v3    # "userIds":[I
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public hasBackupPassword()Z
    .locals 3

    .line 773
    nop

    .line 774
    const/4 v0, 0x0

    const-string v1, "hasBackupPassword()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v1

    .line 777
    .local v1, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->hasBackupPassword()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public initializeTransports(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "transportNames"    # [Ljava/lang/String;
    .param p3, "observer"    # Landroid/app/backup/IBackupObserver;

    .line 304
    nop

    .line 305
    const-string v0, "initializeTransports()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 307
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->initializeTransports([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V

    .line 310
    :cond_0
    return-void
.end method

.method public isAppEligibleForBackup(ILjava/lang/String;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 610
    nop

    .line 611
    const-string v0, "isAppEligibleForBackup()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 613
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->isAppEligibleForBackup(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 613
    :goto_0
    return v1
.end method

.method public isBackupEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 598
    nop

    .line 599
    const-string v0, "isBackupEnabled()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 601
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

.method public listAllTransportComponents(I)[Landroid/content/ComponentName;
    .locals 2
    .param p1, "userId"    # I

    .line 364
    nop

    .line 365
    const-string/jumbo v0, "listAllTransportComponents()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 367
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_0

    .line 368
    const/4 v1, 0x0

    goto :goto_0

    .line 369
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->listAllTransportComponents()[Landroid/content/ComponentName;

    move-result-object v1

    .line 367
    :goto_0
    return-object v1
.end method

.method public listAllTransports(I)[Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .line 353
    nop

    .line 354
    const-string/jumbo v0, "listAllTransports()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 356
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_0

    .line 357
    const/4 v1, 0x0

    goto :goto_0

    .line 358
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->listAllTransports()[Ljava/lang/String;

    move-result-object v1

    .line 356
    :goto_0
    return-object v1
.end method

.method public opComplete(IIJ)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "token"    # I
    .param p3, "result"    # J

    .line 289
    nop

    .line 290
    const-string/jumbo v0, "opComplete()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 292
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/backup/UserBackupManagerService;->opComplete(IJ)V

    .line 295
    :cond_0
    return-void
.end method

.method public requestBackup(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p4, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p5, "flags"    # I

    .line 653
    nop

    .line 654
    const-string/jumbo v0, "requestBackup()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 656
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_0

    .line 657
    const/16 v1, -0x7d1

    goto :goto_0

    .line 658
    :cond_0
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/server/backup/UserBackupManagerService;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v1

    .line 656
    :goto_0
    return v1
.end method

.method public restoreAtInstall(ILjava/lang/String;I)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "token"    # I

    .line 721
    nop

    .line 722
    const-string/jumbo v0, "restoreAtInstall()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 724
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 725
    invoke-virtual {v0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->restoreAtInstall(Ljava/lang/String;I)V

    .line 727
    :cond_0
    return-void
.end method

.method public selectBackupTransport(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "transportName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 439
    nop

    .line 440
    const-string/jumbo v0, "selectBackupTransport()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 442
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_0

    .line 443
    const/4 v1, 0x0

    goto :goto_0

    .line 444
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 442
    :goto_0
    return-object v1
.end method

.method public selectBackupTransportAsync(ILandroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "transportComponent"    # Landroid/content/ComponentName;
    .param p3, "listener"    # Landroid/app/backup/ISelectBackupTransportCallback;

    .line 455
    nop

    .line 456
    const-string/jumbo v0, "selectBackupTransportAsync()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 458
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {v0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->selectBackupTransportAsync(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    .line 461
    :cond_0
    return-void
.end method

.method public setAncestralSerialNumber(J)V
    .locals 2
    .param p1, "ancestralSerialNumber"    # J

    .line 485
    nop

    .line 487
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 486
    const-string/jumbo v1, "setAncestralSerialNumber()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 490
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->setAncestralSerialNumber(J)V

    .line 493
    :cond_0
    return-void
.end method

.method public setAutoRestore(IZ)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "autoRestore"    # Z

    .line 586
    nop

    .line 587
    const-string/jumbo v0, "setAutoRestore()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 589
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->setAutoRestore(Z)V

    .line 592
    :cond_0
    return-void
.end method

.method public setBackupEnabled(IZ)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "enable"    # Z

    .line 576
    nop

    .line 577
    const-string/jumbo v0, "setBackupEnabled()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 579
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 580
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->setBackupEnabled(Z)V

    .line 582
    :cond_0
    return-void
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "currentPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;

    .line 763
    nop

    .line 764
    const/4 v0, 0x0

    const-string/jumbo v1, "setBackupPassword()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v1

    .line 767
    .local v1, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v1, :cond_0

    .line 768
    invoke-virtual {v1, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 767
    :goto_0
    return v0
.end method

.method protected startServiceForUser(I)V
    .locals 3
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mServiceUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "userId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " already started, so not starting again"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTrampoline:Lcom/android/server/backup/Trampoline;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    .line 171
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->createAndInitializeService(ILandroid/content/Context;Lcom/android/server/backup/Trampoline;Ljava/util/Set;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 173
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->startServiceForUser(ILcom/android/server/backup/UserBackupManagerService;)V

    .line 174
    return-void
.end method

.method startServiceForUser(ILcom/android/server/backup/UserBackupManagerService;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "userBackupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;

    .line 181
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mServiceUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    const-wide/16 v0, 0x40

    const-string v2, "backup enable"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->initializeBackupEnableState()V

    .line 185
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 186
    return-void
.end method

.method protected stopServiceForUser(I)V
    .locals 2
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mServiceUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/UserBackupManagerService;

    .line 193
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->tearDownService()V

    .line 196
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(ILandroid/content/Context;)V

    .line 197
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/server/backup/FullBackupJob;->cancel(ILandroid/content/Context;)V

    .line 199
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

    .line 416
    nop

    .line 417
    const-string/jumbo v0, "updateTransportAttributes()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 419
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_0

    .line 420
    move-object v1, v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/backup/UserBackupManagerService;->updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    .line 428
    :cond_0
    return-void
.end method
