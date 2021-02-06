.class public Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;
.super Ljava/lang/Object;
.source "RecoverySnapshotListenersStorage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecoverySnapshotLstnrs"


# instance fields
.field private mAgentIntents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mAgentsWithPendingSnapshots:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->mAgentIntents:Landroid/util/SparseArray;

    .line 40
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->mAgentsWithPendingSnapshots:Landroid/util/ArraySet;

    return-void
.end method

.method private declared-synchronized tryToSendIntent(ILandroid/app/PendingIntent;)V
    .locals 4
    .param p1, "recoveryAgentUid"    # I
    .param p2, "intent"    # Landroid/app/PendingIntent;

    monitor-enter p0

    .line 92
    :try_start_0
    invoke-virtual {p2}, Landroid/app/PendingIntent;->send()V

    .line 93
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->mAgentsWithPendingSnapshots:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 94
    const-string v0, "RecoverySnapshotLstnrs"

    const-string v1, "Successfully notified listener."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    goto :goto_0

    .line 91
    .end local p0    # "this":Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;
    .end local p1    # "recoveryAgentUid":I
    .end local p2    # "intent":Landroid/app/PendingIntent;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 95
    .restart local p1    # "recoveryAgentUid":I
    .restart local p2    # "intent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    :try_start_1
    const-string v1, "RecoverySnapshotLstnrs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to trigger PendingIntent for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->mAgentsWithPendingSnapshots:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_0
    monitor-exit p0

    return-void

    .line 91
    .end local p1    # "recoveryAgentUid":I
    .end local p2    # "intent":Landroid/app/PendingIntent;
    :goto_1
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized hasListener(I)Z
    .locals 1
    .param p1, "recoveryAgentUid"    # I

    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->mAgentIntents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 64
    .end local p0    # "this":Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;
    .end local p1    # "recoveryAgentUid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recoverySnapshotAvailable(I)V
    .locals 4
    .param p1, "recoveryAgentUid"    # I

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->mAgentIntents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 76
    .local v0, "intent":Landroid/app/PendingIntent;
    if-nez v0, :cond_0

    .line 77
    const-string v1, "RecoverySnapshotLstnrs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Snapshot available for agent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but agent has not yet initialized. Will notify agent when it does."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->mAgentsWithPendingSnapshots:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 83
    .end local p0    # "this":Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->tryToSendIntent(ILandroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 74
    .end local v0    # "intent":Landroid/app/PendingIntent;
    .end local p1    # "recoveryAgentUid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSnapshotListener(ILandroid/app/PendingIntent;)V
    .locals 3
    .param p1, "recoveryAgentUid"    # I
    .param p2, "intent"    # Landroid/app/PendingIntent;

    monitor-enter p0

    .line 51
    :try_start_0
    const-string v0, "RecoverySnapshotLstnrs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered listener for agent with uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->mAgentIntents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->mAgentsWithPendingSnapshots:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "RecoverySnapshotLstnrs"

    const-string v1, "Snapshot already created for agent. Immediately triggering intent."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->tryToSendIntent(ILandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .end local p0    # "this":Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;
    :cond_0
    monitor-exit p0

    return-void

    .line 50
    .end local p1    # "recoveryAgentUid":I
    .end local p2    # "intent":Landroid/app/PendingIntent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
