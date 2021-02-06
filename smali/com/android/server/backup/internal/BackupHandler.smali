.class public Lcom/android/server/backup/internal/BackupHandler;
.super Landroid/os/Handler;
.source "BackupHandler.java"


# static fields
.field public static final MSG_BACKUP_OPERATION_TIMEOUT:I = 0x11

.field public static final MSG_BACKUP_RESTORE_STEP:I = 0x14

.field public static final MSG_FULL_CONFIRMATION_TIMEOUT:I = 0x9

.field public static final MSG_OP_COMPLETE:I = 0x15

.field public static final MSG_REQUEST_BACKUP:I = 0xf

.field public static final MSG_RESTORE_OPERATION_TIMEOUT:I = 0x12

.field public static final MSG_RESTORE_SESSION_TIMEOUT:I = 0x8

.field public static final MSG_RETRY_CLEAR:I = 0xc

.field public static final MSG_RUN_ADB_BACKUP:I = 0x2

.field public static final MSG_RUN_ADB_RESTORE:I = 0xa

.field public static final MSG_RUN_BACKUP:I = 0x1

.field public static final MSG_RUN_CLEAR:I = 0x4

.field public static final MSG_RUN_GET_RESTORE_SETS:I = 0x6

.field public static final MSG_RUN_RESTORE:I = 0x3

.field public static final MSG_SCHEDULE_BACKUP_PACKAGE:I = 0x10

.field public static final MSG_STOP:I = 0x16


# instance fields
.field private final backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field private final mBackupThread:Landroid/os/HandlerThread;

.field volatile mIsStopping:Z


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/os/HandlerThread;)V
    .locals 2
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "backupThread"    # Landroid/os/HandlerThread;

    .line 95
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/internal/BackupHandler;->mIsStopping:Z

    .line 96
    iput-object p2, p0, Lcom/android/server/backup/internal/BackupHandler;->mBackupThread:Landroid/os/HandlerThread;

    .line 97
    iput-object p1, p0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 98
    nop

    .line 99
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    .line 98
    const-string v1, "Timeout parameters cannot be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, p0, Lcom/android/server/backup/internal/BackupHandler;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 101
    return-void
.end method

.method static synthetic lambda$handleMessage$0(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V
    .locals 0
    .param p0, "transportManager"    # Lcom/android/server/backup/TransportManager;
    .param p1, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p2, "caller"    # Ljava/lang/String;

    .line 212
    nop

    .line 213
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 212
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .line 116
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/internal/BackupHandler;->dispatchMessageInternal(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v1, p0, Lcom/android/server/backup/internal/BackupHandler;->mIsStopping:Z

    if-eqz v1, :cond_0

    .line 124
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 121
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_0
    throw v0
.end method

.method dispatchMessageInternal(Landroid/os/Message;)V
    .locals 0
    .param p1, "message"    # Landroid/os/Message;

    .line 128
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 129
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .line 132
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/16 v3, 0x16

    if-ne v0, v3, :cond_0

    .line 133
    const-string v0, "BackupManagerService"

    const-string v3, "Stopping backup handler"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->quit()V

    .line 135
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->mBackupThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 138
    :cond_0
    iget-boolean v0, v1, Lcom/android/server/backup/internal/BackupHandler;->mIsStopping:Z

    if-eqz v0, :cond_1

    .line 140
    return-void

    .line 143
    :cond_1
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v3

    .line 144
    .local v3, "transportManager":Lcom/android/server/backup/TransportManager;
    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_d

    .line 264
    :pswitch_1
    :try_start_0
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 266
    .local v0, "taskWithResult":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/backup/BackupRestoreTask;Ljava/lang/Long;>;"
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/backup/BackupRestoreTask;

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lcom/android/server/backup/BackupRestoreTask;->operationComplete(J)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v0    # "taskWithResult":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/backup/BackupRestoreTask;Ljava/lang/Long;>;"
    goto/16 :goto_d

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid completion in flight, obj="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BackupManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .end local v0    # "e":Ljava/lang/ClassCastException;
    goto/16 :goto_d

    .line 251
    :pswitch_2
    :try_start_1
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/BackupRestoreTask;

    .line 255
    .local v0, "task":Lcom/android/server/backup/BackupRestoreTask;
    invoke-interface {v0}, Lcom/android/server/backup/BackupRestoreTask;->execute()V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 258
    .end local v0    # "task":Lcom/android/server/backup/BackupRestoreTask;
    goto/16 :goto_d

    .line 256
    :catch_1
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid backup/restore task in flight, obj="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BackupManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .end local v0    # "e":Ljava/lang/ClassCastException;
    goto/16 :goto_d

    .line 396
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout message received for token="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "BackupManagerService"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v5, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v5, v4}, Lcom/android/server/backup/UserBackupManagerService;->handleCancel(IZ)V

    .line 398
    goto/16 :goto_d

    .line 470
    :pswitch_4
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 474
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4, v0}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 475
    goto/16 :goto_d

    .line 447
    .end local v0    # "pkgName":Ljava/lang/String;
    :pswitch_5
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/BackupParams;

    .line 451
    .local v0, "params":Lcom/android/server/backup/params/BackupParams;
    iget-object v4, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->setBackupRunning(Z)V

    .line 452
    iget-object v4, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 454
    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v6, v0, Lcom/android/server/backup/params/BackupParams;->transportClient:Lcom/android/server/backup/transport/TransportClient;

    iget-object v7, v0, Lcom/android/server/backup/params/BackupParams;->dirName:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/backup/params/BackupParams;->kvPackages:Ljava/util/ArrayList;

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/android/server/backup/params/BackupParams;->observer:Landroid/app/backup/IBackupObserver;

    iget-object v11, v0, Lcom/android/server/backup/params/BackupParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v12, v0, Lcom/android/server/backup/params/BackupParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    iget-object v13, v0, Lcom/android/server/backup/params/BackupParams;->fullPackages:Ljava/util/ArrayList;

    const/4 v14, 0x1

    iget-boolean v15, v0, Lcom/android/server/backup/params/BackupParams;->nonIncrementalBackup:Z

    invoke-static/range {v5 .. v15}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->start(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Ljava/util/List;Lcom/android/server/backup/DataChangedJournal;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZ)Lcom/android/server/backup/keyvalue/KeyValueBackupTask;

    .line 466
    goto/16 :goto_d

    .line 350
    .end local v0    # "params":Lcom/android/server/backup/params/BackupParams;
    :pswitch_6
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/ClearRetryParams;

    .line 351
    .local v0, "params":Lcom/android/server/backup/params/ClearRetryParams;
    iget-object v4, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v5, v0, Lcom/android/server/backup/params/ClearRetryParams;->transportName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/backup/params/ClearRetryParams;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    goto/16 :goto_d

    .line 327
    .end local v0    # "params":Lcom/android/server/backup/params/ClearRetryParams;
    :pswitch_7
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/AdbRestoreParams;

    .line 328
    .local v0, "params":Lcom/android/server/backup/params/AdbRestoreParams;
    new-instance v11, Lcom/android/server/backup/restore/PerformAdbRestoreTask;

    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v6, v0, Lcom/android/server/backup/params/AdbRestoreParams;->fd:Landroid/os/ParcelFileDescriptor;

    iget-object v7, v0, Lcom/android/server/backup/params/AdbRestoreParams;->curPassword:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/backup/params/AdbRestoreParams;->encryptPassword:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/server/backup/params/AdbRestoreParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    iget-object v10, v0, Lcom/android/server/backup/params/AdbRestoreParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 332
    .local v4, "task":Lcom/android/server/backup/restore/PerformAdbRestoreTask;
    new-instance v5, Ljava/lang/Thread;

    const-string v6, "adb-restore"

    invoke-direct {v5, v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 333
    goto/16 :goto_d

    .line 419
    .end local v0    # "params":Lcom/android/server/backup/params/AdbRestoreParams;
    .end local v4    # "task":Lcom/android/server/backup/restore/PerformAdbRestoreTask;
    :pswitch_8
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getAdbBackupRestoreConfirmations()Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    .line 420
    :try_start_2
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getAdbBackupRestoreConfirmations()Landroid/util/SparseArray;

    move-result-object v0

    iget v5, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/params/AdbParams;

    move-object v5, v0

    .line 422
    .local v5, "params":Lcom/android/server/backup/params/AdbParams;
    if-eqz v5, :cond_2

    .line 423
    const-string v0, "BackupManagerService"

    const-string v6, "Full backup/restore timed out waiting for user confirmation"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/backup/UserBackupManagerService;->signalAdbBackupRestoreCompletion(Lcom/android/server/backup/params/AdbParams;)V

    .line 429
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getAdbBackupRestoreConfirmations()Landroid/util/SparseArray;

    move-result-object v0

    iget v6, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->delete(I)V

    .line 432
    iget-object v0, v5, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    .line 434
    :try_start_3
    iget-object v0, v5, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v0}, Landroid/app/backup/IFullBackupRestoreObserver;->onTimeout()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 435
    :catch_2
    move-exception v0

    .line 437
    :goto_0
    goto :goto_1

    .line 440
    :cond_2
    :try_start_4
    const-string v0, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "couldn\'t find params for token "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    .end local v5    # "params":Lcom/android/server/backup/params/AdbParams;
    :cond_3
    :goto_1
    monitor-exit v4

    .line 443
    goto/16 :goto_d

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 402
    :pswitch_9
    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    monitor-enter v5

    .line 403
    :try_start_5
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 408
    const-string v0, "BackupManagerService"

    const-string v4, "Restore session timed out; aborting"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/restore/ActiveRestoreSession;->markTimedOut()V

    .line 410
    new-instance v0, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;

    iget-object v4, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v7, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 412
    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v7

    invoke-direct {v0, v4, v6, v7}, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/backup/restore/ActiveRestoreSession;Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/restore/ActiveRestoreSession;)V

    .line 410
    invoke-virtual {v1, v0}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 414
    :cond_4
    monitor-exit v5

    .line 415
    goto/16 :goto_d

    .line 414
    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 357
    :pswitch_a
    const/4 v5, 0x0

    .line 358
    .local v5, "sets":[Landroid/app/backup/RestoreSet;
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/android/server/backup/params/RestoreGetSetsParams;

    .line 359
    .local v6, "params":Lcom/android/server/backup/params/RestoreGetSetsParams;
    const-string v7, "BH/MSG_RUN_GET_RESTORE_SETS"

    .line 361
    .local v7, "callerLogString":Ljava/lang/String;
    const/16 v8, 0x8

    :try_start_6
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->transportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 362
    invoke-virtual {v0, v7}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    move-object v9, v0

    .line 363
    .local v9, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v9}, Lcom/android/internal/backup/IBackupTransport;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    move-result-object v0

    move-object v5, v0

    .line 365
    iget-object v10, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->session:Lcom/android/server/backup/restore/ActiveRestoreSession;

    monitor-enter v10
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 366
    :try_start_7
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->session:Lcom/android/server/backup/restore/ActiveRestoreSession;

    invoke-virtual {v0, v5}, Lcom/android/server/backup/restore/ActiveRestoreSession;->setRestoreSets([Landroid/app/backup/RestoreSet;)V

    .line 367
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 368
    if-nez v5, :cond_5

    .line 369
    const/16 v0, 0xb0f

    :try_start_8
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 374
    .end local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_5
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v0, :cond_6

    .line 376
    :try_start_9
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-interface {v0, v5}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_3

    .line 379
    :catch_3
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    const-string v9, "Restore observer threw: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v9, "BackupManagerService"

    invoke-static {v9, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 377
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 378
    .local v0, "re":Landroid/os/RemoteException;
    const-string v4, "BackupManagerService"

    const-string v9, "Unable to report listing to observer"

    invoke-static {v4, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_6
    :goto_3
    invoke-virtual {v1, v8}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 386
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 387
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis()J

    move-result-wide v9

    .line 386
    invoke-virtual {v1, v8, v9, v10}, Lcom/android/server/backup/internal/BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 389
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v0, v7}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 390
    goto :goto_4

    .line 367
    .restart local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .end local v3    # "transportManager":Lcom/android/server/backup/TransportManager;
    .end local v5    # "sets":[Landroid/app/backup/RestoreSet;
    .end local v6    # "params":Lcom/android/server/backup/params/RestoreGetSetsParams;
    .end local v7    # "callerLogString":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/backup/internal/BackupHandler;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 374
    .end local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v3    # "transportManager":Lcom/android/server/backup/TransportManager;
    .restart local v5    # "sets":[Landroid/app/backup/RestoreSet;
    .restart local v6    # "params":Lcom/android/server/backup/params/RestoreGetSetsParams;
    .restart local v7    # "callerLogString":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/backup/internal/BackupHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_3
    move-exception v0

    move-object v4, v0

    goto :goto_5

    .line 371
    :catch_5
    move-exception v0

    .line 372
    .local v0, "e":Ljava/lang/Exception;
    :try_start_c
    const-string v4, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error from transport getting set list: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 374
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v0, :cond_6

    .line 376
    :try_start_d
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-interface {v0, v5}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_3

    .line 379
    :catch_6
    move-exception v0

    .line 380
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    .line 377
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v0

    .line 378
    .local v0, "re":Landroid/os/RemoteException;
    const-string v4, "BackupManagerService"

    const-string v9, "Unable to report listing to observer"

    invoke-static {v4, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "re":Landroid/os/RemoteException;
    goto :goto_3

    .line 391
    :goto_4
    goto/16 :goto_d

    .line 374
    :goto_5
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v0, :cond_7

    .line 376
    :try_start_e
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-interface {v0, v5}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_6

    .line 379
    :catch_8
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Restore observer threw: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "BackupManagerService"

    invoke-static {v10, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 377
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v0

    .line 378
    .local v0, "re":Landroid/os/RemoteException;
    const-string v9, "BackupManagerService"

    const-string v10, "Unable to report listing to observer"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_7
    :goto_6
    invoke-virtual {v1, v8}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 386
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 387
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis()J

    move-result-wide v9

    .line 386
    invoke-virtual {v1, v8, v9, v10}, Lcom/android/server/backup/internal/BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 389
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v0, v7}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 390
    throw v4

    .line 337
    .end local v5    # "sets":[Landroid/app/backup/RestoreSet;
    .end local v6    # "params":Lcom/android/server/backup/params/RestoreGetSetsParams;
    .end local v7    # "callerLogString":Ljava/lang/String;
    :pswitch_b
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/ClearParams;

    .line 338
    .local v0, "params":Lcom/android/server/backup/params/ClearParams;
    new-instance v4, Lcom/android/server/backup/internal/PerformClearTask;

    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v6, v0, Lcom/android/server/backup/params/ClearParams;->transportClient:Lcom/android/server/backup/transport/TransportClient;

    iget-object v7, v0, Lcom/android/server/backup/params/ClearParams;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v0, Lcom/android/server/backup/params/ClearParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/server/backup/internal/PerformClearTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    .line 344
    .local v4, "task":Ljava/lang/Runnable;
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 345
    goto/16 :goto_d

    .line 288
    .end local v0    # "params":Lcom/android/server/backup/params/ClearParams;
    .end local v4    # "task":Ljava/lang/Runnable;
    :pswitch_c
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/android/server/backup/params/RestoreParams;

    .line 289
    .local v4, "params":Lcom/android/server/backup/params/RestoreParams;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_RUN_RESTORE observer="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/backup/params/RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "BackupManagerService"

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v8, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v9, v4, Lcom/android/server/backup/params/RestoreParams;->transportClient:Lcom/android/server/backup/transport/TransportClient;

    iget-object v10, v4, Lcom/android/server/backup/params/RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    iget-object v11, v4, Lcom/android/server/backup/params/RestoreParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-wide v12, v4, Lcom/android/server/backup/params/RestoreParams;->token:J

    iget-object v14, v4, Lcom/android/server/backup/params/RestoreParams;->packageInfo:Landroid/content/pm/PackageInfo;

    iget v15, v4, Lcom/android/server/backup/params/RestoreParams;->pmToken:I

    iget-boolean v6, v4, Lcom/android/server/backup/params/RestoreParams;->isSystemRestore:Z

    iget-object v7, v4, Lcom/android/server/backup/params/RestoreParams;->filterSet:[Ljava/lang/String;

    iget-object v5, v4, Lcom/android/server/backup/params/RestoreParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    move-object/from16 v17, v7

    move-object v7, v0

    move/from16 v16, v6

    move-object/from16 v18, v5

    invoke-direct/range {v7 .. v18}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    move-object v5, v0

    .line 304
    .local v5, "task":Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPendingRestores()Ljava/util/Queue;

    move-result-object v6

    monitor-enter v6

    .line 305
    :try_start_f
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->isRestoreInProgress()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 307
    const-string v0, "BackupManagerService"

    const-string v7, "Restore in progress, queueing."

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPendingRestores()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 314
    :cond_8
    const-string v0, "BackupManagerService"

    const-string v7, "Starting restore."

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/android/server/backup/UserBackupManagerService;->setRestoreInProgress(Z)V

    .line 317
    const/16 v0, 0x14

    invoke-virtual {v1, v0, v5}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 318
    .local v0, "restoreMsg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 320
    .end local v0    # "restoreMsg":Landroid/os/Message;
    :goto_7
    monitor-exit v6

    .line 321
    goto/16 :goto_d

    .line 320
    :catchall_4
    move-exception v0

    monitor-exit v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    throw v0

    .line 276
    .end local v4    # "params":Lcom/android/server/backup/params/RestoreParams;
    .end local v5    # "task":Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
    :pswitch_d
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/AdbBackupParams;

    .line 277
    .local v0, "params":Lcom/android/server/backup/params/AdbBackupParams;
    new-instance v20, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;

    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v6, v0, Lcom/android/server/backup/params/AdbBackupParams;->fd:Landroid/os/ParcelFileDescriptor;

    iget-object v7, v0, Lcom/android/server/backup/params/AdbBackupParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    iget-boolean v8, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeApks:Z

    iget-boolean v9, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeObbs:Z

    iget-boolean v10, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeShared:Z

    iget-boolean v11, v0, Lcom/android/server/backup/params/AdbBackupParams;->doWidgets:Z

    iget-object v12, v0, Lcom/android/server/backup/params/AdbBackupParams;->curPassword:Ljava/lang/String;

    iget-object v13, v0, Lcom/android/server/backup/params/AdbBackupParams;->encryptPassword:Ljava/lang/String;

    iget-boolean v14, v0, Lcom/android/server/backup/params/AdbBackupParams;->allApps:Z

    iget-boolean v15, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeSystem:Z

    iget-boolean v4, v0, Lcom/android/server/backup/params/AdbBackupParams;->doCompress:Z

    iget-boolean v2, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeKeyValue:Z

    move-object/from16 v21, v3

    .end local v3    # "transportManager":Lcom/android/server/backup/TransportManager;
    .local v21, "transportManager":Lcom/android/server/backup/TransportManager;
    iget-object v3, v0, Lcom/android/server/backup/params/AdbBackupParams;->packages:[Ljava/lang/String;

    iget-object v1, v0, Lcom/android/server/backup/params/AdbBackupParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move/from16 v16, v4

    move-object/from16 v4, v20

    move/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v1

    invoke-direct/range {v4 .. v19}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    move-object/from16 v1, v20

    .line 283
    .local v1, "task":Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
    new-instance v2, Ljava/lang/Thread;

    const-string v3, "adb-backup"

    invoke-direct {v2, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 284
    move-object/from16 v1, p0

    move-object/from16 v3, v21

    goto/16 :goto_d

    .line 146
    .end local v0    # "params":Lcom/android/server/backup/params/AdbBackupParams;
    .end local v1    # "task":Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
    .end local v21    # "transportManager":Lcom/android/server/backup/TransportManager;
    .restart local v3    # "transportManager":Lcom/android/server/backup/TransportManager;
    :pswitch_e
    move-object/from16 v21, v3

    .end local v3    # "transportManager":Lcom/android/server/backup/TransportManager;
    .restart local v21    # "transportManager":Lcom/android/server/backup/TransportManager;
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->setLastBackupPass(J)V

    .line 148
    const-string v2, "BH/MSG_RUN_BACKUP"

    .line 149
    .local v2, "callerLogString":Ljava/lang/String;
    nop

    .line 150
    move-object/from16 v3, v21

    .end local v21    # "transportManager":Lcom/android/server/backup/TransportManager;
    .restart local v3    # "transportManager":Lcom/android/server/backup/TransportManager;
    invoke-virtual {v3, v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v15

    .line 152
    .local v15, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    const/4 v0, 0x0

    if-eqz v15, :cond_9

    .line 153
    invoke-virtual {v15, v2}, Lcom/android/server/backup/transport/TransportClient;->connect(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v5

    goto :goto_8

    .line 154
    :cond_9
    move-object v5, v0

    :goto_8
    move-object/from16 v16, v5

    .line 155
    .local v16, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v16, :cond_b

    .line 156
    if-eqz v15, :cond_a

    .line 157
    nop

    .line 158
    invoke-virtual {v3, v15, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 160
    :cond_a
    const-string v0, "BackupManagerService"

    const-string v4, "Backup requested but no transport available"

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    goto/16 :goto_d

    .line 165
    :cond_b
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v5

    .line 166
    .local v14, "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->getJournal()Lcom/android/server/backup/DataChangedJournal;

    move-result-object v17

    .line 167
    .local v17, "oldJournal":Lcom/android/server/backup/DataChangedJournal;
    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 169
    :try_start_10
    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->isBackupRunning()Z

    move-result v6
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    if-eqz v6, :cond_c

    .line 170
    :try_start_11
    const-string v0, "BackupManagerService"

    const-string v4, "Backup time but one already running"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    monitor-exit v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    return-void

    .line 199
    :catchall_5
    move-exception v0

    move-object/from16 v20, v14

    move-object v4, v15

    goto/16 :goto_c

    .line 175
    :cond_c
    :try_start_12
    const-string v6, "BackupManagerService"

    const-string v7, "Running a backup pass"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/backup/UserBackupManagerService;->setBackupRunning(Z)V

    .line 181
    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 186
    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getPendingBackups()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    if-lez v6, :cond_e

    .line 187
    :try_start_13
    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getPendingBackups()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/backup/keyvalue/BackupRequest;

    .line 188
    .local v7, "b":Lcom/android/server/backup/keyvalue/BackupRequest;
    iget-object v8, v7, Lcom/android/server/backup/keyvalue/BackupRequest;->packageName:Ljava/lang/String;

    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    nop

    .end local v7    # "b":Lcom/android/server/backup/keyvalue/BackupRequest;
    goto :goto_9

    .line 191
    :cond_d
    const-string v6, "BackupManagerService"

    const-string v7, "clearing pending backups"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getPendingBackups()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 196
    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6, v0}, Lcom/android/server/backup/UserBackupManagerService;->setJournal(Lcom/android/server/backup/DataChangedJournal;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 199
    :cond_e
    :try_start_14
    monitor-exit v5
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 206
    const/16 v18, 0x1

    .line 207
    .local v18, "staged":Z
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 210
    :try_start_15
    new-instance v12, Lcom/android/server/backup/internal/-$$Lambda$BackupHandler$TJcRazGYTaUxjeiX6mPLlipfZUI;

    invoke-direct {v12, v3, v15}, Lcom/android/server/backup/internal/-$$Lambda$BackupHandler$TJcRazGYTaUxjeiX6mPLlipfZUI;-><init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;)V

    .line 214
    .local v12, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 217
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 223
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b

    const/4 v0, 0x0

    const/16 v19, 0x0

    .line 214
    move-object v6, v15

    move-object v8, v14

    move-object/from16 v9, v17

    move-object/from16 v20, v14

    .end local v14    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v20, "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v14, v0

    move-object v4, v15

    .end local v15    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .local v4, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    move/from16 v15, v19

    :try_start_16
    invoke-static/range {v5 .. v15}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->start(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Ljava/util/List;Lcom/android/server/backup/DataChangedJournal;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZ)Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_a

    .line 232
    nop

    .end local v12    # "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    goto :goto_b

    .line 226
    :catch_a
    move-exception v0

    goto :goto_a

    .end local v4    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .end local v20    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    :catch_b
    move-exception v0

    move-object/from16 v20, v14

    move-object v4, v15

    .line 229
    .end local v14    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v4    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .restart local v20    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_a
    const-string v5, "BackupManagerService"

    const-string v6, "Transport became unavailable attempting backup or error initializing backup task"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    const/16 v18, 0x0

    .line 232
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_b

    .line 234
    .end local v4    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .end local v20    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    :cond_f
    move-object/from16 v20, v14

    move-object v4, v15

    .end local v14    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .restart local v4    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .restart local v20    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "BackupManagerService"

    const-string v5, "Backup requested but nothing pending"

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/16 v18, 0x0

    .line 238
    :goto_b
    if-nez v18, :cond_10

    .line 239
    invoke-virtual {v3, v4, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 241
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 242
    :try_start_17
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/android/server/backup/UserBackupManagerService;->setBackupRunning(Z)V

    .line 243
    monitor-exit v5
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    .line 244
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    goto :goto_d

    .line 243
    :catchall_6
    move-exception v0

    :try_start_18
    monitor-exit v5
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    throw v0

    .line 199
    .end local v4    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .end local v18    # "staged":Z
    .end local v20    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    :catchall_7
    move-exception v0

    move-object/from16 v20, v14

    move-object v4, v15

    .end local v14    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .restart local v4    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .restart local v20    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_c
    :try_start_19
    monitor-exit v5
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    throw v0

    :catchall_8
    move-exception v0

    goto :goto_c

    .line 478
    .end local v2    # "callerLogString":Ljava/lang/String;
    .end local v4    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .end local v16    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v17    # "oldJournal":Lcom/android/server/backup/DataChangedJournal;
    .end local v20    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_10
    :goto_d
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public stop()V
    .locals 1

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/internal/BackupHandler;->mIsStopping:Z

    .line 110
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    return-void
.end method
