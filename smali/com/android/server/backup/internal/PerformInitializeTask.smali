.class public Lcom/android/server/backup/internal/PerformInitializeTask;
.super Ljava/lang/Object;
.source "PerformInitializeTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private final mBaseStateDir:Ljava/io/File;

.field private final mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field private mObserver:Landroid/app/backup/IBackupObserver;

.field private final mQueue:[Ljava/lang/String;

.field private final mTransportManager:Lcom/android/server/backup/TransportManager;


# direct methods
.method constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/TransportManager;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/io/File;)V
    .locals 0
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "transportManager"    # Lcom/android/server/backup/TransportManager;
    .param p3, "transportNames"    # [Ljava/lang/String;
    .param p4, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p5, "listener"    # Lcom/android/server/backup/internal/OnTaskFinishedListener;
    .param p6, "baseStateDir"    # Ljava/io/File;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 82
    iput-object p2, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 83
    iput-object p3, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mQueue:[Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 85
    iput-object p5, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 86
    iput-object p6, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mBaseStateDir:Ljava/io/File;

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V
    .locals 7
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "transportNames"    # [Ljava/lang/String;
    .param p3, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p4, "listener"    # Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 64
    nop

    .line 66
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v2

    .line 70
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v6

    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/backup/internal/PerformInitializeTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/TransportManager;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/io/File;)V

    .line 71
    return-void
.end method

.method private notifyFinished(I)V
    .locals 2
    .param p1, "status"    # I

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupObserver;->backupFinished(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "ignored":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 107
    .end local v0    # "ignored":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private notifyResult(Ljava/lang/String;I)V
    .locals 2
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-interface {v0, p1, p2}, Landroid/app/backup/IBackupObserver;->onResult(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_0
    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "ignored":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 97
    .end local v0    # "ignored":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .line 111
    move-object/from16 v1, p0

    const-string v2, "BackupManagerService"

    const-string v3, "PerformInitializeTask.run()"

    .line 112
    .local v3, "callerLogString":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mQueue:[Ljava/lang/String;

    array-length v4, v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v0

    .line 113
    .local v4, "transportClientsToDisposeOf":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/backup/transport/TransportClient;>;"
    const/4 v5, 0x0

    .line 115
    .local v5, "result":I
    :try_start_0
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mQueue:[Ljava/lang/String;

    array-length v6, v0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_4

    aget-object v9, v0, v8

    .line 116
    .local v9, "transportName":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 117
    invoke-virtual {v10, v9, v3}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v10

    .line 118
    .local v10, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    if-nez v10, :cond_0

    .line 119
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Requested init for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " but not found"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    move-object/from16 v19, v0

    move/from16 v20, v6

    goto/16 :goto_2

    .line 122
    :cond_0
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Initializing (wiping) backup transport storage: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v11, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 127
    invoke-virtual {v10}, Lcom/android/server/backup/transport/TransportClient;->getTransportComponent()Landroid/content/ComponentName;

    move-result-object v12

    .line 126
    invoke-virtual {v11, v12}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v11

    .line 128
    .local v11, "transportDirName":Ljava/lang/String;
    const/16 v12, 0xb05

    invoke-static {v12, v11}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 131
    .local v12, "startRealtime":J
    invoke-virtual {v10, v3}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v14

    .line 132
    .local v14, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v14}, Lcom/android/internal/backup/IBackupTransport;->initializeDevice()I

    move-result v15

    .line 133
    .local v15, "status":I
    if-eqz v15, :cond_1

    .line 134
    const-string v7, "Transport error in initializeDevice()"

    invoke-static {v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 136
    :cond_1
    invoke-interface {v14}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v7

    move v15, v7

    .line 137
    if-eqz v15, :cond_2

    .line 138
    const-string v7, "Transport error in finishBackup()"

    invoke-static {v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_2
    :goto_1
    if-nez v15, :cond_3

    .line 144
    const-string v7, "Device init successful"

    invoke-static {v2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    move/from16 v20, v6

    sub-long v6, v18, v12

    long-to-int v6, v6

    .line 146
    .local v6, "millis":I
    move-object/from16 v19, v0

    const/4 v7, 0x0

    new-array v0, v7, [Ljava/lang/Object;

    const/16 v7, 0xb0b

    invoke-static {v7, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 147
    new-instance v0, Ljava/io/File;

    iget-object v7, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v0, v7, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 148
    .local v0, "stateFileDir":Ljava/io/File;
    iget-object v7, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v7, v0}, Lcom/android/server/backup/UserBackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 149
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v7, v16

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v17, 0x1

    aput-object v21, v7, v17

    move-object/from16 v17, v0

    const/16 v0, 0xb09

    .end local v0    # "stateFileDir":Ljava/io/File;
    .local v17, "stateFileDir":Ljava/io/File;
    invoke-static {v0, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 150
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v9, v11}, Lcom/android/server/backup/UserBackupManagerService;->recordInitPending(ZLjava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-direct {v1, v9, v7}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyResult(Ljava/lang/String;I)V

    .line 152
    .end local v6    # "millis":I
    .end local v17    # "stateFileDir":Ljava/io/File;
    nop

    .line 115
    .end local v9    # "transportName":Ljava/lang/String;
    .end local v10    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .end local v11    # "transportDirName":Ljava/lang/String;
    .end local v12    # "startRealtime":J
    .end local v14    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v15    # "status":I
    :goto_2
    const/4 v6, 0x0

    goto :goto_3

    .line 155
    .restart local v9    # "transportName":Ljava/lang/String;
    .restart local v10    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .restart local v11    # "transportDirName":Ljava/lang/String;
    .restart local v12    # "startRealtime":J
    .restart local v14    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v15    # "status":I
    :cond_3
    move-object/from16 v19, v0

    move/from16 v20, v6

    const/16 v0, 0xb06

    const-string v6, "(initialize)"

    invoke-static {v0, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 156
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v6, 0x1

    invoke-virtual {v0, v6, v9, v11}, Lcom/android/server/backup/UserBackupManagerService;->recordInitPending(ZLjava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-direct {v1, v9, v15}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyResult(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 158
    move v5, v15

    .line 161
    :try_start_1
    invoke-interface {v14}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime()J

    move-result-wide v6

    .line 162
    .local v6, "delay":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v17, v5

    .end local v5    # "result":I
    .local v17, "result":I
    :try_start_2
    const-string v5, "Init failed on "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " resched in "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    move-object/from16 v18, v9

    move-object/from16 v23, v10

    .end local v9    # "transportName":Ljava/lang/String;
    .end local v10    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .local v18, "transportName":Ljava/lang/String;
    .local v23, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    add-long v9, v21, v6

    iget-object v5, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 166
    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->getRunInitIntent()Landroid/app/PendingIntent;

    move-result-object v5

    .line 163
    move-wide/from16 v21, v6

    const/4 v6, 0x0

    .end local v6    # "delay":J
    .local v21, "delay":J
    invoke-virtual {v0, v6, v9, v10, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v5, v17

    .line 115
    .end local v11    # "transportDirName":Ljava/lang/String;
    .end local v12    # "startRealtime":J
    .end local v14    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v15    # "status":I
    .end local v17    # "result":I
    .end local v18    # "transportName":Ljava/lang/String;
    .end local v21    # "delay":J
    .end local v23    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .restart local v5    # "result":I
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v19

    move/from16 v6, v20

    goto/16 :goto_0

    .line 173
    .end local v5    # "result":I
    .restart local v17    # "result":I
    :catchall_0
    move-exception v0

    move/from16 v5, v17

    goto :goto_8

    .line 169
    :catch_0
    move-exception v0

    move/from16 v5, v17

    goto :goto_5

    .line 173
    .end local v17    # "result":I
    .restart local v5    # "result":I
    :catchall_1
    move-exception v0

    move/from16 v17, v5

    .end local v5    # "result":I
    .restart local v17    # "result":I
    goto :goto_8

    .line 169
    .end local v17    # "result":I
    .restart local v5    # "result":I
    :catch_1
    move-exception v0

    move/from16 v17, v5

    .end local v5    # "result":I
    .restart local v17    # "result":I
    goto :goto_5

    .line 173
    .end local v17    # "result":I
    .restart local v5    # "result":I
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/transport/TransportClient;

    .line 174
    .local v2, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    iget-object v6, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v6, v2, v3}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 175
    .end local v2    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    goto :goto_4

    .line 176
    :cond_5
    invoke-direct {v1, v5}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyFinished(I)V

    .line 177
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v0, v3}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 178
    goto :goto_7

    .line 173
    :catchall_2
    move-exception v0

    goto :goto_8

    .line 169
    :catch_2
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_3
    const-string v6, "Unexpected error performing init"

    invoke-static {v2, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 171
    const/16 v5, -0x3e8

    .line 173
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/transport/TransportClient;

    .line 174
    .restart local v2    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    iget-object v6, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v6, v2, v3}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 175
    .end local v2    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    goto :goto_6

    .line 179
    :goto_7
    return-void

    .line 173
    :goto_8
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/backup/transport/TransportClient;

    .line 174
    .local v6, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    iget-object v7, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v7, v6, v3}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 175
    .end local v6    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    goto :goto_9

    .line 176
    :cond_6
    invoke-direct {v1, v5}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyFinished(I)V

    .line 177
    iget-object v2, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v2, v3}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 178
    throw v0
.end method
