.class public Lcom/android/server/backup/internal/SetupObserver;
.super Landroid/database/ContentObserver;
.source "SetupObserver.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p1, "userBackupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 42
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 43
    iput-object p1, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 44
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/internal/SetupObserver;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserId:I

    .line 46
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .param p1, "selfChange"    # Z

    .line 56
    iget-object v0, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->isSetupComplete()Z

    move-result v0

    .line 57
    .local v0, "previousSetupComplete":Z
    iget-object v1, p0, Lcom/android/server/backup/internal/SetupObserver;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->getSetupCompleteSettingForUser(Landroid/content/Context;I)Z

    move-result v1

    .line 59
    .local v1, "newSetupComplete":Z
    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 60
    .local v2, "resolvedSetupComplete":Z
    :goto_1
    iget-object v3, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/backup/UserBackupManagerService;->setSetupComplete(Z)V

    .line 72
    iget-object v3, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 74
    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 76
    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 80
    iget-object v4, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/backup/internal/SetupObserver;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 81
    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getConstants()Lcom/android/server/backup/BackupManagerConstants;

    move-result-object v6

    .line 80
    invoke-static {v4, v5, v6}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerConstants;)V

    .line 82
    iget-object v4, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 84
    :cond_2
    monitor-exit v3

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
