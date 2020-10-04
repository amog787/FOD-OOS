.class public Lcom/android/server/backup/internal/RunInitializeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RunInitializeReceiver.java"


# instance fields
.field private final mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;)V
    .locals 0
    .param p1, "userBackupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;

    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 42
    return-void
.end method

.method static synthetic lambda$onReceive$0(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    .locals 0
    .param p0, "wakelock"    # Landroid/os/PowerManager$WakeLock;
    .param p1, "caller"    # Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.backup.intent.INIT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getPendingInits()Landroid/util/ArraySet;

    move-result-object v1

    .line 52
    .local v1, "pendingInits":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Running a device init; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pending"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 56
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 58
    .local v2, "transports":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->clearPendingInits()V

    .line 60
    iget-object v3, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    .line 61
    .local v3, "wakelock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 62
    new-instance v4, Lcom/android/server/backup/internal/-$$Lambda$RunInitializeReceiver$6NFkS59RniyJ8xe_gfe6oyt63HQ;

    invoke-direct {v4, v3}, Lcom/android/server/backup/internal/-$$Lambda$RunInitializeReceiver$6NFkS59RniyJ8xe_gfe6oyt63HQ;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 64
    .local v4, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    new-instance v5, Lcom/android/server/backup/internal/PerformInitializeTask;

    iget-object v6, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v2, v7, v4}, Lcom/android/server/backup/internal/PerformInitializeTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    .line 70
    .local v5, "task":Ljava/lang/Runnable;
    iget-object v6, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    .end local v1    # "pendingInits":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "transports":[Ljava/lang/String;
    .end local v3    # "wakelock":Landroid/os/PowerManager$WakeLock;
    .end local v4    # "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    .end local v5    # "task":Ljava/lang/Runnable;
    :cond_1
    monitor-exit v0

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
