.class public Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;
.super Ljava/lang/Object;
.source "UserBackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/UserBackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackupWakeLock"
.end annotation


# instance fields
.field private mHasQuit:Z

.field private final mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/os/PowerManager$WakeLock;I)V
    .locals 1
    .param p1, "powerManagerWakeLock"    # Landroid/os/PowerManager$WakeLock;
    .param p2, "userId"    # I

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mHasQuit:Z

    .line 179
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 180
    iput p2, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mUserId:I

    .line 181
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 173
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized acquire()V
    .locals 4

    monitor-enter p0

    .line 185
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mHasQuit:Z

    if-eqz v0, :cond_0

    .line 186
    const-string v0, "BackupManagerService"

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore wakelock acquire after quit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 191
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return-void

    .line 194
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 195
    const-string v0, "BackupManagerService"

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Acquired wakelock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 198
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isHeld()Z
    .locals 1

    monitor-enter p0

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 223
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized quit()V
    .locals 4

    monitor-enter p0

    .line 228
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    const-string v0, "BackupManagerService"

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Releasing wakelock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 232
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 235
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mHasQuit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 4

    monitor-enter p0

    .line 203
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mHasQuit:Z

    if-eqz v0, :cond_0

    .line 204
    const-string v0, "BackupManagerService"

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore wakelock release after quit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 209
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    .line 212
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 213
    const-string v0, "BackupManagerService"

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Released wakelock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 216
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    monitor-exit p0

    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
