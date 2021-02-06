.class public Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;
.super Ljava/lang/Object;
.source "AdbRestoreFinishedLatch.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# static fields
.field private static final TAG:Ljava/lang/String; = "AdbRestoreFinishedLatch"


# instance fields
.field private backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field private final mCurrentOpToken:I

.field final mLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;I)V
    .locals 2
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "currentOpToken"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 46
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 47
    iput p2, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mCurrentOpToken:I

    .line 48
    nop

    .line 49
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    .line 48
    const-string v1, "Timeout parameters cannot be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 51
    return-void
.end method


# virtual methods
.method await()V
    .locals 6

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "latched":Z
    iget-object v1, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 56
    invoke-virtual {v1}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    move-result-wide v1

    .line 58
    .local v1, "fullBackupAgentTimeoutMillis":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v2, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 61
    goto :goto_0

    .line 59
    :catch_0
    move-exception v3

    .line 60
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v4, "AdbRestoreFinishedLatch"

    const-string v5, "Interrupted!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method public execute()V
    .locals 0

    .line 67
    return-void
.end method

.method public handleCancel(Z)V
    .locals 2
    .param p1, "cancelAll"    # Z

    .line 81
    const-string v0, "AdbRestoreFinishedLatch"

    const-string v1, "adb onRestoreFinished() timed out"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 84
    iget-object v0, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v1, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mCurrentOpToken:I

    invoke-virtual {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->removeOperation(I)V

    .line 85
    return-void
.end method

.method public operationComplete(J)V
    .locals 2
    .param p1, "result"    # J

    .line 74
    iget-object v0, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 75
    iget-object v0, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v1, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mCurrentOpToken:I

    invoke-virtual {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->removeOperation(I)V

    .line 76
    return-void
.end method
