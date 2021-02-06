.class Lcom/android/server/content/SyncManager$SyncHandler;
.super Landroid/os/Handler;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncHandler"
.end annotation


# static fields
.field private static final MESSAGE_ACCOUNTS_UPDATED:I = 0x9

.field private static final MESSAGE_CANCEL:I = 0x6

.field private static final MESSAGE_MONITOR_SYNC:I = 0x8

.field static final MESSAGE_REMOVE_PERIODIC_SYNC:I = 0xe

.field static final MESSAGE_SCHEDULE_SYNC:I = 0xc

.field private static final MESSAGE_SERVICE_CONNECTED:I = 0x4

.field private static final MESSAGE_SERVICE_DISCONNECTED:I = 0x5

.field static final MESSAGE_START_SYNC:I = 0xa

.field static final MESSAGE_STOP_SYNC:I = 0xb

.field private static final MESSAGE_SYNC_FINISHED:I = 0x1

.field static final MESSAGE_UPDATE_PERIODIC_SYNC:I = 0xd


# instance fields
.field public final mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

.field private final mWakeLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncManager;Landroid/os/Looper;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/content/SyncManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2907
    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 2908
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2904
    new-instance v0, Lcom/android/server/content/SyncManager$SyncTimeTracker;

    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/content/SyncManager$SyncTimeTracker;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$1;)V

    iput-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    .line 2905
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    .line 2909
    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/content/SyncManager$SyncHandler;Lcom/android/server/content/SyncOperation;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager$SyncHandler;
    .param p1, "x1"    # Lcom/android/server/content/SyncOperation;

    .line 2885
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->getSyncWakeLock(Lcom/android/server/content/SyncOperation;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    return-object v0
.end method

.method private cancelActiveSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "why"    # Ljava/lang/String;

    .line 3591
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3593
    .local v0, "activeSyncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncManager$ActiveSyncContext;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3594
    .local v2, "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    if-eqz v2, :cond_2

    .line 3595
    iget-object v3, v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 3597
    .local v3, "opInfo":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3598
    goto :goto_0

    .line 3600
    :cond_0
    const/4 v4, 0x0

    if-eqz p2, :cond_1

    iget-object v5, v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 3601
    invoke-virtual {v5, p2, v4}, Lcom/android/server/content/SyncOperation;->areExtrasEqual(Landroid/os/Bundle;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3603
    goto :goto_0

    .line 3605
    :cond_1
    iget-object v5, v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v5, v5, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-static {v5, v4, p3}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    .line 3607
    const/4 v4, 0x0

    invoke-direct {p0, v4, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3609
    .end local v2    # "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .end local v3    # "opInfo":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_2
    goto :goto_0

    .line 3610
    :cond_3
    return-void
.end method

.method private closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 4
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3757
    invoke-virtual {p1}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->close()V

    .line 3758
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3759
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncInfo:Landroid/content/SyncInfo;

    iget-object v2, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v2, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->removeActiveSync(Landroid/content/SyncInfo;I)V

    .line 3762
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3763
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removing all MESSAGE_MONITOR_SYNC & MESSAGE_SYNC_EXPIRED for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3764
    invoke-virtual {p1}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3763
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3766
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->removeMessages(ILjava/lang/Object;)V

    .line 3768
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "closeActiveSyncContext: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3769
    return-void
.end method

.method private computeSyncOpState(Lcom/android/server/content/SyncOperation;)I
    .locals 11
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;

    .line 3439
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    .line 3441
    .local v2, "isLoggable":Z
    iget-object v3, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 3444
    .local v3, "target":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v4}, Lcom/android/server/content/SyncManager;->access$3400(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v4

    .line 3445
    .local v4, "accounts":[Landroid/accounts/AccountAndUser;
    iget-object v5, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v6, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v7, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v5, v4, v6, v7}, Lcom/android/server/content/SyncManager;->access$3600(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v5

    const/4 v6, 0x3

    if-nez v5, :cond_1

    .line 3446
    if-eqz v2, :cond_0

    .line 3447
    const-string v1, "    Dropping sync operation: account doesn\'t exist."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3449
    :cond_0
    const-string v1, "SYNC_OP_STATE_INVALID: account doesn\'t exist."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3450
    return v6

    .line 3453
    :cond_1
    iget-object v5, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v7, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v8, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v9, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-virtual {v5, v7, v8, v9, v10}, Lcom/android/server/content/SyncManager;->computeSyncable(Landroid/accounts/Account;ILjava/lang/String;Z)I

    move-result v5

    .line 3454
    .local v5, "state":I
    if-ne v5, v6, :cond_3

    .line 3455
    if-eqz v2, :cond_2

    .line 3456
    const-string v6, "    Dropping sync operation: isSyncable == SYNCABLE_NO_ACCOUNT_ACCESS"

    invoke-static {v0, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3459
    :cond_2
    const-string v6, "SYNC_OP_STATE_INVALID_NO_ACCOUNT_ACCESS"

    invoke-static {v0, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3460
    return v1

    .line 3462
    :cond_3
    if-nez v5, :cond_5

    .line 3463
    if-eqz v2, :cond_4

    .line 3464
    const-string v1, "    Dropping sync operation: isSyncable == NOT_SYNCABLE"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3466
    :cond_4
    const-string v1, "SYNC_OP_STATE_INVALID: NOT_SYNCABLE"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3467
    const/4 v0, 0x4

    return v0

    .line 3470
    :cond_5
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    iget v6, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v1, v6}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 3471
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    iget-object v7, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v8, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v9, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v1, v7, v8, v9}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v10

    goto :goto_0

    :cond_6
    move v1, v6

    .line 3478
    .local v1, "syncEnabled":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isIgnoreSettings()Z

    move-result v7

    if-nez v7, :cond_8

    if-gez v5, :cond_7

    goto :goto_1

    :cond_7
    move v10, v6

    :cond_8
    :goto_1
    move v7, v10

    .line 3481
    .local v7, "ignoreSystemConfiguration":Z
    if-nez v1, :cond_a

    if-nez v7, :cond_a

    .line 3482
    if-eqz v2, :cond_9

    .line 3483
    const-string v6, "    Dropping sync operation: disallowed by settings/network."

    invoke-static {v0, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3485
    :cond_9
    const-string v6, "SYNC_OP_STATE_INVALID: disallowed by settings/network"

    invoke-static {v0, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3486
    const/4 v0, 0x5

    return v0

    .line 3488
    :cond_a
    return v6
.end method

.method private deferActiveSyncH(Lcom/android/server/content/SyncManager$ActiveSyncContext;Ljava/lang/String;)V
    .locals 3
    .param p1, "asc"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .param p2, "why"    # Ljava/lang/String;

    .line 3137
    iget-object v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 3138
    .local v0, "op":Lcom/android/server/content/SyncOperation;
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3139
    const-wide/16 v1, 0x2710

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/server/content/SyncManager$SyncHandler;->deferSyncH(Lcom/android/server/content/SyncOperation;JLjava/lang/String;)V

    .line 3140
    return-void
.end method

.method private deferStoppedSyncH(Lcom/android/server/content/SyncOperation;J)V
    .locals 2
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;
    .param p2, "delay"    # J

    .line 3126
    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v0, :cond_0

    .line 3127
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->createOneTimeSyncOperation()Lcom/android/server/content/SyncOperation;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lcom/android/server/content/SyncManager;->access$2700(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    goto :goto_0

    .line 3129
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->access$2700(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    .line 3131
    :goto_0
    return-void
.end method

.method private deferSyncH(Lcom/android/server/content/SyncOperation;JLjava/lang/String;)V
    .locals 5
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;
    .param p2, "delay"    # J
    .param p4, "why"    # Ljava/lang/String;

    .line 3110
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "deferSyncH() "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "periodic "

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string/jumbo v4, "sync.  op="

    aput-object v4, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 v2, 0x4

    const-string v4, " delay="

    aput-object v4, v1, v2

    const/4 v2, 0x5

    .line 3111
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string v4, " why="

    aput-object v4, v1, v2

    const/4 v2, 0x7

    aput-object p4, v1, v2

    .line 3110
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3112
    iget v0, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-static {v0, v3, p4}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    .line 3113
    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v0, :cond_1

    .line 3114
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->createOneTimeSyncOperation()Lcom/android/server/content/SyncOperation;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lcom/android/server/content/SyncManager;->access$2700(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    goto :goto_1

    .line 3119
    :cond_1
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    const-string v1, "deferSyncH()"

    invoke-static {v0, p1, v1}, Lcom/android/server/content/SyncManager;->access$1300(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 3120
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->access$2700(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    .line 3122
    :goto_1
    return-void
.end method

.method private dispatchSyncOperation(Lcom/android/server/content/SyncOperation;)Z
    .locals 17
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;

    .line 3492
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const-string v8, "SyncManager"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchSyncOperation: we are going to sync "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "num active syncs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3495
    iget-object v1, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3496
    .local v2, "syncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3497
    .end local v2    # "syncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    goto :goto_0

    .line 3499
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->isAppStandbyExempted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3500
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 3502
    .local v1, "usmi":Landroid/app/usage/UsageStatsManagerInternal;
    if-eqz v1, :cond_1

    .line 3503
    iget-object v2, v7, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v3, v7, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 3504
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 3503
    invoke-virtual {v1, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportExemptedSyncStart(Ljava/lang/String;I)V

    .line 3511
    .end local v1    # "usmi":Landroid/app/usage/UsageStatsManagerInternal;
    :cond_1
    iget-object v10, v7, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 3512
    .local v10, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    iget-object v1, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v2, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 3513
    invoke-static {v1, v2}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v11

    .line 3515
    .local v11, "syncAdapterType":Landroid/content/SyncAdapterType;
    iget-object v1, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v2, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v1, v11, v2}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v12

    .line 3516
    .local v12, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    const/4 v13, 0x1

    const/4 v14, 0x0

    if-nez v12, :cond_2

    .line 3517
    iget-object v1, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "dispatchSyncOperation() failed: no sync adapter info for "

    aput-object v3, v2, v14

    aput-object v11, v2, v13

    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t find a sync adapter for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", removing settings for it"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3521
    iget-object v1, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/android/server/content/SyncStorageEngine;->removeAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 3522
    return v14

    .line 3524
    :cond_2
    iget v15, v12, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 3525
    .local v15, "targetUid":I
    iget-object v6, v12, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 3526
    .local v6, "targetComponent":Landroid/content/ComponentName;
    new-instance v16, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 3527
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/content/SyncManager$SyncHandler;->insertStartSyncEvent(Lcom/android/server/content/SyncOperation;)J

    move-result-wide v4

    move-object/from16 v1, v16

    move-object/from16 v3, p1

    move-object v13, v6

    .end local v6    # "targetComponent":Landroid/content/ComponentName;
    .local v13, "targetComponent":Landroid/content/ComponentName;
    move v6, v15

    invoke-direct/range {v1 .. v6}, Lcom/android/server/content/SyncManager$ActiveSyncContext;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;JI)V

    .line 3528
    .local v1, "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchSyncOperation: starting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3532
    :cond_3
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/content/SyncStorageEngine;->addActiveSync(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncInfo:Landroid/content/SyncInfo;

    .line 3533
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3536
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2, v1}, Lcom/android/server/content/SyncManager;->access$3000(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3538
    iget v2, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v1, v13, v2}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->bindToSyncAdapter(Landroid/content/ComponentName;I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3539
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "dispatchSyncOperation() failed: bind failed. target: "

    aput-object v4, v3, v14

    const/4 v4, 0x1

    aput-object v13, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bind attempt failed - target: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3542
    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3543
    return v14

    .line 3546
    :cond_4
    const/4 v2, 0x1

    return v2
.end method

.method private findActiveSyncContextH(I)Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .locals 4
    .param p1, "jobId"    # I

    .line 3220
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3221
    .local v1, "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v2, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 3222
    .local v2, "op":Lcom/android/server/content/SyncOperation;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/android/server/content/SyncOperation;->jobId:I

    if-ne v3, p1, :cond_0

    .line 3223
    return-object v1

    .line 3225
    .end local v1    # "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .end local v2    # "op":Lcom/android/server/content/SyncOperation;
    :cond_0
    goto :goto_0

    .line 3226
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSyncWakeLock(Lcom/android/server/content/SyncOperation;)Landroid/os/PowerManager$WakeLock;
    .locals 5
    .param p1, "operation"    # Lcom/android/server/content/SyncOperation;

    .line 3093
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    move-result-object v0

    .line 3094
    .local v0, "wakeLockKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager$WakeLock;

    .line 3095
    .local v1, "wakeLock":Landroid/os/PowerManager$WakeLock;
    if-nez v1, :cond_0

    .line 3096
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*sync*/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3097
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$3100(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 3098
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 3099
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3101
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private handleSyncMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 2924
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    .line 2927
    .local v2, "isLoggable":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v4}, Lcom/android/server/content/SyncManager;->access$400(Lcom/android/server/content/SyncManager;)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/content/SyncManager;->access$302(Lcom/android/server/content/SyncManager;Z)Z

    .line 2928
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_10

    const/4 v6, 0x4

    if-eq v3, v6, :cond_e

    const/4 v7, 0x5

    if-eq v3, v7, :cond_b

    const/4 v6, 0x6

    if-eq v3, v6, :cond_9

    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 2978
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 2979
    .local v0, "args":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/android/server/content/SyncManager$SyncHandler;->removePeriodicSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2980
    goto/16 :goto_3

    .line 2972
    .end local v0    # "args":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;>;"
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;

    .line 2974
    .local v0, "data":Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;
    iget-object v4, v0, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-wide v5, v0, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->pollFrequency:J

    iget-wide v7, v0, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->flex:J

    iget-object v9, v0, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->extras:Landroid/os/Bundle;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/content/SyncManager$SyncHandler;->updateOrAddPeriodicSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    .line 2976
    goto/16 :goto_3

    .line 2937
    .end local v0    # "data":Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;

    .line 2939
    .local v0, "syncPayload":Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;
    iget-object v1, v0, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;->syncOperation:Lcom/android/server/content/SyncOperation;

    .line 2940
    .local v1, "op":Lcom/android/server/content/SyncOperation;
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-wide v4, v0, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;->minDelayMillis:J

    invoke-static {v3, v1, v4, v5}, Lcom/android/server/content/SyncManager;->access$2700(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    .line 2941
    goto/16 :goto_3

    .line 2949
    .end local v0    # "syncPayload":Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;
    .end local v1    # "op":Lcom/android/server/content/SyncOperation;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 2950
    .restart local v1    # "op":Lcom/android/server/content/SyncOperation;
    if-eqz v2, :cond_0

    .line 2951
    const-string v3, "Stop sync received."

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2953
    :cond_0
    iget v3, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-direct {p0, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->findActiveSyncContextH(I)Lcom/android/server/content/SyncManager$ActiveSyncContext;

    move-result-object v3

    .line 2954
    .local v3, "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    if-eqz v3, :cond_13

    .line 2955
    invoke-direct {p0, v6, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 2956
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v5

    .line 2957
    .local v6, "reschedule":Z
    :goto_0
    iget v7, p1, Landroid/os/Message;->arg2:I

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    .line 2958
    .local v4, "applyBackoff":Z
    :goto_1
    if-eqz v2, :cond_3

    .line 2959
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stopping sync. Reschedule: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "Backoff: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    :cond_3
    if-eqz v4, :cond_4

    .line 2963
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v5, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-static {v0, v5}, Lcom/android/server/content/SyncManager;->access$2800(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 2965
    :cond_4
    if-eqz v6, :cond_5

    .line 2966
    const-wide/16 v7, 0x0

    invoke-direct {p0, v1, v7, v8}, Lcom/android/server/content/SyncManager$SyncHandler;->deferStoppedSyncH(Lcom/android/server/content/SyncOperation;J)V

    .line 2968
    .end local v4    # "applyBackoff":Z
    .end local v6    # "reschedule":Z
    :cond_5
    goto/16 :goto_3

    .line 2944
    .end local v1    # "op":Lcom/android/server/content/SyncOperation;
    .end local v3    # "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/content/SyncOperation;

    .line 2945
    .local v0, "op":Lcom/android/server/content/SyncOperation;
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->startSyncH(Lcom/android/server/content/SyncOperation;)V

    .line 2946
    goto/16 :goto_3

    .line 2930
    .end local v0    # "op":Lcom/android/server/content/SyncOperation;
    :pswitch_5
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2931
    const-string v1, "handleSyncHandlerMessage: MESSAGE_ACCOUNTS_UPDATED"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    :cond_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 2934
    .local v0, "targets":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->updateRunningAccountsH(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 2935
    goto/16 :goto_3

    .line 3065
    .end local v0    # "targets":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3066
    .local v1, "monitoredSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    if-eqz v2, :cond_7

    .line 3067
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSyncHandlerMessage: MESSAGE_MONITOR_SYNC: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v7, v7, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3071
    :cond_7
    invoke-direct {p0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->isSyncNotUsingNetworkH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3072
    const-string v3, "Detected sync making no progress for %s. cancelling."

    new-array v4, v4, [Ljava/lang/Object;

    .line 3074
    invoke-static {v1}, Lcom/android/server/content/SyncLogger;->logSafe(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    .line 3072
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3075
    iget-object v0, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v0, v0, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string/jumbo v3, "no network activity"

    invoke-static {v0, v5, v3}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    .line 3078
    invoke-direct {p0, v6, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    goto/16 :goto_3

    .line 3082
    :cond_8
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->access$3000(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    goto/16 :goto_3

    .line 2983
    .end local v1    # "monitoredSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 2984
    .local v1, "endpoint":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v3

    .line 2985
    .local v3, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_a

    .line 2986
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSyncHandlerMessage: MESSAGE_CANCEL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " bundle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2989
    :cond_a
    const-string v0, "MESSAGE_CANCEL"

    invoke-direct {p0, v1, v3, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->cancelActiveSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2990
    goto/16 :goto_3

    .line 3029
    .end local v1    # "endpoint":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v3    # "extras":Landroid/os/Bundle;
    :cond_b
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/content/SyncManager$ServiceConnectionData;

    iget-object v3, v3, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3031
    .local v3, "currentSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    if-eqz v2, :cond_c

    .line 3032
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleSyncHandlerMessage: MESSAGE_SERVICE_DISCONNECTED: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    :cond_c
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0, v3}, Lcom/android/server/content/SyncManager;->access$2900(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_13

    .line 3040
    :try_start_1
    iget-object v0, v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    if-eqz v0, :cond_d

    .line 3041
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v0

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "Calling cancelSync for SERVICE_DISCONNECTED "

    aput-object v7, v6, v5

    aput-object v3, v6, v4

    const-string v7, " adapter="

    aput-object v7, v6, v1

    const/4 v7, 0x3

    iget-object v8, v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3044
    iget-object v0, v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    invoke-interface {v0, v3}, Landroid/content/ISyncAdapter;->cancelSync(Landroid/content/ISyncContext;)V

    .line 3045
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v0

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "Canceled"

    aput-object v7, v6, v5

    invoke-virtual {v0, v6}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3050
    :cond_d
    goto :goto_2

    .line 3047
    :catch_0
    move-exception v0

    .line 3048
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    iget-object v6, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v6}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v6

    new-array v1, v1, [Ljava/lang/Object;

    const-string v7, "RemoteException "

    aput-object v7, v1, v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v4

    invoke-virtual {v6, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3054
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    new-instance v0, Landroid/content/SyncResult;

    invoke-direct {v0}, Landroid/content/SyncResult;-><init>()V

    .line 3055
    .local v0, "syncResult":Landroid/content/SyncResult;
    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v1, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v1, Landroid/content/SyncStats;->numIoExceptions:J

    .line 3056
    iget-object v1, v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v1, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string/jumbo v4, "service disconnected"

    invoke-static {v1, v5, v4}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    .line 3059
    invoke-direct {p0, v0, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3060
    .end local v0    # "syncResult":Landroid/content/SyncResult;
    goto/16 :goto_3

    .line 3014
    .end local v3    # "currentSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/content/SyncManager$ServiceConnectionData;

    .line 3015
    .local v1, "msgData":Lcom/android/server/content/SyncManager$ServiceConnectionData;
    if-eqz v2, :cond_f

    .line 3016
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSyncHandlerMessage: MESSAGE_SERVICE_CONNECTED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3020
    :cond_f
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v3, v1, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    invoke-static {v0, v3}, Lcom/android/server/content/SyncManager;->access$2900(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3021
    iget-object v0, v1, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-object v3, v1, Lcom/android/server/content/SyncManager$ServiceConnectionData;->adapter:Landroid/os/IBinder;

    invoke-direct {p0, v0, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->runBoundToAdapterH(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/os/IBinder;)V

    goto :goto_3

    .line 2993
    .end local v1    # "msgData":Lcom/android/server/content/SyncManager$ServiceConnectionData;
    :cond_10
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;

    .line 2995
    .local v1, "payload":Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v4, v1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    invoke-static {v3, v4}, Lcom/android/server/content/SyncManager;->access$2900(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 2996
    if-eqz v2, :cond_13

    .line 2997
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSyncHandlerMessage: dropping since the sync is no longer active: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3003
    :cond_11
    if-eqz v2, :cond_12

    .line 3004
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncFinished"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-object v4, v4, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3006
    :cond_12
    iget-object v0, v1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-object v0, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v0, v0, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string/jumbo v3, "sync finished"

    invoke-static {v0, v5, v3}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    .line 3009
    iget-object v0, v1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->syncResult:Landroid/content/SyncResult;

    iget-object v3, v1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    invoke-direct {p0, v0, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3011
    nop

    .line 3088
    .end local v1    # "payload":Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;
    :cond_13
    :goto_3
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->update()V

    .line 3089
    nop

    .line 3090
    return-void

    .line 3088
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    invoke-virtual {v1}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->update()V

    .line 3089
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private installHandleTooManyDeletesNotification(Landroid/accounts/Account;Ljava/lang/String;JI)V
    .locals 16
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "numDeletes"    # J
    .param p5, "userId"    # I

    .line 3802
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$4700(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 3804
    :cond_0
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$2000(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 3806
    .local v2, "providerInfo":Landroid/content/pm/ProviderInfo;
    if-nez v2, :cond_1

    .line 3807
    return-void

    .line 3809
    :cond_1
    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v4}, Lcom/android/server/content/SyncManager;->access$2000(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 3811
    .local v4, "authorityName":Ljava/lang/CharSequence;
    new-instance v5, Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v6}, Lcom/android/server/content/SyncManager;->access$2000(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v6

    const-class v7, Landroid/content/SyncActivityTooManyDeletes;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3812
    .local v5, "clickIntent":Landroid/content/Intent;
    const-string v6, "account"

    move-object/from16 v7, p1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3813
    const-string v6, "authority"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3814
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "provider"

    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3815
    const-string/jumbo v6, "numDeletes"

    move-wide/from16 v14, p3

    invoke-virtual {v5, v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3817
    invoke-direct {v0, v5}, Lcom/android/server/content/SyncManager$SyncHandler;->isActivityAvailable(Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3818
    const-string v3, "SyncManager"

    const-string v6, "No activity found to handle too many deletes."

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3819
    return-void

    .line 3822
    :cond_2
    new-instance v6, Landroid/os/UserHandle;

    move/from16 v13, p5

    invoke-direct {v6, v13}, Landroid/os/UserHandle;-><init>(I)V

    .line 3823
    .local v6, "user":Landroid/os/UserHandle;
    iget-object v8, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 3824
    invoke-static {v8}, Lcom/android/server/content/SyncManager;->access$2000(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    const/high16 v11, 0x10000000

    const/4 v12, 0x0

    move-object v10, v5

    move-object v13, v6

    invoke-static/range {v8 .. v13}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 3827
    .local v8, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v9, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v9}, Lcom/android/server/content/SyncManager;->access$2000(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x104027b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 3830
    .local v9, "tooManyDeletesDescFormat":Ljava/lang/CharSequence;
    iget-object v10, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v10, v6}, Lcom/android/server/content/SyncManager;->access$4800(Lcom/android/server/content/SyncManager;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v10

    .line 3831
    .local v10, "contextForUser":Landroid/content/Context;
    new-instance v11, Landroid/app/Notification$Builder;

    sget-object v12, Lcom/android/internal/notification/SystemNotificationChannels;->ACCOUNT:Ljava/lang/String;

    invoke-direct {v11, v10, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v12, 0x1080808

    .line 3833
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 3834
    invoke-static {v12}, Lcom/android/server/content/SyncManager;->access$2000(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v12

    const v13, 0x1040279

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 3835
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v11

    const v12, 0x106001c

    .line 3836
    invoke-virtual {v10, v12}, Landroid/content/Context;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v11

    const v12, 0x104027a

    .line 3838
    invoke-virtual {v10, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 3841
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v4, v13, v3

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3840
    invoke-virtual {v11, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 3842
    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 3843
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 3844
    .local v3, "notification":Landroid/app/Notification;
    iget v11, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v11, v11, 0x2

    iput v11, v3, Landroid/app/Notification;->flags:I

    .line 3845
    iget-object v11, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v11}, Lcom/android/server/content/SyncManager;->access$4700(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object v11

    .line 3846
    invoke-virtual/range {p1 .. p1}, Landroid/accounts/Account;->hashCode()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v13

    xor-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x12

    .line 3845
    invoke-virtual {v11, v12, v13, v3, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 3849
    return-void
.end method

.method private isActivityAvailable(Landroid/content/Intent;)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .line 3858
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$2000(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3859
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 3860
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 3861
    .local v3, "listSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 3862
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 3863
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    .line 3865
    return v7

    .line 3861
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3869
    .end local v4    # "i":I
    :cond_1
    return v1
.end method

.method private isSyncNotUsingNetworkH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    .locals 22
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3412
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapterUid:I

    .line 3413
    invoke-static {v2, v3}, Lcom/android/server/content/SyncManager;->access$4100(Lcom/android/server/content/SyncManager;I)J

    move-result-wide v2

    .line 3414
    .local v2, "bytesTransferredCurrent":J
    iget-wide v4, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBytesTransferredAtLastPoll:J

    sub-long v4, v2, v4

    .line 3417
    .local v4, "deltaBytesTransferred":J
    const-string v6, "SyncManager"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_0

    .line 3419
    move-wide v11, v4

    .line 3420
    .local v11, "remainder":J
    const-wide/32 v13, 0x100000

    div-long v15, v11, v13

    .line 3421
    .local v15, "mb":J
    rem-long/2addr v11, v13

    .line 3422
    const-wide/16 v13, 0x400

    div-long v17, v11, v13

    .line 3423
    .local v17, "kb":J
    rem-long/2addr v11, v13

    .line 3424
    move-wide v13, v11

    .line 3425
    .local v13, "b":J
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    .line 3427
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    move-object/from16 v21, v8

    iget-wide v7, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mLastPolledTimeElapsed:J

    sub-long v19, v19, v7

    const-wide/16 v7, 0x3e8

    div-long v19, v19, v7

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v21, v10

    .line 3429
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v21, v9

    const/4 v7, 0x2

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v21, v7

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v21, v8

    .line 3425
    const-string v7, "Time since last update: %ds. Delta transferred: %dMBs,%dKBs,%dBs"

    move-object/from16 v8, v21

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3432
    .end local v11    # "remainder":J
    .end local v13    # "b":J
    .end local v15    # "mb":J
    .end local v17    # "kb":J
    :cond_0
    const-wide/16 v6, 0xa

    cmp-long v6, v4, v6

    if-gtz v6, :cond_1

    goto :goto_0

    :cond_1
    move v9, v10

    :goto_0
    return v9
.end method

.method private maybeUpdateSyncPeriodH(Lcom/android/server/content/SyncOperation;JJ)V
    .locals 8
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p2, "pollFrequencyMillis"    # J
    .param p4, "flexMillis"    # J

    .line 3295
    iget-wide v0, p1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcom/android/server/content/SyncOperation;->flexMillis:J

    cmp-long v0, p4, v0

    if-eqz v0, :cond_2

    .line 3297
    :cond_0
    const/4 v0, 0x2

    const-string v1, "SyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updating period "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " and flex to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3301
    :cond_1
    new-instance v0, Lcom/android/server/content/SyncOperation;

    move-object v2, v0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncOperation;JJ)V

    .line 3303
    .local v0, "newOp":Lcom/android/server/content/SyncOperation;
    iget v1, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    iput v1, v0, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 3304
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1, v0}, Lcom/android/server/content/SyncManager;->access$3700(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    .line 3306
    .end local v0    # "newOp":Lcom/android/server/content/SyncOperation;
    :cond_2
    return-void
.end method

.method private removePeriodicSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "why"    # Ljava/lang/String;

    .line 3401
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$3800(Lcom/android/server/content/SyncManager;)V

    .line 3402
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1200(Lcom/android/server/content/SyncManager;)Ljava/util/List;

    move-result-object v0

    .line 3403
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncOperation;

    .line 3404
    .local v2, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v3, v2, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 3405
    invoke-virtual {v2, p2, v3}, Lcom/android/server/content/SyncOperation;->areExtrasEqual(Landroid/os/Bundle;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3406
    invoke-direct {p0, v2, p3}, Lcom/android/server/content/SyncManager$SyncHandler;->removePeriodicSyncInternalH(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 3408
    .end local v2    # "op":Lcom/android/server/content/SyncOperation;
    :cond_0
    goto :goto_0

    .line 3409
    :cond_1
    return-void
.end method

.method private removePeriodicSyncInternalH(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V
    .locals 8
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p2, "why"    # Ljava/lang/String;

    .line 3385
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1200(Lcom/android/server/content/SyncManager;)Ljava/util/List;

    move-result-object v0

    .line 3386
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncOperation;

    .line 3387
    .local v2, "op":Lcom/android/server/content/SyncOperation;
    iget v3, v2, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    iget v4, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    if-eq v3, v4, :cond_0

    iget v3, v2, Lcom/android/server/content/SyncOperation;->jobId:I

    iget v4, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    if-ne v3, v4, :cond_2

    .line 3388
    :cond_0
    iget v3, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-direct {p0, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->findActiveSyncContextH(I)Lcom/android/server/content/SyncManager$ActiveSyncContext;

    move-result-object v3

    .line 3389
    .local v3, "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 3390
    iget v5, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string/jumbo v6, "removePeriodicSyncInternalH"

    invoke-static {v5, v4, v6}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    .line 3392
    const/4 v5, 0x0

    invoke-direct {p0, v5, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3394
    :cond_1
    iget-object v5, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v5}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "removePeriodicSyncInternalH-canceling: "

    aput-object v7, v6, v4

    const/4 v4, 0x1

    aput-object v2, v6, v4

    invoke-virtual {v5, v6}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3395
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v4, v2, p2}, Lcom/android/server/content/SyncManager;->access$1300(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 3397
    .end local v2    # "op":Lcom/android/server/content/SyncOperation;
    .end local v3    # "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_2
    goto :goto_0

    .line 3398
    :cond_3
    return-void
.end method

.method private reschedulePeriodicSyncH(Lcom/android/server/content/SyncOperation;)V
    .locals 5
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;

    .line 3617
    const/4 v0, 0x0

    .line 3618
    .local v0, "periodicSync":Lcom/android/server/content/SyncOperation;
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$1200(Lcom/android/server/content/SyncManager;)Ljava/util/List;

    move-result-object v1

    .line 3619
    .local v1, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncOperation;

    .line 3620
    .local v3, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v4, v3, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v4, :cond_0

    invoke-virtual {p1, v3}, Lcom/android/server/content/SyncOperation;->matchesPeriodicOperation(Lcom/android/server/content/SyncOperation;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3621
    move-object v0, v3

    .line 3622
    goto :goto_1

    .line 3624
    .end local v3    # "op":Lcom/android/server/content/SyncOperation;
    :cond_0
    goto :goto_0

    .line 3625
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 3626
    return-void

    .line 3628
    :cond_2
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2, v0}, Lcom/android/server/content/SyncManager;->access$3700(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    .line 3629
    return-void
.end method

.method private runBoundToAdapterH(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/os/IBinder;)V
    .locals 10
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .param p2, "syncAdapter"    # Landroid/os/IBinder;

    .line 3551
    const-string v0, "SyncManager"

    iget-object v1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 3553
    .local v1, "syncOperation":Lcom/android/server/content/SyncOperation;
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    .line 3554
    invoke-interface {p2, p1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 3556
    iget-object v5, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v5}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/content/SyncLogger;->enabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3557
    iget-object v5, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v5}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v5

    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sync start: account="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, " authority="

    aput-object v7, v6, v4

    iget-object v7, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v7, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    aput-object v7, v6, v2

    const/4 v7, 0x3

    const-string v8, " reason="

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const/4 v8, 0x0

    iget v9, v1, Lcom/android/server/content/SyncOperation;->reason:I

    .line 3559
    invoke-static {v8, v9}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, " extras="

    aput-object v8, v6, v7

    const/4 v7, 0x6

    .line 3560
    invoke-virtual {v1}, Lcom/android/server/content/SyncOperation;->getExtrasAsString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, " adapter="

    aput-object v8, v6, v7

    const/16 v7, 0x8

    iget-object v8, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    aput-object v8, v6, v7

    .line 3557
    invoke-virtual {v5, v6}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3564
    :cond_0
    invoke-static {p2}, Landroid/content/ISyncAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncAdapter;

    move-result-object v5

    iput-object v5, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    .line 3565
    iget-object v5, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    iget-object v6, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v6, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v7, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 3567
    invoke-virtual {v1}, Lcom/android/server/content/SyncOperation;->getClonedExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 3566
    invoke-interface {v5, p1, v6, v7, v8}, Landroid/content/ISyncAdapter;->startSync(Landroid/content/ISyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 3569
    iget-object v5, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v5}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "Sync is running now..."

    aput-object v7, v6, v3

    invoke-virtual {v5, v6}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3576
    :catch_0
    move-exception v5

    .line 3577
    .local v5, "exc":Ljava/lang/RuntimeException;
    iget-object v6, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v6}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v7, "Sync failed with RuntimeException: "

    aput-object v7, v2, v3

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v6, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3578
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught RuntimeException while starting the sync "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3580
    invoke-static {v1}, Lcom/android/server/content/SyncLogger;->logSafe(Lcom/android/server/content/SyncOperation;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3579
    invoke-static {v0, v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3570
    .end local v5    # "exc":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v5

    .line 3571
    .local v5, "remoteExc":Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v6}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v7, "Sync failed with RemoteException: "

    aput-object v7, v2, v3

    invoke-virtual {v5}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v6, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3572
    const-string/jumbo v2, "maybeStartNextSync: caught a RemoteException, rescheduling"

    invoke-static {v0, v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3573
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3574
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-static {v0, v2}, Lcom/android/server/content/SyncManager;->access$2800(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 3575
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->access$3700(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    .line 3581
    .end local v5    # "remoteExc":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 3582
    :goto_1
    return-void
.end method

.method private runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 32
    .param p1, "syncResult"    # Landroid/content/SyncResult;
    .param p2, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3633
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    .line 3635
    .local v13, "isLoggable":Z
    iget-object v14, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 3636
    .local v14, "syncOperation":Lcom/android/server/content/SyncOperation;
    iget-object v15, v14, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 3638
    .local v15, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    iget-boolean v2, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3639
    iget-object v2, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    invoke-interface {v2}, Landroid/content/ISyncAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v12, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3640
    iput-boolean v3, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    .line 3642
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    sub-long v16, v4, v6

    .line 3647
    .local v16, "elapsedTime":J
    iget-object v2, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v2

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Object;

    const-string/jumbo v6, "runSyncFinishedOrCanceledH() op="

    aput-object v6, v5, v3

    const/4 v6, 0x1

    aput-object v14, v5, v6

    const-string v7, " result="

    aput-object v7, v5, v1

    const/4 v7, 0x3

    aput-object v11, v5, v7

    invoke-virtual {v2, v5}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3649
    if-eqz v11, :cond_7

    .line 3650
    if-eqz v13, :cond_1

    .line 3651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "runSyncFinishedOrCanceled [finished]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3657
    :cond_1
    invoke-direct {v10, v12}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3661
    iget-boolean v1, v14, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v1, :cond_2

    .line 3662
    iget-object v1, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    const-string/jumbo v2, "runSyncFinishedOrCanceledH()-finished"

    invoke-static {v1, v14, v2}, Lcom/android/server/content/SyncManager;->access$1300(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 3665
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncResult;->hasError()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3666
    const-string/jumbo v0, "success"

    .line 3668
    .local v0, "historyMessage":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3669
    .local v1, "downstreamActivity":I
    const/4 v2, 0x0

    .line 3670
    .local v2, "upstreamActivity":I
    iget-object v3, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v4, v14, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const-string/jumbo v5, "sync success"

    invoke-static {v3, v4, v5}, Lcom/android/server/content/SyncManager;->access$4200(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    .line 3675
    invoke-virtual {v14}, Lcom/android/server/content/SyncOperation;->isDerivedFromFailedPeriodicSync()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3676
    invoke-direct {v10, v14}, Lcom/android/server/content/SyncManager$SyncHandler;->reschedulePeriodicSyncH(Lcom/android/server/content/SyncOperation;)V

    goto :goto_1

    .line 3679
    .end local v0    # "historyMessage":Ljava/lang/String;
    .end local v1    # "downstreamActivity":I
    .end local v2    # "upstreamActivity":I
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed sync operation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3680
    invoke-static {v14}, Lcom/android/server/content/SyncLogger;->logSafe(Lcom/android/server/content/SyncOperation;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3679
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3682
    iget v0, v14, Lcom/android/server/content/SyncOperation;->retries:I

    add-int/2addr v0, v6

    iput v0, v14, Lcom/android/server/content/SyncOperation;->retries:I

    .line 3683
    iget v0, v14, Lcom/android/server/content/SyncOperation;->retries:I

    iget-object v1, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$4300(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManagerConstants;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/content/SyncManagerConstants;->getMaxRetriesWithAppStandbyExemption()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 3684
    iput v3, v14, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 3688
    :cond_4
    iget-object v0, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v1, v14, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->access$2800(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 3689
    iget-boolean v0, v14, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v0, :cond_5

    .line 3691
    iget-object v0, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0, v11, v14}, Lcom/android/server/content/SyncManager;->access$4400(Lcom/android/server/content/SyncManager;Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V

    goto :goto_0

    .line 3694
    :cond_5
    iget-object v0, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-virtual {v14}, Lcom/android/server/content/SyncOperation;->createOneTimeSyncOperation()Lcom/android/server/content/SyncOperation;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager;->access$4500(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    .line 3697
    :goto_0
    nop

    .line 3698
    invoke-direct/range {p0 .. p1}, Lcom/android/server/content/SyncManager$SyncHandler;->syncResultToErrorNumber(Landroid/content/SyncResult;)I

    move-result v0

    .line 3697
    invoke-static {v0}, Landroid/content/ContentResolver;->syncErrorToString(I)Ljava/lang/String;

    move-result-object v0

    .line 3700
    .restart local v0    # "historyMessage":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3701
    .restart local v1    # "downstreamActivity":I
    const/4 v2, 0x0

    .line 3703
    .restart local v2    # "upstreamActivity":I
    :cond_6
    :goto_1
    iget-object v3, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v4, v14, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-wide v5, v11, Landroid/content/SyncResult;->delayUntil:J

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/content/SyncManager;->access$4600(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V

    move/from16 v18, v1

    move/from16 v19, v2

    goto :goto_3

    .line 3705
    .end local v0    # "historyMessage":Ljava/lang/String;
    .end local v1    # "downstreamActivity":I
    .end local v2    # "upstreamActivity":I
    :cond_7
    if-eqz v13, :cond_8

    .line 3706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "runSyncFinishedOrCanceled [canceled]: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3709
    :cond_8
    iget-boolean v0, v14, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v0, :cond_9

    .line 3710
    iget-object v0, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    const-string/jumbo v2, "runSyncFinishedOrCanceledH()-canceled"

    invoke-static {v0, v14, v2}, Lcom/android/server/content/SyncManager;->access$1300(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 3713
    :cond_9
    iget-object v0, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    if-eqz v0, :cond_a

    .line 3715
    :try_start_0
    iget-object v0, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    const-string v4, "Calling cancelSync for runSyncFinishedOrCanceled "

    aput-object v4, v2, v3

    aput-object v12, v2, v6

    const-string v4, "  adapter="

    aput-object v4, v2, v1

    iget-object v4, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    aput-object v4, v2, v7

    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3717
    iget-object v0, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    invoke-interface {v0, v12}, Landroid/content/ISyncAdapter;->cancelSync(Landroid/content/ISyncContext;)V

    .line 3718
    iget-object v0, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    const-string v4, "Canceled"

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3722
    goto :goto_2

    .line 3719
    :catch_0
    move-exception v0

    .line 3720
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "RemoteException "

    aput-object v4, v1, v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    invoke-virtual {v2, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3724
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_a
    :goto_2
    const-string v0, "canceled"

    .line 3725
    .local v0, "historyMessage":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3726
    .restart local v1    # "downstreamActivity":I
    const/4 v2, 0x0

    .line 3729
    .restart local v2    # "upstreamActivity":I
    invoke-direct {v10, v12}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    move/from16 v18, v1

    move/from16 v19, v2

    .line 3732
    .end local v1    # "downstreamActivity":I
    .end local v2    # "upstreamActivity":I
    .local v18, "downstreamActivity":I
    .local v19, "upstreamActivity":I
    :goto_3
    iget-wide v2, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mHistoryRowId:J

    move-object/from16 v1, p0

    move-object v4, v14

    move-object v5, v0

    move/from16 v6, v19

    move/from16 v7, v18

    move-wide/from16 v8, v16

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/content/SyncManager$SyncHandler;->stopSyncEvent(JLcom/android/server/content/SyncOperation;Ljava/lang/String;IIJ)V

    .line 3735
    if-eqz v11, :cond_b

    iget-boolean v1, v11, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-eqz v1, :cond_b

    .line 3736
    iget-object v2, v15, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v15, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v1, v11, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v1, Landroid/content/SyncStats;->numDeletes:J

    iget v6, v15, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/content/SyncManager$SyncHandler;->installHandleTooManyDeletesNotification(Landroid/accounts/Account;Ljava/lang/String;JI)V

    goto :goto_4

    .line 3740
    :cond_b
    iget-object v1, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$4700(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object v1

    iget-object v2, v15, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 3741
    invoke-virtual {v2}, Landroid/accounts/Account;->hashCode()I

    move-result v2

    iget-object v3, v15, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x12

    new-instance v4, Landroid/os/UserHandle;

    iget v5, v15, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 3740
    invoke-virtual {v1, v2, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 3745
    :goto_4
    if-eqz v11, :cond_c

    iget-boolean v1, v11, Landroid/content/SyncResult;->fullSyncRequested:Z

    if-eqz v1, :cond_c

    .line 3746
    iget-object v1, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    new-instance v2, Lcom/android/server/content/SyncOperation;

    iget-object v3, v15, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v4, v15, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget v5, v14, Lcom/android/server/content/SyncOperation;->owningUid:I

    iget-object v6, v14, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v7, v14, Lcom/android/server/content/SyncOperation;->reason:I

    iget v8, v14, Lcom/android/server/content/SyncOperation;->syncSource:I

    iget-object v9, v15, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    new-instance v28, Landroid/os/Bundle;

    invoke-direct/range {v28 .. v28}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v31, v0

    .end local v0    # "historyMessage":Ljava/lang/String;
    .local v31, "historyMessage":Ljava/lang/String;
    iget-boolean v0, v14, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    iget v10, v14, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    move-object/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v8

    move-object/from16 v27, v9

    move/from16 v29, v0

    move/from16 v30, v10

    invoke-direct/range {v20 .. v30}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZI)V

    invoke-static {v1, v2}, Lcom/android/server/content/SyncManager;->access$3700(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    goto :goto_5

    .line 3745
    .end local v31    # "historyMessage":Ljava/lang/String;
    .restart local v0    # "historyMessage":Ljava/lang/String;
    :cond_c
    move-object/from16 v31, v0

    .line 3754
    .end local v0    # "historyMessage":Ljava/lang/String;
    .restart local v31    # "historyMessage":Ljava/lang/String;
    :goto_5
    return-void
.end method

.method private startSyncH(Lcom/android/server/content/SyncOperation;)V
    .locals 8
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;

    .line 3143
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    .line 3144
    .local v1, "isLoggable":Z
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3148
    :cond_0
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/content/SyncStorageEngine;->setClockValid()V

    .line 3150
    iget v2, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-static {v2}, Lcom/android/server/content/SyncJobService;->markSyncStarted(I)V

    .line 3152
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$000(Lcom/android/server/content/SyncManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3153
    const-wide/32 v2, 0x36ee80

    const-string/jumbo v0, "storage low"

    invoke-direct {p0, p1, v2, v3, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->deferSyncH(Lcom/android/server/content/SyncOperation;JLjava/lang/String;)V

    .line 3154
    return-void

    .line 3157
    :cond_1
    iget-boolean v2, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 3160
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$1200(Lcom/android/server/content/SyncManager;)Ljava/util/List;

    move-result-object v2

    .line 3161
    .local v2, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncOperation;

    .line 3162
    .local v5, "syncOperation":Lcom/android/server/content/SyncOperation;
    iget v6, v5, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    iget v7, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    if-ne v6, v7, :cond_2

    .line 3163
    iget v0, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string/jumbo v4, "periodic sync, pending"

    invoke-static {v0, v3, v4}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    .line 3165
    return-void

    .line 3167
    .end local v5    # "syncOperation":Lcom/android/server/content/SyncOperation;
    :cond_2
    goto :goto_0

    .line 3170
    :cond_3
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v4, v4, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3171
    .local v5, "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v6, v5, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v6, v6, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    iget v7, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    if-ne v6, v7, :cond_4

    .line 3172
    iget v0, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string/jumbo v4, "periodic sync, already running"

    invoke-static {v0, v3, v4}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    .line 3174
    return-void

    .line 3176
    .end local v5    # "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_4
    goto :goto_1

    .line 3178
    :cond_5
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v5, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-static {v4, v5}, Lcom/android/server/content/SyncManager;->access$3200(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3179
    const-wide/16 v3, 0x0

    const-string v0, "backing off"

    invoke-direct {p0, p1, v3, v4, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->deferSyncH(Lcom/android/server/content/SyncOperation;JLjava/lang/String;)V

    .line 3180
    return-void

    .line 3185
    .end local v2    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    :cond_6
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3186
    .local v4, "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v5, v4, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    invoke-virtual {v5, p1}, Lcom/android/server/content/SyncOperation;->isConflict(Lcom/android/server/content/SyncOperation;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 3189
    iget-object v2, v4, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    invoke-virtual {v2}, Lcom/android/server/content/SyncOperation;->findPriority()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->findPriority()I

    move-result v5

    if-lt v2, v5, :cond_8

    .line 3190
    if-eqz v1, :cond_7

    .line 3191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rescheduling sync due to conflict "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3193
    :cond_7
    const-wide/16 v2, 0x2710

    const-string v0, "delay on conflict"

    invoke-direct {p0, p1, v2, v3, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->deferSyncH(Lcom/android/server/content/SyncOperation;JLjava/lang/String;)V

    .line 3194
    return-void

    .line 3196
    :cond_8
    if-eqz v1, :cond_9

    .line 3197
    const-string v2, "Pushing back running sync due to a higher priority sync"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3199
    :cond_9
    const-string/jumbo v0, "preempted"

    invoke-direct {p0, v4, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->deferActiveSyncH(Lcom/android/server/content/SyncManager$ActiveSyncContext;Ljava/lang/String;)V

    .line 3200
    goto :goto_3

    .line 3203
    .end local v4    # "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_a
    goto :goto_2

    .line 3205
    :cond_b
    :goto_3
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->computeSyncOpState(Lcom/android/server/content/SyncOperation;)I

    move-result v0

    .line 3206
    .local v0, "syncOpState":I
    if-eqz v0, :cond_c

    .line 3207
    iget v2, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid op state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    .line 3209
    return-void

    .line 3212
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->dispatchSyncOperation(Lcom/android/server/content/SyncOperation;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 3213
    iget v2, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string v4, "dispatchSyncOperation() failed"

    invoke-static {v2, v3, v4}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    .line 3216
    :cond_d
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v3, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-static {v2, v3}, Lcom/android/server/content/SyncManager;->access$3300(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 3217
    return-void
.end method

.method private syncResultToErrorNumber(Landroid/content/SyncResult;)I
    .locals 4
    .param p1, "syncResult"    # Landroid/content/SyncResult;

    .line 3781
    iget-boolean v0, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v0, :cond_0

    .line 3782
    const/4 v0, 0x1

    return v0

    .line 3783
    :cond_0
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 3784
    const/4 v0, 0x2

    return v0

    .line 3785
    :cond_1
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numIoExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 3786
    const/4 v0, 0x3

    return v0

    .line 3787
    :cond_2
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numParseExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 3788
    const/4 v0, 0x4

    return v0

    .line 3789
    :cond_3
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 3790
    const/4 v0, 0x5

    return v0

    .line 3791
    :cond_4
    iget-boolean v0, p1, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-eqz v0, :cond_5

    .line 3792
    const/4 v0, 0x6

    return v0

    .line 3793
    :cond_5
    iget-boolean v0, p1, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz v0, :cond_6

    .line 3794
    const/4 v0, 0x7

    return v0

    .line 3795
    :cond_6
    iget-boolean v0, p1, Landroid/content/SyncResult;->databaseError:Z

    if-eqz v0, :cond_7

    .line 3796
    const/16 v0, 0x8

    return v0

    .line 3797
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "we are not in an error state, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateOrAddPeriodicSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    .locals 30
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "pollFrequency"    # J
    .param p4, "flex"    # J
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 3310
    move-object/from16 v8, p0

    move-object/from16 v7, p1

    move-wide/from16 v14, p2

    move-wide/from16 v12, p4

    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    .line 3311
    .local v24, "isLoggable":Z
    iget-object v2, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$3800(Lcom/android/server/content/SyncManager;)V

    .line 3312
    const-wide/16 v2, 0x3e8

    mul-long v25, v14, v2

    .line 3313
    .local v25, "pollFrequencyMillis":J
    mul-long v27, v12, v2

    .line 3314
    .local v27, "flexMillis":J
    const-string v2, " extras: "

    const-string v3, " flexMillis: "

    const-string v4, " period: "

    if-eqz v24, :cond_0

    .line 3315
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Addition to periodic syncs requested: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3318
    invoke-virtual/range {p6 .. p6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3315
    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3320
    :cond_0
    iget-object v5, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v5}, Lcom/android/server/content/SyncManager;->access$1200(Lcom/android/server/content/SyncManager;)Ljava/util/List;

    move-result-object v29

    .line 3321
    .local v29, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v11, 0x1

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/content/SyncOperation;

    .line 3322
    .local v6, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v9, v6, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v9, :cond_1

    iget-object v9, v6, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v9, v7}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3323
    move-object/from16 v10, p6

    invoke-virtual {v6, v10, v11}, Lcom/android/server/content/SyncOperation;->areExtrasEqual(Landroid/os/Bundle;Z)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3324
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide/from16 v2, v25

    move-wide/from16 v4, v27

    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/SyncManager$SyncHandler;->maybeUpdateSyncPeriodH(Lcom/android/server/content/SyncOperation;JJ)V

    .line 3325
    return-void

    .line 3322
    :cond_1
    move-object/from16 v10, p6

    .line 3327
    .end local v6    # "op":Lcom/android/server/content/SyncOperation;
    :cond_2
    goto :goto_0

    .line 3329
    :cond_3
    move-object/from16 v10, p6

    if-eqz v24, :cond_4

    .line 3330
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding new periodic sync: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3333
    invoke-virtual/range {p6 .. p6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3330
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3337
    :cond_4
    iget-object v0, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget-object v2, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v3, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 3338
    invoke-static {v2, v3}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v2

    iget v3, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 3337
    invoke-virtual {v0, v2, v3}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v5

    .line 3341
    .local v5, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-nez v5, :cond_5

    .line 3342
    return-void

    .line 3345
    :cond_5
    new-instance v0, Lcom/android/server/content/SyncOperation;

    iget v2, v5, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    iget-object v3, v5, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 3346
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x4

    const/4 v6, 0x4

    iget-object v9, v5, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v9, Landroid/content/SyncAdapterType;

    .line 3348
    invoke-virtual {v9}, Landroid/content/SyncAdapterType;->allowParallelSyncs()Z

    move-result v16

    const/16 v17, 0x1

    const/16 v18, -0x1

    const/16 v23, 0x0

    move-object v9, v0

    move-object/from16 v10, p1

    move v11, v2

    move-object v12, v3

    move v13, v4

    move v14, v6

    move-object/from16 v15, p6

    move-wide/from16 v19, v25

    move-wide/from16 v21, v27

    invoke-direct/range {v9 .. v23}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V

    .line 3351
    .local v9, "op":Lcom/android/server/content/SyncOperation;
    invoke-direct {v8, v9}, Lcom/android/server/content/SyncManager$SyncHandler;->computeSyncOpState(Lcom/android/server/content/SyncOperation;)I

    move-result v10

    .line 3352
    .local v10, "syncOpState":I
    const/4 v0, 0x0

    if-ne v10, v1, :cond_7

    .line 3353
    iget-object v11, v9, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 3354
    .local v11, "packageName":Ljava/lang/String;
    iget v1, v9, Lcom/android/server/content/SyncOperation;->owningUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 3356
    .local v12, "userId":I
    iget-object v1, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1, v11, v12}, Lcom/android/server/content/SyncManager;->access$3900(Lcom/android/server/content/SyncManager;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 3357
    return-void

    .line 3359
    :cond_6
    iget-object v1, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "requestAccountAccess for SYNC_OP_STATE_INVALID_NO_ACCOUNT_ACCESS"

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3360
    iget-object v0, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$4000(Lcom/android/server/content/SyncManager;)Landroid/accounts/AccountManagerInternal;

    move-result-object v13

    iget-object v0, v9, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v14, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    new-instance v15, Landroid/os/RemoteCallback;

    new-instance v6, Lcom/android/server/content/-$$Lambda$SyncManager$SyncHandler$7-vThHsPImW4qB6AnVEnnD3dGhM;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v16, v5

    move-object/from16 v17, v9

    move-object v9, v6

    .end local v5    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v9    # "op":Lcom/android/server/content/SyncOperation;
    .local v16, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .local v17, "op":Lcom/android/server/content/SyncOperation;
    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/content/-$$Lambda$SyncManager$SyncHandler$7-vThHsPImW4qB6AnVEnnD3dGhM;-><init>(Lcom/android/server/content/SyncManager$SyncHandler;Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    invoke-direct {v15, v9}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-virtual {v13, v14, v11, v12, v15}, Landroid/accounts/AccountManagerInternal;->requestAccountAccess(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 3368
    return-void

    .line 3370
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "userId":I
    .end local v16    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v17    # "op":Lcom/android/server/content/SyncOperation;
    .restart local v5    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v9    # "op":Lcom/android/server/content/SyncOperation;
    :cond_7
    move-object/from16 v16, v5

    move-object/from16 v17, v9

    const/4 v2, 0x1

    .end local v5    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v9    # "op":Lcom/android/server/content/SyncOperation;
    .restart local v16    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v17    # "op":Lcom/android/server/content/SyncOperation;
    if-eqz v10, :cond_8

    .line 3371
    iget-object v3, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "syncOpState="

    aput-object v4, v1, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {v3, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3372
    return-void

    .line 3375
    :cond_8
    iget-object v0, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v1, v17

    .end local v17    # "op":Lcom/android/server/content/SyncOperation;
    .local v1, "op":Lcom/android/server/content/SyncOperation;
    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->access$3700(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    .line 3376
    iget-object v0, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v0

    move-object/from16 v3, p1

    iget v4, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v0, v2, v4}, Lcom/android/server/content/SyncStorageEngine;->reportChange(II)V

    .line 3378
    return-void
.end method

.method private updateRunningAccountsH(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 24
    .param p1, "syncTargets"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 3230
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$3400(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v2

    .line 3231
    .local v2, "oldAccounts":[Landroid/accounts/AccountAndUser;
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService;->getRunningAccounts()[Landroid/accounts/AccountAndUser;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/content/SyncManager;->access$3402(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;)[Landroid/accounts/AccountAndUser;

    .line 3232
    const-string v3, "SyncManager"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 3233
    const-string v5, "Accounts list: "

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3234
    iget-object v5, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v5}, Lcom/android/server/content/SyncManager;->access$3400(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v5

    array-length v7, v5

    move v8, v6

    :goto_0
    if-ge v8, v7, :cond_0

    aget-object v9, v5, v8

    .line 3235
    .local v9, "acc":Landroid/accounts/AccountAndUser;
    invoke-virtual {v9}, Landroid/accounts/AccountAndUser;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3234
    .end local v9    # "acc":Landroid/accounts/AccountAndUser;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3238
    :cond_0
    iget-object v5, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v5}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/content/SyncLogger;->enabled()Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    .line 3239
    iget-object v5, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v5}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v5

    new-array v8, v4, [Ljava/lang/Object;

    const-string/jumbo v9, "updateRunningAccountsH: "

    aput-object v9, v8, v6

    iget-object v9, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v9}, Lcom/android/server/content/SyncManager;->access$3400(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-virtual {v5, v8}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3241
    :cond_1
    iget-object v5, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v5}, Lcom/android/server/content/SyncManager;->access$3500(Lcom/android/server/content/SyncManager;)V

    .line 3243
    iget-object v5, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v5}, Lcom/android/server/content/SyncManager;->access$3400(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v5

    .line 3244
    .local v5, "accounts":[Landroid/accounts/AccountAndUser;
    iget-object v8, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v8, v8, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3245
    .local v9, "currentSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v10, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v11, v9, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v11, v11, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v12, v9, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v12, v12, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v12, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v10, v5, v11, v12}, Lcom/android/server/content/SyncManager;->access$3600(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 3248
    const-string v10, "canceling sync since the account is no longer running"

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    iget-object v10, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    const/4 v11, 0x0

    invoke-static {v10, v9, v11}, Lcom/android/server/content/SyncManager;->access$1900(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    .line 3252
    .end local v9    # "currentSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_2
    goto :goto_1

    .line 3254
    :cond_3
    if-eqz v1, :cond_6

    .line 3256
    iget-object v8, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v8}, Lcom/android/server/content/SyncManager;->access$3400(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v8

    array-length v9, v8

    move v10, v6

    :goto_2
    if-ge v10, v9, :cond_6

    aget-object v11, v8, v10

    .line 3257
    .local v11, "aau":Landroid/accounts/AccountAndUser;
    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v13, v11, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v14, v11, Landroid/accounts/AccountAndUser;->userId:I

    invoke-static {v12, v2, v13, v14}, Lcom/android/server/content/SyncManager;->access$3600(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v12

    if-nez v12, :cond_5

    .line 3258
    const/4 v8, 0x3

    invoke-static {v3, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3259
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Account "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v11, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " added, checking sync restore data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3262
    :cond_4
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$2000(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v3

    iget v8, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v3, v8}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->accountAdded(Landroid/content/Context;I)V

    .line 3263
    goto :goto_3

    .line 3256
    .end local v11    # "aau":Landroid/accounts/AccountAndUser;
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 3269
    :cond_6
    :goto_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountManagerService;->getAllAccounts()[Landroid/accounts/AccountAndUser;

    move-result-object v3

    .line 3270
    .local v3, "allAccounts":[Landroid/accounts/AccountAndUser;
    iget-object v8, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v8}, Lcom/android/server/content/SyncManager;->access$1200(Lcom/android/server/content/SyncManager;)Ljava/util/List;

    move-result-object v8

    .line 3271
    .local v8, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/content/SyncOperation;

    .line 3272
    .local v10, "op":Lcom/android/server/content/SyncOperation;
    iget-object v11, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v12, v10, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v12, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v13, v10, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v13, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v11, v3, v12, v13}, Lcom/android/server/content/SyncManager;->access$3600(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v11

    if-nez v11, :cond_7

    .line 3273
    iget-object v11, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v11}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v11

    new-array v12, v4, [Ljava/lang/Object;

    const-string v13, "canceling: "

    aput-object v13, v12, v6

    aput-object v10, v12, v7

    invoke-virtual {v11, v12}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3274
    iget-object v11, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    const-string/jumbo v12, "updateRunningAccountsH()"

    invoke-static {v11, v10, v12}, Lcom/android/server/content/SyncManager;->access$1300(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 3276
    .end local v10    # "op":Lcom/android/server/content/SyncOperation;
    :cond_7
    goto :goto_4

    .line 3278
    :cond_8
    if-eqz v1, :cond_9

    .line 3279
    iget-object v13, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v14, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v15, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    const/16 v16, -0x2

    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, 0x0

    .line 3282
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v21

    const/16 v22, -0x4

    const/16 v23, 0x0

    .line 3279
    move-object/from16 v17, v4

    invoke-virtual/range {v13 .. v23}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V

    .line 3284
    :cond_9
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 2915
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$2600(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2917
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->handleSyncMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2919
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$2600(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2920
    nop

    .line 2921
    return-void

    .line 2919
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$2600(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2920
    throw v0
.end method

.method public insertStartSyncEvent(Lcom/android/server/content/SyncOperation;)J
    .locals 4
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;

    .line 3873
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3874
    .local v0, "now":J
    nop

    .line 3875
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/server/content/SyncOperation;->toEventLog(I)[Ljava/lang/Object;

    move-result-object v2

    .line 3874
    const/16 v3, 0xaa0

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3876
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/server/content/SyncStorageEngine;->insertStartSyncEvent(Lcom/android/server/content/SyncOperation;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public synthetic lambda$updateOrAddPeriodicSyncH$0$SyncManager$SyncHandler(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "pollFrequency"    # J
    .param p4, "flex"    # J
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "result"    # Landroid/os/Bundle;

    .line 3362
    if-eqz p7, :cond_0

    .line 3363
    const-string v0, "booleanResult"

    invoke-virtual {p7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3364
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    .line 3366
    :cond_0
    return-void
.end method

.method public stopSyncEvent(JLcom/android/server/content/SyncOperation;Ljava/lang/String;IIJ)V
    .locals 15
    .param p1, "rowId"    # J
    .param p3, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p4, "resultMessage"    # Ljava/lang/String;
    .param p5, "upstreamActivity"    # I
    .param p6, "downstreamActivity"    # I
    .param p7, "elapsedTime"    # J

    .line 3881
    move-object/from16 v0, p3

    .line 3882
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncOperation;->toEventLog(I)[Ljava/lang/Object;

    move-result-object v1

    .line 3881
    const/16 v2, 0xaa0

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3883
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    move/from16 v2, p6

    int-to-long v9, v2

    move/from16 v14, p5

    int-to-long v11, v14

    iget-object v4, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v13, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    move-wide/from16 v4, p1

    move-wide/from16 v6, p7

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v13}, Lcom/android/server/content/SyncStorageEngine;->stopSyncEvent(JJLjava/lang/String;JJI)V

    .line 3886
    return-void
.end method
