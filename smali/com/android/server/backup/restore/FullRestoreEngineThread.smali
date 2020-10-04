.class Lcom/android/server/backup/restore/FullRestoreEngineThread;
.super Ljava/lang/Object;
.source "FullRestoreEngineThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

.field mEngineStream:Ljava/io/InputStream;

.field private final mMustKillAgent:Z


# direct methods
.method constructor <init>(Lcom/android/server/backup/restore/FullRestoreEngine;Landroid/os/ParcelFileDescriptor;)V
    .locals 3
    .param p1, "engine"    # Lcom/android/server/backup/restore/FullRestoreEngine;
    .param p2, "engineSocket"    # Landroid/os/ParcelFileDescriptor;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    .line 18
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 22
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;Z)V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngineStream:Ljava/io/InputStream;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mMustKillAgent:Z

    .line 25
    return-void
.end method

.method constructor <init>(Lcom/android/server/backup/restore/FullRestoreEngine;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "engine"    # Lcom/android/server/backup/restore/FullRestoreEngine;
    .param p2, "inputStream"    # Ljava/io/InputStream;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 31
    iput-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngineStream:Ljava/io/InputStream;

    .line 33
    iput-boolean v0, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mMustKillAgent:Z

    .line 34
    return-void
.end method


# virtual methods
.method public handleTimeout()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngineStream:Ljava/io/InputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 61
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->handleTimeout()V

    .line 62
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRunning()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 9

    .line 47
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v2, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngineStream:Ljava/io/InputStream;

    iget-boolean v3, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mMustKillAgent:Z

    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBuffer:[B

    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v5, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-boolean v6, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowApks:Z

    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    iget v7, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mEphemeralOpToken:I

    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v8, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/backup/restore/FullRestoreEngine;->restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngineStream:Ljava/io/InputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 56
    nop

    .line 57
    return-void

    .line 55
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngineStream:Ljava/io/InputStream;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method public waitForResult()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->waitForResult()I

    move-result v0

    return v0
.end method
