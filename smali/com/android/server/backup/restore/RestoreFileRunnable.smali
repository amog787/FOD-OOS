.class Lcom/android/server/backup/restore/RestoreFileRunnable;
.super Ljava/lang/Object;
.source "RestoreFileRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mAgent:Landroid/app/IBackupAgent;

.field private final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private final mInfo:Lcom/android/server/backup/FileMetadata;

.field private final mSocket:Landroid/os/ParcelFileDescriptor;

.field private final mToken:I


# direct methods
.method constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;I)V
    .locals 1
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "agent"    # Landroid/app/IBackupAgent;
    .param p3, "info"    # Lcom/android/server/backup/FileMetadata;
    .param p4, "socket"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mAgent:Landroid/app/IBackupAgent;

    .line 43
    iput-object p3, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mInfo:Lcom/android/server/backup/FileMetadata;

    .line 44
    iput p5, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mToken:I

    .line 51
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mSocket:Landroid/os/ParcelFileDescriptor;

    .line 52
    iput-object p1, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 53
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mAgent:Landroid/app/IBackupAgent;

    iget-object v1, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mSocket:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mInfo:Lcom/android/server/backup/FileMetadata;

    iget-wide v2, v2, Lcom/android/server/backup/FileMetadata;->size:J

    iget-object v4, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mInfo:Lcom/android/server/backup/FileMetadata;

    iget v4, v4, Lcom/android/server/backup/FileMetadata;->type:I

    iget-object v5, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mInfo:Lcom/android/server/backup/FileMetadata;

    iget-object v5, v5, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mInfo:Lcom/android/server/backup/FileMetadata;

    iget-object v6, v6, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mInfo:Lcom/android/server/backup/FileMetadata;

    iget-wide v7, v7, Lcom/android/server/backup/FileMetadata;->mode:J

    iget-object v9, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mInfo:Lcom/android/server/backup/FileMetadata;

    iget-wide v9, v9, Lcom/android/server/backup/FileMetadata;->mtime:J

    iget v11, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mToken:I

    iget-object v12, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 60
    invoke-virtual {v12}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v12

    .line 58
    invoke-interface/range {v0 .. v12}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 64
    :goto_0
    return-void
.end method
