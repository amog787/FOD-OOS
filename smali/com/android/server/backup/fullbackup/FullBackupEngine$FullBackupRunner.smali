.class Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;
.super Ljava/lang/Object;
.source "FullBackupEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/fullbackup/FullBackupEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullBackupRunner"
.end annotation


# instance fields
.field private final mAgent:Landroid/app/IBackupAgent;

.field private final mFilesDir:Ljava/io/File;

.field private final mIncludeApks:Z

.field private final mPackage:Landroid/content/pm/PackageInfo;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPipe:Landroid/os/ParcelFileDescriptor;

.field private final mToken:I

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;


# direct methods
.method constructor <init>(Lcom/android/server/backup/fullbackup/FullBackupEngine;Lcom/android/server/backup/UserBackupManagerService;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZ)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/backup/fullbackup/FullBackupEngine;
    .param p2, "userBackupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p3, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p4, "agent"    # Landroid/app/IBackupAgent;
    .param p5, "pipe"    # Landroid/os/ParcelFileDescriptor;
    .param p6, "token"    # I
    .param p7, "includeApks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mUserId:I

    .line 87
    invoke-static {p1}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->access$000(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 88
    iput-object p3, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    .line 89
    iput-object p4, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mAgent:Landroid/app/IBackupAgent;

    .line 90
    invoke-virtual {p5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    .line 91
    iput p6, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mToken:I

    .line 92
    iput-boolean p7, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mIncludeApks:Z

    .line 93
    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mFilesDir:Ljava/io/File;

    .line 94
    return-void
.end method

.method private shouldWriteApk(Landroid/content/pm/ApplicationInfo;ZZ)Z
    .locals 4
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "includeApks"    # Z
    .param p3, "isSharedStorage"    # Z

    .line 175
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 176
    .local v0, "isSystemApp":Z
    :goto_0
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 178
    .local v3, "isUpdatedSystemApp":Z
    :goto_1
    if-eqz p2, :cond_3

    if-nez p3, :cond_3

    if-eqz v0, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1
.end method


# virtual methods
.method public run()V
    .locals 22

    .line 99
    move-object/from16 v1, p0

    const-string v2, "BackupManagerService"

    :try_start_0
    new-instance v0, Landroid/app/backup/FullBackupDataOutput;

    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    const-wide/16 v4, -0x1

    iget-object v6, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 100
    invoke-static {v6}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->access$100(Lcom/android/server/backup/fullbackup/FullBackupEngine;)I

    move-result v6

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/app/backup/FullBackupDataOutput;-><init>(Landroid/os/ParcelFileDescriptor;JI)V

    .line 101
    .local v0, "output":Landroid/app/backup/FullBackupDataOutput;
    new-instance v3, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;

    iget-object v4, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v3, v0, v4}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;-><init>(Landroid/app/backup/FullBackupDataOutput;Landroid/content/pm/PackageManager;)V

    .line 104
    .local v3, "appMetadataBackupWriter":Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;
    iget-object v4, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 105
    .local v4, "packageName":Ljava/lang/String;
    const-string v5, "com.android.sharedstoragebackup"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 106
    .local v5, "isSharedStorage":Z
    iget-object v6, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v7, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mIncludeApks:Z

    .line 107
    invoke-direct {v1, v6, v7, v5}, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->shouldWriteApk(Landroid/content/pm/ApplicationInfo;ZZ)Z

    move-result v6

    .line 109
    .local v6, "writeApk":Z
    if-nez v5, :cond_0

    .line 114
    new-instance v7, Ljava/io/File;

    iget-object v8, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mFilesDir:Ljava/io/File;

    const-string v9, "_manifest"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    .local v7, "manifestFile":Ljava/io/File;
    iget-object v8, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v9, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mFilesDir:Ljava/io/File;

    invoke-virtual {v3, v8, v7, v9, v6}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->backupManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;Ljava/io/File;Z)V

    .line 117
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 120
    iget v8, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mUserId:I

    .line 121
    invoke-static {v4, v8}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v8

    .line 122
    .local v8, "widgetData":[B
    if-eqz v8, :cond_0

    array-length v9, v8

    if-lez v9, :cond_0

    .line 123
    new-instance v9, Ljava/io/File;

    iget-object v10, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mFilesDir:Ljava/io/File;

    const-string v11, "_meta"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    .local v9, "metadataFile":Ljava/io/File;
    iget-object v10, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v11, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mFilesDir:Ljava/io/File;

    invoke-virtual {v3, v10, v9, v11, v8}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->backupWidget(Landroid/content/pm/PackageInfo;Ljava/io/File;Ljava/io/File;[B)V

    .line 126
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 131
    .end local v7    # "manifestFile":Ljava/io/File;
    .end local v8    # "widgetData":[B
    .end local v9    # "metadataFile":Ljava/io/File;
    :cond_0
    if-eqz v6, :cond_1

    .line 132
    iget-object v7, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v3, v7}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->backupApk(Landroid/content/pm/PackageInfo;)V

    .line 133
    iget v7, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mUserId:I

    iget-object v8, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v3, v7, v8}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->backupObb(ILandroid/content/pm/PackageInfo;)V

    .line 137
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Calling doFullBackup() on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    if-eqz v5, :cond_2

    .line 142
    iget-object v7, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v7}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->access$200(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getSharedBackupAgentTimeoutMillis()J

    move-result-wide v7

    move-wide v11, v7

    goto :goto_0

    .line 143
    :cond_2
    iget-object v7, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v7}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->access$200(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    move-result-wide v7

    move-wide v11, v7

    :goto_0
    nop

    .line 144
    .local v11, "timeout":J
    iget-object v7, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v7}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->access$000(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v9

    iget v10, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mToken:I

    iget-object v7, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 147
    invoke-static {v7}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->access$300(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupRestoreTask;

    move-result-object v13

    const/4 v14, 0x0

    .line 144
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 149
    iget-object v15, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mAgent:Landroid/app/IBackupAgent;

    iget-object v7, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    iget-object v8, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 151
    invoke-static {v8}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->access$400(Lcom/android/server/backup/fullbackup/FullBackupEngine;)J

    move-result-wide v17

    iget v8, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mToken:I

    iget-object v9, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 153
    invoke-static {v9}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->access$000(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v20

    iget-object v9, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 154
    invoke-static {v9}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->access$100(Lcom/android/server/backup/fullbackup/FullBackupEngine;)I

    move-result v21

    .line 149
    move-object/from16 v16, v7

    move/from16 v19, v8

    invoke-interface/range {v15 .. v21}, Landroid/app/IBackupAgent;->doFullBackup(Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .end local v0    # "output":Landroid/app/backup/FullBackupDataOutput;
    .end local v3    # "appMetadataBackupWriter":Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "isSharedStorage":Z
    .end local v6    # "writeApk":Z
    .end local v11    # "timeout":J
    :try_start_1
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 163
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_3

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote agent vanished during full backup of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    .end local v0    # "e":Landroid/os/RemoteException;
    :try_start_3
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 155
    :catch_1
    move-exception v0

    .line 156
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error running full backup for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 164
    .end local v0    # "e":Ljava/io/IOException;
    :try_start_5
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 166
    :goto_1
    goto :goto_2

    .line 165
    :catch_2
    move-exception v0

    .line 167
    nop

    .line 168
    :goto_2
    return-void

    .line 164
    :goto_3
    :try_start_6
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 166
    goto :goto_4

    .line 165
    :catch_3
    move-exception v0

    .line 167
    :goto_4
    throw v2
.end method
