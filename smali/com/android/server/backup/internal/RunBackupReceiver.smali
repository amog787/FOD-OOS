.class public Lcom/android/server/backup/internal/RunBackupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RunBackupReceiver.java"


# instance fields
.field private final mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;)V
    .locals 0
    .param p1, "userBackupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;

    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 44
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.backup.intent.RUN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getPendingInits()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_1

    .line 70
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getRunInitIntent()Landroid/app/PendingIntent;

    move-result-object v1

    .line 71
    .local v1, "runInitIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 72
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .end local v1    # "runInitIntent":Landroid/app/PendingIntent;
    goto :goto_0

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, "ce":Landroid/app/PendingIntent$CanceledException;
    :try_start_2
    const-string v2, "BackupManagerService"

    const-string v3, "Run init intent cancelled"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    nop

    .end local v1    # "ce":Landroid/app/PendingIntent$CanceledException;
    goto :goto_0

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 79
    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->isSetupComplete()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 90
    :cond_2
    iget-object v1, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->isBackupRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 91
    const-string v1, "BackupManagerService"

    const-string v2, "Backup time but one already running"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    monitor-exit v0

    return-void

    .line 96
    :cond_3
    const-string v1, "BackupManagerService"

    const-string v2, "Running a backup pass"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->setBackupRunning(Z)V

    .line 102
    iget-object v1, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 104
    iget-object v1, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v1

    .line 105
    .local v1, "backupHandler":Landroid/os/Handler;
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 106
    .local v2, "message":Landroid/os/Message;
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 108
    .end local v1    # "backupHandler":Landroid/os/Handler;
    .end local v2    # "message":Landroid/os/Message;
    :goto_0
    monitor-exit v0

    .line 109
    return-void

    .line 80
    :cond_4
    :goto_1
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Backup pass but enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 83
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " setupComplete="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 85
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->isSetupComplete()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    monitor-exit v0

    return-void

    .line 108
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
