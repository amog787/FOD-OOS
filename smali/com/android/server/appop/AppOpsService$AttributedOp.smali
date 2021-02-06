.class final Lcom/android/server/appop/AppOpsService$AttributedOp;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AttributedOp"
.end annotation


# instance fields
.field private mAccessEvents:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mInProgressEvents:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mRejectEvents:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final parent:Lcom/android/server/appop/AppOpsService$Op;

.field public final tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Op;)V
    .locals 0
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "parent"    # Lcom/android/server/appop/AppOpsService$Op;

    .line 808
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 809
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    .line 810
    iput-object p3, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    .line 811
    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/appop/AppOpsService$AttributedOp;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService$AttributedOp;

    .line 780
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private add(Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;)",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;"
        }
    .end annotation

    .line 1069
    .local p1, "a":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/app/AppOpsManager$NoteOpEvent;>;"
    .local p2, "b":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/app/AppOpsManager$NoteOpEvent;>;"
    if-nez p1, :cond_0

    .line 1070
    return-object p2

    .line 1073
    :cond_0
    if-nez p2, :cond_1

    .line 1074
    return-object p1

    .line 1077
    :cond_1
    invoke-virtual {p2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1078
    .local v0, "numEventsToAdd":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 1079
    invoke-virtual {p2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 1080
    .local v2, "keyOfEventToAdd":J
    invoke-virtual {p2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 1081
    .local v4, "bEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    invoke-virtual {p1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 1083
    .local v5, "aEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v6

    invoke-virtual {v5}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 1084
    :cond_2
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1078
    .end local v2    # "keyOfEventToAdd":J
    .end local v4    # "bEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    .end local v5    # "aEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1088
    .end local v1    # "i":I
    :cond_4
    return-object p1
.end method

.method private deepClone(Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;)",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;"
        }
    .end annotation

    .line 1130
    .local p1, "original":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/app/AppOpsManager$NoteOpEvent;>;"
    if-nez p1, :cond_0

    .line 1131
    return-object p1

    .line 1134
    :cond_0
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1135
    .local v0, "size":I
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1, v0}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 1136
    .local v1, "clone":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/app/AppOpsManager$NoteOpEvent;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1137
    invoke-virtual {p1, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    new-instance v5, Landroid/app/AppOpsManager$NoteOpEvent;

    invoke-virtual {p1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$NoteOpEvent;

    invoke-direct {v5, v6}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(Landroid/app/AppOpsManager$NoteOpEvent;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1136
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1140
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method private finished(Landroid/os/IBinder;Z)V
    .locals 16
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "triggerCallbackIfNeeded"    # Z

    .line 959
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-nez v2, :cond_0

    .line 960
    const-string v0, "AppOps"

    const-string v2, "No ops running"

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    return-void

    .line 965
    :cond_0
    monitor-enter v2

    .line 966
    :try_start_0
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v3, p1

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 967
    .local v0, "indexOfToken":I
    if-gez v0, :cond_1

    .line 968
    const-string v4, "AppOps"

    const-string v5, "No op running for the client"

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    monitor-exit v2

    return-void

    .line 972
    :cond_1
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    .line 973
    .local v4, "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    iget v5, v4, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    .line 974
    iget v5, v4, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    if-nez v5, :cond_3

    .line 975
    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->finish()V

    .line 976
    iget-object v5, v1, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 978
    iget-object v5, v1, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    if-nez v5, :cond_2

    .line 979
    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5, v6}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v5, v1, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    .line 983
    :cond_2
    new-instance v5, Landroid/app/AppOpsManager$NoteOpEvent;

    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getStartTime()J

    move-result-wide v8

    .line 984
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getStartElapsedTime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    const/4 v12, 0x0

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 985
    .local v5, "finishedEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getUidState()I

    move-result v8

    invoke-static {v8, v6}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 987
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v7, v6, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v8, v6, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v9, v6, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v10, v6, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v11, v1, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    .line 988
    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getUidState()I

    move-result v12

    const/4 v13, 0x1

    .line 989
    invoke-virtual {v5}, Landroid/app/AppOpsManager$NoteOpEvent;->getDuration()J

    move-result-wide v14

    .line 987
    invoke-virtual/range {v7 .. v15}, Lcom/android/server/appop/HistoricalRegistry;->increaseOpAccessDuration(IILjava/lang/String;Ljava/lang/String;IIJ)V

    .line 991
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v6}, Lcom/android/server/appop/AppOpsService;->access$600(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;->release(Ljava/lang/Object;)Z

    .line 993
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 994
    const/4 v6, 0x0

    iput-object v6, v1, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 997
    if-eqz p2, :cond_3

    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    invoke-virtual {v6}, Lcom/android/server/appop/AppOpsService$Op;->isRunning()Z

    move-result v6

    if-nez v6, :cond_3

    .line 998
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v7, v1, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v7, v7, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v8, v1, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v8, v8, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v9, v1, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v9, v9, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/server/appop/AppOpsService;->access$500(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Z)V

    .line 1003
    .end local v0    # "indexOfToken":I
    .end local v4    # "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    .end local v5    # "finishedEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    :cond_3
    monitor-exit v2

    .line 1005
    return-void

    .line 1003
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v3, p1

    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic lambda$started$0(Lcom/android/server/appop/AppOpsService$AttributedOp;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x$0"    # Lcom/android/server/appop/AppOpsService$AttributedOp;
    .param p1, "x$1"    # Landroid/os/IBinder;

    .line 931
    invoke-static {p0, p1}, Lcom/android/server/appop/AppOpsService;->access$800(Lcom/android/server/appop/AppOpsService$AttributedOp;Landroid/os/IBinder;)V

    return-void
.end method

.method private started(Landroid/os/IBinder;IZ)V
    .locals 12
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "uidState"    # I
    .param p3, "triggerCallbackIfNeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 916
    const/4 v0, 0x1

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$Op;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 917
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v2, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v3, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v4, v4, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/server/appop/AppOpsService;->access$500(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Z)V

    .line 921
    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-nez v1, :cond_1

    .line 922
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 926
    :cond_1
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 927
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    .line 928
    .local v2, "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    if-nez v2, :cond_2

    .line 929
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v3}, Lcom/android/server/appop/AppOpsService;->access$600(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 930
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sget-object v3, Lcom/android/server/appop/-$$Lambda$AppOpsService$AttributedOp$V-rw7b6Fbkw73kXYw1qrXKPwDIQ;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$AttributedOp$V-rw7b6Fbkw73kXYw1qrXKPwDIQ;

    .line 931
    invoke-static {v3, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v10

    .line 929
    move-object v9, p1

    move v11, p2

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;->acquire(JJLandroid/os/IBinder;Ljava/lang/Runnable;I)Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    move-result-object v3

    move-object v2, v3

    .line 933
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 935
    :cond_2
    invoke-static {v2}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->access$700(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;)I

    move-result v3

    if-eq p2, v3, :cond_3

    .line 936
    invoke-virtual {p0, p2}, Lcom/android/server/appop/AppOpsService$AttributedOp;->onUidStateChanged(I)V

    .line 940
    :cond_3
    :goto_0
    iget v3, v2, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    add-int/2addr v3, v0

    iput v3, v2, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    .line 943
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v3, v0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v4, v0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v5, v0, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v6, v0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    const/4 v9, 0x1

    move v8, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;II)V

    .line 945
    .end local v2    # "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    monitor-exit v1

    .line 947
    return-void

    .line 945
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public accessed(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 10
    .param p1, "proxyUid"    # I
    .param p2, "proxyPackageName"    # Ljava/lang/String;
    .param p3, "proxyAttributionTag"    # Ljava/lang/String;
    .param p4, "uidState"    # I
    .param p5, "flags"    # I

    .line 825
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    move-object v0, p0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    move v9, p5

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/appop/AppOpsService$AttributedOp;->accessed(JJILjava/lang/String;Ljava/lang/String;II)V

    .line 828
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v2, v0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v0, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;II)V

    .line 830
    return-void
.end method

.method public accessed(JJILjava/lang/String;Ljava/lang/String;II)V
    .locals 16
    .param p1, "noteTime"    # J
    .param p3, "duration"    # J
    .param p5, "proxyUid"    # I
    .param p6, "proxyPackageName"    # Ljava/lang/String;
    .param p7, "proxyAttributionTag"    # Ljava/lang/String;
    .param p8, "uidState"    # I
    .param p9, "flags"    # I

    .line 846
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-static/range {p8 .. p9}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v2

    .line 848
    .local v2, "key":J
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    if-nez v4, :cond_0

    .line 849
    new-instance v4, Landroid/util/LongSparseArray;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v4, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    .line 852
    :cond_0
    const/4 v4, 0x0

    .line 853
    .local v4, "proxyInfo":Landroid/app/AppOpsManager$OpEventProxyInfo;
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 854
    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v5}, Lcom/android/server/appop/AppOpsService;->access$400(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;

    move-result-object v5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual {v5, v1, v6, v7}, Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;->acquire(ILjava/lang/String;Ljava/lang/String;)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v4

    goto :goto_0

    .line 853
    :cond_1
    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 858
    :goto_0
    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 859
    .local v5, "existingEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    if-eqz v5, :cond_2

    .line 860
    iget-object v8, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v8}, Lcom/android/server/appop/AppOpsService;->access$400(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;

    move-result-object v14

    move-object v8, v5

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move-object v13, v4

    invoke-virtual/range {v8 .. v14}, Landroid/app/AppOpsManager$NoteOpEvent;->reinit(JJLandroid/app/AppOpsManager$OpEventProxyInfo;Landroid/util/Pools$Pool;)V

    goto :goto_1

    .line 862
    :cond_2
    iget-object v14, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    new-instance v15, Landroid/app/AppOpsManager$NoteOpEvent;

    move-object v8, v15

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move-object v13, v4

    invoke-direct/range {v8 .. v13}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    invoke-virtual {v14, v2, v3, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 864
    :goto_1
    return-void
.end method

.method public add(Lcom/android/server/appop/AppOpsService$AttributedOp;)V
    .locals 4
    .param p1, "opToAdd"    # Lcom/android/server/appop/AppOpsService$AttributedOp;

    .line 1100
    iget-object v0, p1, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    .line 1101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " running app-ops"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppOps"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    iget-object v0, p1, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1104
    .local v0, "numInProgressEvents":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1105
    iget-object v2, p1, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    .line 1107
    .local v2, "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->finish()V

    .line 1108
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v3}, Lcom/android/server/appop/AppOpsService;->access$600(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;->release(Ljava/lang/Object;)Z

    .line 1104
    .end local v2    # "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1112
    .end local v0    # "numInProgressEvents":I
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    iget-object v1, p1, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-direct {p0, v0, v1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->add(Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    .line 1113
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    iget-object v1, p1, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-direct {p0, v0, v1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->add(Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    .line 1114
    return-void
.end method

.method createAttributedOpEntryLocked()Landroid/app/AppOpsManager$AttributedOpEntry;
    .locals 15

    .line 1144
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->deepClone(Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v0

    .line 1147
    .local v0, "accessEvents":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/app/AppOpsManager$NoteOpEvent;>;"
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-eqz v1, :cond_1

    .line 1148
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1149
    .local v1, "now":J
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1151
    .local v3, "numInProgressEvents":I
    if-nez v0, :cond_0

    .line 1152
    new-instance v4, Landroid/util/LongSparseArray;

    invoke-direct {v4, v3}, Landroid/util/LongSparseArray;-><init>(I)V

    move-object v0, v4

    .line 1155
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 1156
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    .line 1159
    .local v5, "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    invoke-virtual {v5}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getUidState()I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v6

    new-instance v14, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 1160
    invoke-virtual {v5}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getStartTime()J

    move-result-wide v9

    invoke-virtual {v5}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getStartElapsedTime()J

    move-result-wide v11

    sub-long v11, v1, v11

    const/4 v13, 0x0

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 1159
    invoke-virtual {v0, v6, v7, v14}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 1155
    .end local v5    # "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1165
    .end local v1    # "now":J
    .end local v3    # "numInProgressEvents":I
    .end local v4    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-direct {p0, v1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->deepClone(Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v1

    .line 1167
    .local v1, "rejectEvents":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/app/AppOpsManager$NoteOpEvent;>;"
    new-instance v2, Landroid/app/AppOpsManager$AttributedOpEntry;

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v4

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/app/AppOpsManager$AttributedOpEntry;-><init>(IZLandroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V

    return-object v2
.end method

.method public finished(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "clientId"    # Landroid/os/IBinder;

    .line 955
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->finished(Landroid/os/IBinder;Z)V

    .line 956
    return-void
.end method

.method hasAnyTime()Z
    .locals 1

    .line 1121
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    .line 1122
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1121
    :goto_0
    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1117
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method onClientDeath(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "clientId"    # Landroid/os/IBinder;

    .line 1013
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    .line 1014
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    .line 1015
    monitor-exit v0

    return-void

    .line 1018
    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    .line 1019
    .local v1, "deadEvent":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    if-eqz v1, :cond_1

    .line 1020
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    .line 1023
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->finished(Landroid/os/IBinder;)V

    .line 1024
    .end local v1    # "deadEvent":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    monitor-exit v0

    .line 1025
    return-void

    .line 1024
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUidStateChanged(I)V
    .locals 5
    .param p1, "newState"    # I

    .line 1033
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 1034
    return-void

    .line 1041
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1043
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    .line 1044
    .local v1, "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getUidState()I

    move-result v2

    if-eq v2, p1, :cond_1

    .line 1048
    :try_start_0
    iget v2, v1, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    .line 1049
    .local v2, "numPreviousUnfinishedStarts":I
    const/4 v3, 0x1

    iput v3, v1, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    .line 1050
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/appop/AppOpsService$AttributedOp;->finished(Landroid/os/IBinder;Z)V

    .line 1054
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {p0, v3, p1, v4}, Lcom/android/server/appop/AppOpsService$AttributedOp;->started(Landroid/os/IBinder;IZ)V

    .line 1055
    iget v3, v1, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    add-int/lit8 v4, v2, -0x1

    add-int/2addr v3, v4

    iput v3, v1, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1058
    .end local v2    # "numPreviousUnfinishedStarts":I
    goto :goto_1

    .line 1056
    :catch_0
    move-exception v2

    .line 1041
    .end local v1    # "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1061
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public rejected(II)V
    .locals 8
    .param p1, "uidState"    # I
    .param p2, "flags"    # I

    .line 873
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/appop/AppOpsService$AttributedOp;->rejected(JII)V

    .line 875
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v2, v0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v0, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    move v6, p1

    move v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpRejected(IILjava/lang/String;Ljava/lang/String;II)V

    .line 877
    return-void
.end method

.method public rejected(JII)V
    .locals 11
    .param p1, "noteTime"    # J
    .param p3, "uidState"    # I
    .param p4, "flags"    # I

    .line 888
    invoke-static {p3, p4}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v0

    .line 890
    .local v0, "key":J
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    if-nez v2, :cond_0

    .line 891
    new-instance v2, Landroid/util/LongSparseArray;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    .line 895
    :cond_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 896
    .local v2, "existingEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    if-eqz v2, :cond_1

    .line 897
    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v3}, Lcom/android/server/appop/AppOpsService;->access$400(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;

    move-result-object v9

    move-object v3, v2

    move-wide v4, p1

    invoke-virtual/range {v3 .. v9}, Landroid/app/AppOpsManager$NoteOpEvent;->reinit(JJLandroid/app/AppOpsManager$OpEventProxyInfo;Landroid/util/Pools$Pool;)V

    goto :goto_0

    .line 899
    :cond_1
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    new-instance v10, Landroid/app/AppOpsManager$NoteOpEvent;

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    move-object v4, v10

    move-wide v5, p1

    invoke-direct/range {v4 .. v9}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    invoke-virtual {v3, v0, v1, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 901
    :goto_0
    return-void
.end method

.method public started(Landroid/os/IBinder;I)V
    .locals 1
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "uidState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 911
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->started(Landroid/os/IBinder;IZ)V

    .line 912
    return-void
.end method
