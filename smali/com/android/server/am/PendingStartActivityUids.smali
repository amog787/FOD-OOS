.class final Lcom/android/server/am/PendingStartActivityUids;
.super Ljava/lang/Object;
.source "PendingStartActivityUids.java"


# static fields
.field static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mPendingUids:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingStartActivityUids;->mPendingUids:Landroid/util/SparseArray;

    .line 44
    iput-object p1, p0, Lcom/android/server/am/PendingStartActivityUids;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method


# virtual methods
.method declared-synchronized add(II)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/PendingStartActivityUids;->mPendingUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/server/am/PendingStartActivityUids;->mPendingUids:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .end local p0    # "this":Lcom/android/server/am/PendingStartActivityUids;
    :cond_0
    monitor-exit p0

    return-void

    .line 47
    .end local p1    # "uid":I
    .end local p2    # "pid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized delete(I)V
    .locals 6
    .param p1, "uid"    # I

    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/PendingStartActivityUids;->mPendingUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 55
    .local v0, "pendingPid":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-eqz v0, :cond_1

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 57
    .local v1, "delay":J
    const-wide/16 v3, 0x3e8

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    .line 58
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PendingStartActivityUids startActivity to updateOomAdj delay:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms, uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .end local p0    # "this":Lcom/android/server/am/PendingStartActivityUids;
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/PendingStartActivityUids;->mPendingUids:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .end local v1    # "delay":J
    :cond_1
    monitor-exit p0

    return-void

    .line 53
    .end local v0    # "pendingPid":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local p1    # "uid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized isPendingTopPid(II)Z
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/PendingStartActivityUids;->mPendingUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 68
    .local v0, "pendingPid":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 69
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit p0

    return v1

    .line 71
    .end local p0    # "this":Lcom/android/server/am/PendingStartActivityUids;
    :cond_1
    monitor-exit p0

    return v1

    .line 66
    .end local v0    # "pendingPid":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local p1    # "uid":I
    .end local p2    # "pid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized isPendingTopUid(I)Z
    .locals 1
    .param p1, "uid"    # I

    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/PendingStartActivityUids;->mPendingUids:Landroid/util/SparseArray;

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

    .line 76
    .end local p0    # "this":Lcom/android/server/am/PendingStartActivityUids;
    .end local p1    # "uid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
