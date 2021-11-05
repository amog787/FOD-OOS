.class public Lcom/android/server/backup/KeyValueAdbBackupEngine;
.super Ljava/lang/Object;
.source "KeyValueAdbBackupEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;
    }
.end annotation


# static fields
.field private static final BACKUP_KEY_VALUE_BACKUP_DATA_FILENAME_SUFFIX:Ljava/lang/String; = ".data"

.field private static final BACKUP_KEY_VALUE_BLANK_STATE_FILENAME:Ljava/lang/String; = "blank_state"

.field private static final BACKUP_KEY_VALUE_DIRECTORY_NAME:Ljava/lang/String; = "key_value_dir"

.field private static final BACKUP_KEY_VALUE_NEW_STATE_FILENAME_SUFFIX:Ljava/lang/String; = ".new"

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "KeyValueAdbBackupEngine"


# instance fields
.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field private mBackupData:Landroid/os/ParcelFileDescriptor;

.field private final mBackupDataName:Ljava/io/File;

.field private mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private final mBlankStateName:Ljava/io/File;

.field private final mCurrentPackage:Landroid/content/pm/PackageInfo;

.field private final mDataDir:Ljava/io/File;

.field private final mManifestFile:Ljava/io/File;

.field private mNewState:Landroid/os/ParcelFileDescriptor;

.field private final mNewStateName:Ljava/io/File;

.field private final mOutput:Ljava/io/OutputStream;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mSavedState:Landroid/os/ParcelFileDescriptor;

.field private final mStateDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/UserBackupManagerService;Landroid/content/pm/PackageManager;Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p3, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p4, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p5, "baseStateDir"    # Ljava/io/File;
    .param p6, "dataDir"    # Ljava/io/File;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mOutput:Ljava/io/OutputStream;

    .line 73
    iput-object p2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 74
    iput-object p3, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 75
    iput-object p4, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 77
    iput-object p6, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mDataDir:Ljava/io/File;

    .line 78
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "key_value_dir"

    invoke-direct {v0, p5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mStateDir:Ljava/io/File;

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 81
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 83
    .local v0, "pkg":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mStateDir:Ljava/io/File;

    const-string v3, "blank_state"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBlankStateName:Ljava/io/File;

    .line 84
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mDataDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupDataName:Ljava/io/File;

    .line 86
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mStateDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".new"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mNewStateName:Ljava/io/File;

    .line 89
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mDataDir:Ljava/io/File;

    const-string v3, "_manifest"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mManifestFile:Ljava/io/File;

    .line 90
    nop

    .line 91
    invoke-virtual {p3}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v1

    .line 90
    const-string v2, "Timeout parameters cannot be null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/KeyValueAdbBackupEngine;

    .line 45
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/KeyValueAdbBackupEngine;

    .line 45
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mManifestFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/KeyValueAdbBackupEngine;

    .line 45
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mDataDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/KeyValueAdbBackupEngine;

    .line 45
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupDataName:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Lcom/android/server/backup/UserBackupManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/KeyValueAdbBackupEngine;

    .line 45
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    return-object v0
.end method

.method private bindToAgent(Landroid/content/pm/ApplicationInfo;)Landroid/app/IBackupAgent;
    .locals 3
    .param p1, "targetApp"    # Landroid/content/pm/ApplicationInfo;

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/backup/UserBackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error in binding to agent for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyValueAdbBackupEngine"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v1, 0x0

    return-object v1
.end method

.method private cleanup()V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .line 301
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBlankStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 302
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mNewStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 303
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 304
    return-void
.end method

.method private invokeAgentForAdbBackup(Ljava/lang/String;Landroid/app/IBackupAgent;)Z
    .locals 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agent"    # Landroid/app/IBackupAgent;

    .line 159
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "KeyValueAdbBackupEngine"

    iget-object v0, v1, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v10

    .line 160
    .local v10, "token":I
    iget-object v0, v1, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getKvBackupAgentTimeoutMillis()J

    move-result-wide v11

    .line 162
    .local v11, "kvBackupAgentTimeoutMillis":J
    const/4 v13, 0x0

    :try_start_0
    iget-object v4, v1, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v5, v10

    move-wide v6, v11

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 165
    new-instance v0, Lcom/android/server/backup/remote/ServiceBackupCallback;

    iget-object v4, v1, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 167
    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v4

    invoke-direct {v0, v4, v10}, Lcom/android/server/backup/remote/ServiceBackupCallback;-><init>(Landroid/app/backup/IBackupManager;I)V

    move-object/from16 v20, v0

    .line 169
    .local v20, "callback":Landroid/app/backup/IBackupCallback;
    iget-object v15, v1, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mSavedState:Landroid/os/ParcelFileDescriptor;

    iget-object v0, v1, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupData:Landroid/os/ParcelFileDescriptor;

    iget-object v4, v1, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mNewState:Landroid/os/ParcelFileDescriptor;

    const-wide v18, 0x7fffffffffffffffL

    const/16 v21, 0x0

    move-object/from16 v14, p2

    move-object/from16 v16, v0

    move-object/from16 v17, v4

    invoke-interface/range {v14 .. v21}, Landroid/app/IBackupAgent;->doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;JLandroid/app/backup/IBackupCallback;I)V

    .line 176
    iget-object v0, v1, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/backup/UserBackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Key-value backup failed on package "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    return v13

    .line 183
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 184
    .end local v20    # "callback":Landroid/app/backup/IBackupCallback;
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error invoking agent for backup on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return v13
.end method

.method private prepareBackupFiles(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBlankStateName:Ljava/io/File;

    const/high16 v1, 0x18000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 135
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupDataName:Ljava/io/File;

    const/high16 v1, 0x3c000000    # 0.0078125f

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 138
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupDataName:Ljava/io/File;

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELinux restorecon failed on "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KeyValueAdbBackupEngine"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mNewStateName:Ljava/io/File;

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 144
    return-void
.end method

.method private writeBackupData()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    const-string v0, "KeyValueAdbBackupEngine"

    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v1

    .line 256
    .local v1, "token":I
    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getKvBackupAgentTimeoutMillis()J

    move-result-wide v8

    .line 258
    .local v8, "kvBackupAgentTimeoutMillis":J
    const/4 v2, 0x0

    .line 260
    .local v2, "pipes":[Landroid/os/ParcelFileDescriptor;
    const/4 v10, 0x0

    const/4 v11, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v12, v3

    .line 262
    .end local v2    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .local v12, "pipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_1
    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, v1

    move-wide v4, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 270
    new-instance v2, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;

    iget-object v3, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    aget-object v4, v12, v11

    invoke-direct {v2, p0, v3, v4, v1}, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;-><init>(Lcom/android/server/backup/KeyValueAdbBackupEngine;Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)V

    .line 272
    .local v2, "runner":Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;
    aget-object v3, v12, v11

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 273
    const/4 v3, 0x0

    aput-object v3, v12, v11

    .line 274
    new-instance v3, Ljava/lang/Thread;

    const-string/jumbo v4, "key-value-app-data-runner"

    invoke-direct {v3, v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 275
    .local v3, "t":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 278
    aget-object v4, v12, v10

    iget-object v5, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-static {v4, v5}, Lcom/android/server/backup/utils/FullBackupUtils;->routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V

    .line 280
    iget-object v4, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/backup/UserBackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Full backup failed on package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    .end local v2    # "runner":Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;
    .end local v3    # "t":Ljava/lang/Thread;
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 292
    if-eqz v12, :cond_1

    .line 293
    aget-object v0, v12, v10

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 294
    aget-object v0, v12, v11

    :goto_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .line 291
    :catchall_0
    move-exception v0

    move-object v2, v12

    goto :goto_3

    .line 287
    :catch_0
    move-exception v2

    goto :goto_1

    .line 291
    .end local v12    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .local v2, "pipes":[Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 287
    :catch_1
    move-exception v3

    move-object v12, v2

    move-object v2, v3

    .line 288
    .local v2, "e":Ljava/io/IOException;
    .restart local v12    # "pipes":[Landroid/os/ParcelFileDescriptor;
    :goto_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error backing up "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 291
    nop

    .end local v2    # "e":Ljava/io/IOException;
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 292
    if-eqz v12, :cond_1

    .line 293
    aget-object v0, v12, v10

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 294
    aget-object v0, v12, v11

    goto :goto_0

    .line 297
    :cond_1
    :goto_2
    return-void

    .line 291
    .end local v12    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .local v2, "pipes":[Landroid/os/ParcelFileDescriptor;
    :goto_3
    iget-object v3, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 292
    if-eqz v2, :cond_2

    .line 293
    aget-object v3, v2, v10

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 294
    aget-object v3, v2, v11

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 296
    :cond_2
    throw v0
.end method


# virtual methods
.method public backupOnePackage()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    const-string v0, "KeyValueAdbBackupEngine"

    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 99
    .local v1, "targetApp":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->prepareBackupFiles(Ljava/lang/String;)V

    .line 101
    invoke-direct {p0, v1}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->bindToAgent(Landroid/content/pm/ApplicationInfo;)Landroid/app/IBackupAgent;

    move-result-object v2

    .line 103
    .local v2, "agent":Landroid/app/IBackupAgent;
    if-nez v2, :cond_0

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed binding to BackupAgent for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-direct {p0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->cleanup()V

    .line 107
    return-void

    .line 111
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->invokeAgentForAdbBackup(Ljava/lang/String;Landroid/app/IBackupAgent;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Backup Failed for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    invoke-direct {p0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->cleanup()V

    .line 114
    return-void

    .line 118
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->writeBackupData()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    .end local v2    # "agent":Landroid/app/IBackupAgent;
    nop

    :goto_0
    invoke-direct {p0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->cleanup()V

    .line 125
    goto :goto_1

    .line 124
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 119
    :catch_0
    move-exception v2

    .line 120
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed creating files for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " will ignore package. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    nop

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 126
    :goto_1
    return-void

    .line 124
    :goto_2
    invoke-direct {p0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->cleanup()V

    .line 125
    throw v0
.end method
