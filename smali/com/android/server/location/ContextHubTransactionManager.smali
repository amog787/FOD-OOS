.class Lcom/android/server/location/ContextHubTransactionManager;
.super Ljava/lang/Object;
.source "ContextHubTransactionManager.java"


# static fields
.field private static final MAX_PENDING_REQUESTS:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "ContextHubTransactionManager"


# instance fields
.field private final mClientManager:Lcom/android/server/location/ContextHubClientManager;

.field private final mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

.field private final mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

.field private final mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mTimeoutExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final mTransactionQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/location/ContextHubServiceTransaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/hardware/contexthub/V1_0/IContexthub;Lcom/android/server/location/ContextHubClientManager;Lcom/android/server/location/NanoAppStateManager;)V
    .locals 2
    .param p1, "contextHubProxy"    # Landroid/hardware/contexthub/V1_0/IContexthub;
    .param p2, "clientManager"    # Lcom/android/server/location/ContextHubClientManager;
    .param p3, "nanoAppStateManager"    # Lcom/android/server/location/NanoAppStateManager;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 83
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/ContextHubTransactionManager;->mTimeoutExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/ContextHubTransactionManager;->mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 89
    iput-object p1, p0, Lcom/android/server/location/ContextHubTransactionManager;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    .line 90
    iput-object p2, p0, Lcom/android/server/location/ContextHubTransactionManager;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    .line 91
    iput-object p3, p0, Lcom/android/server/location/ContextHubTransactionManager;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/ContextHubTransactionManager;)Landroid/hardware/contexthub/V1_0/IContexthub;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/ContextHubTransactionManager;

    .line 47
    iget-object v0, p0, Lcom/android/server/location/ContextHubTransactionManager;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/location/ContextHubTransactionManager;)Lcom/android/server/location/NanoAppStateManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/ContextHubTransactionManager;

    .line 47
    iget-object v0, p0, Lcom/android/server/location/ContextHubTransactionManager;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/location/ContextHubTransactionManager;)Lcom/android/server/location/ContextHubClientManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/ContextHubTransactionManager;

    .line 47
    iget-object v0, p0, Lcom/android/server/location/ContextHubTransactionManager;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    return-object v0
.end method

.method private removeTransactionAndStartNext()V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/android/server/location/ContextHubTransactionManager;->mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 389
    iget-object v0, p0, Lcom/android/server/location/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/ContextHubServiceTransaction;

    .line 390
    .local v0, "transaction":Lcom/android/server/location/ContextHubServiceTransaction;
    invoke-virtual {v0}, Lcom/android/server/location/ContextHubServiceTransaction;->setComplete()V

    .line 392
    iget-object v1, p0, Lcom/android/server/location/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 393
    invoke-direct {p0}, Lcom/android/server/location/ContextHubTransactionManager;->startNextTransaction()V

    .line 395
    :cond_0
    return-void
.end method

.method private startNextTransaction()V
    .locals 7

    .line 408
    const/4 v0, 0x1

    .line 409
    .local v0, "result":I
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/location/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 410
    iget-object v1, p0, Lcom/android/server/location/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/ContextHubServiceTransaction;

    .line 411
    .local v1, "transaction":Lcom/android/server/location/ContextHubServiceTransaction;
    invoke-virtual {v1}, Lcom/android/server/location/ContextHubServiceTransaction;->onTransact()I

    move-result v0

    .line 413
    if-nez v0, :cond_0

    .line 414
    new-instance v2, Lcom/android/server/location/-$$Lambda$ContextHubTransactionManager$sHbjr4TaLEATkCX_yhD2L7ebuxE;

    .local v2, "onTimeoutFunc":Ljava/lang/Runnable;
    invoke-direct {v2, p0, v1}, Lcom/android/server/location/-$$Lambda$ContextHubTransactionManager$sHbjr4TaLEATkCX_yhD2L7ebuxE;-><init>(Lcom/android/server/location/ContextHubTransactionManager;Lcom/android/server/location/ContextHubServiceTransaction;)V

    .line 426
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3}, Lcom/android/server/location/ContextHubServiceTransaction;->getTimeout(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    .line 427
    .local v3, "timeoutSeconds":J
    iget-object v5, p0, Lcom/android/server/location/ContextHubTransactionManager;->mTimeoutExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v2, v3, v4, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/location/ContextHubTransactionManager;->mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 429
    .end local v2    # "onTimeoutFunc":Ljava/lang/Runnable;
    .end local v3    # "timeoutSeconds":J
    goto :goto_1

    .line 430
    :cond_0
    nop

    .line 431
    invoke-static {v0}, Lcom/android/server/location/ContextHubServiceUtil;->toTransactionResult(I)I

    move-result v2

    .line 430
    invoke-virtual {v1, v2}, Lcom/android/server/location/ContextHubServiceTransaction;->onTransactionComplete(I)V

    .line 432
    iget-object v2, p0, Lcom/android/server/location/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 434
    .end local v1    # "transaction":Lcom/android/server/location/ContextHubServiceTransaction;
    :goto_1
    goto :goto_0

    .line 435
    :cond_1
    return-void
.end method


# virtual methods
.method declared-synchronized addTransaction(Lcom/android/server/location/ContextHubServiceTransaction;)V
    .locals 2
    .param p1, "transaction"    # Lcom/android/server/location/ContextHubServiceTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0x2710

    if-eq v0, v1, :cond_1

    .line 309
    iget-object v0, p0, Lcom/android/server/location/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v0, p0, Lcom/android/server/location/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 312
    invoke-direct {p0}, Lcom/android/server/location/ContextHubTransactionManager;->startNextTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    .end local p0    # "this":Lcom/android/server/location/ContextHubTransactionManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 306
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Transaction queue is full (capacity = 10000)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    .end local p1    # "transaction":Lcom/android/server/location/ContextHubServiceTransaction;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method createDisableTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;
    .locals 9
    .param p1, "contextHubId"    # I
    .param p2, "nanoAppId"    # J
    .param p4, "onCompleteCallback"    # Landroid/hardware/location/IContextHubTransactionCallback;

    .line 229
    new-instance v8, Lcom/android/server/location/ContextHubTransactionManager$4;

    iget-object v0, p0, Lcom/android/server/location/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 230
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    const/4 v3, 0x3

    move-object v0, v8

    move-object v1, p0

    move v4, p1

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/location/ContextHubTransactionManager$4;-><init>(Lcom/android/server/location/ContextHubTransactionManager;IIIJLandroid/hardware/location/IContextHubTransactionCallback;)V

    .line 229
    return-object v8
.end method

.method createEnableTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;
    .locals 9
    .param p1, "contextHubId"    # I
    .param p2, "nanoAppId"    # J
    .param p4, "onCompleteCallback"    # Landroid/hardware/location/IContextHubTransactionCallback;

    .line 194
    new-instance v8, Lcom/android/server/location/ContextHubTransactionManager$3;

    iget-object v0, p0, Lcom/android/server/location/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 195
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    const/4 v3, 0x2

    move-object v0, v8

    move-object v1, p0

    move v4, p1

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/location/ContextHubTransactionManager$3;-><init>(Lcom/android/server/location/ContextHubTransactionManager;IIIJLandroid/hardware/location/IContextHubTransactionCallback;)V

    .line 194
    return-object v8
.end method

.method createLoadTransaction(ILandroid/hardware/location/NanoAppBinary;Landroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;
    .locals 8
    .param p1, "contextHubId"    # I
    .param p2, "nanoAppBinary"    # Landroid/hardware/location/NanoAppBinary;
    .param p3, "onCompleteCallback"    # Landroid/hardware/location/IContextHubTransactionCallback;

    .line 105
    new-instance v7, Lcom/android/server/location/ContextHubTransactionManager$1;

    iget-object v0, p0, Lcom/android/server/location/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 106
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    const/4 v3, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v4, p2

    move v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/ContextHubTransactionManager$1;-><init>(Lcom/android/server/location/ContextHubTransactionManager;IILandroid/hardware/location/NanoAppBinary;ILandroid/hardware/location/IContextHubTransactionCallback;)V

    .line 105
    return-object v7
.end method

.method createQueryTransaction(ILandroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;
    .locals 7
    .param p1, "contextHubId"    # I
    .param p2, "onCompleteCallback"    # Landroid/hardware/location/IContextHubTransactionCallback;

    .line 263
    new-instance v6, Lcom/android/server/location/ContextHubTransactionManager$5;

    iget-object v0, p0, Lcom/android/server/location/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 264
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    const/4 v3, 0x4

    move-object v0, v6

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/ContextHubTransactionManager$5;-><init>(Lcom/android/server/location/ContextHubTransactionManager;IIILandroid/hardware/location/IContextHubTransactionCallback;)V

    .line 263
    return-object v6
.end method

.method createUnloadTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;
    .locals 9
    .param p1, "contextHubId"    # I
    .param p2, "nanoAppId"    # J
    .param p4, "onCompleteCallback"    # Landroid/hardware/location/IContextHubTransactionCallback;

    .line 153
    new-instance v8, Lcom/android/server/location/ContextHubTransactionManager$2;

    iget-object v0, p0, Lcom/android/server/location/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 154
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    const/4 v3, 0x1

    move-object v0, v8

    move-object v1, p0

    move v4, p1

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/location/ContextHubTransactionManager$2;-><init>(Lcom/android/server/location/ContextHubTransactionManager;IIIJLandroid/hardware/location/IContextHubTransactionCallback;)V

    .line 153
    return-object v8
.end method

.method public synthetic lambda$startNextTransaction$0$ContextHubTransactionManager(Lcom/android/server/location/ContextHubServiceTransaction;)V
    .locals 3
    .param p1, "transaction"    # Lcom/android/server/location/ContextHubServiceTransaction;

    .line 415
    monitor-enter p0

    .line 416
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/location/ContextHubServiceTransaction;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    const-string v0, "ContextHubTransactionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " timed out"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/server/location/ContextHubServiceTransaction;->onTransactionComplete(I)V

    .line 421
    invoke-direct {p0}, Lcom/android/server/location/ContextHubTransactionManager;->removeTransactionAndStartNext()V

    .line 423
    :cond_0
    monitor-exit p0

    .line 424
    return-void

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized onHubReset()V
    .locals 1

    monitor-enter p0

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/ContextHubServiceTransaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    .local v0, "transaction":Lcom/android/server/location/ContextHubServiceTransaction;
    if-nez v0, :cond_0

    .line 370
    monitor-exit p0

    return-void

    .line 373
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/location/ContextHubTransactionManager;->removeTransactionAndStartNext()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    monitor-exit p0

    return-void

    .line 367
    .end local v0    # "transaction":Lcom/android/server/location/ContextHubServiceTransaction;
    .end local p0    # "this":Lcom/android/server/location/ContextHubTransactionManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onQueryResponse(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;)V"
        }
    .end annotation

    .local p1, "nanoAppStateList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/NanoAppState;>;"
    monitor-enter p0

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/ContextHubServiceTransaction;

    .line 350
    .local v0, "transaction":Lcom/android/server/location/ContextHubServiceTransaction;
    if-nez v0, :cond_0

    .line 351
    const-string v1, "ContextHubTransactionManager"

    const-string v2, "Received unexpected query response (no transaction pending)"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    monitor-exit p0

    return-void

    .line 354
    .end local p0    # "this":Lcom/android/server/location/ContextHubTransactionManager;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/location/ContextHubServiceTransaction;->getTransactionType()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 355
    const-string v1, "ContextHubTransactionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received unexpected query response (expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    monitor-exit p0

    return-void

    .line 359
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v0, v1, p1}, Lcom/android/server/location/ContextHubServiceTransaction;->onQueryResponse(ILjava/util/List;)V

    .line 360
    invoke-direct {p0}, Lcom/android/server/location/ContextHubTransactionManager;->removeTransactionAndStartNext()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 361
    monitor-exit p0

    return-void

    .line 348
    .end local v0    # "transaction":Lcom/android/server/location/ContextHubServiceTransaction;
    .end local p1    # "nanoAppStateList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/NanoAppState;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onTransactionResponse(II)V
    .locals 4
    .param p1, "transactionId"    # I
    .param p2, "result"    # I

    monitor-enter p0

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/ContextHubServiceTransaction;

    .line 325
    .local v0, "transaction":Lcom/android/server/location/ContextHubServiceTransaction;
    if-nez v0, :cond_0

    .line 326
    const-string v1, "ContextHubTransactionManager"

    const-string v2, "Received unexpected transaction response (no transaction pending)"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    monitor-exit p0

    return-void

    .line 329
    .end local p0    # "this":Lcom/android/server/location/ContextHubTransactionManager;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/location/ContextHubServiceTransaction;->getTransactionId()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 330
    const-string v1, "ContextHubTransactionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received unexpected transaction response (expected ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v0}, Lcom/android/server/location/ContextHubServiceTransaction;->getTransactionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", received ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    monitor-exit p0

    return-void

    .line 335
    :cond_1
    nop

    .line 336
    if-nez p2, :cond_2

    .line 337
    const/4 v1, 0x0

    goto :goto_0

    .line 338
    :cond_2
    const/4 v1, 0x5

    .line 335
    :goto_0
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/android/server/location/ContextHubServiceTransaction;->onTransactionComplete(I)V

    .line 339
    invoke-direct {p0}, Lcom/android/server/location/ContextHubTransactionManager;->removeTransactionAndStartNext()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 340
    monitor-exit p0

    return-void

    .line 323
    .end local v0    # "transaction":Lcom/android/server/location/ContextHubServiceTransaction;
    .end local p1    # "transactionId":I
    .end local p2    # "result":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
