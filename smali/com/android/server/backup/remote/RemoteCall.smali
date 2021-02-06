.class public Lcom/android/server/backup/remote/RemoteCall;
.super Ljava/lang/Object;
.source "RemoteCall.java"


# instance fields
.field private final mCallable:Lcom/android/server/backup/remote/RemoteCallable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/backup/remote/RemoteCallable<",
            "Landroid/app/backup/IBackupCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mFuture:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/android/server/backup/remote/RemoteResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeoutMs:J


# direct methods
.method public constructor <init>(Lcom/android/server/backup/remote/RemoteCallable;J)V
    .locals 1
    .param p2, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/backup/remote/RemoteCallable<",
            "Landroid/app/backup/IBackupCallback;",
            ">;J)V"
        }
    .end annotation

    .line 76
    .local p1, "callable":Lcom/android/server/backup/remote/RemoteCallable;, "Lcom/android/server/backup/remote/RemoteCallable<Landroid/app/backup/IBackupCallback;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/backup/remote/RemoteCall;-><init>(ZLcom/android/server/backup/remote/RemoteCallable;J)V

    .line 77
    return-void
.end method

.method public constructor <init>(ZLcom/android/server/backup/remote/RemoteCallable;J)V
    .locals 1
    .param p1, "cancelled"    # Z
    .param p3, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/server/backup/remote/RemoteCallable<",
            "Landroid/app/backup/IBackupCallback;",
            ">;J)V"
        }
    .end annotation

    .line 86
    .local p2, "callable":Lcom/android/server/backup/remote/RemoteCallable;, "Lcom/android/server/backup/remote/RemoteCallable<Landroid/app/backup/IBackupCallback;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p2, p0, Lcom/android/server/backup/remote/RemoteCall;->mCallable:Lcom/android/server/backup/remote/RemoteCallable;

    .line 88
    iput-wide p3, p0, Lcom/android/server/backup/remote/RemoteCall;->mTimeoutMs:J

    .line 89
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/remote/RemoteCall;->mFuture:Ljava/util/concurrent/CompletableFuture;

    .line 90
    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/server/backup/remote/RemoteCall;->cancel()V

    .line 93
    :cond_0
    return-void
.end method

.method public static execute(Lcom/android/server/backup/remote/RemoteCallable;J)Lcom/android/server/backup/remote/RemoteResult;
    .locals 1
    .param p1, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/backup/remote/RemoteCallable<",
            "Landroid/app/backup/IBackupCallback;",
            ">;J)",
            "Lcom/android/server/backup/remote/RemoteResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    .local p0, "callable":Lcom/android/server/backup/remote/RemoteCallable;, "Lcom/android/server/backup/remote/RemoteCallable<Landroid/app/backup/IBackupCallback;>;"
    new-instance v0, Lcom/android/server/backup/remote/RemoteCall;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/backup/remote/RemoteCall;-><init>(Lcom/android/server/backup/remote/RemoteCallable;J)V

    invoke-virtual {v0}, Lcom/android/server/backup/remote/RemoteCall;->call()Lcom/android/server/backup/remote/RemoteResult;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$UZaEiTGjS9e2j04YYkGl3Y2ltU4(Lcom/android/server/backup/remote/RemoteCall;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/backup/remote/RemoteCall;->timeOut()V

    return-void
.end method

.method private timeOut()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/server/backup/remote/RemoteCall;->mFuture:Ljava/util/concurrent/CompletableFuture;

    sget-object v1, Lcom/android/server/backup/remote/RemoteResult;->FAILED_TIMED_OUT:Lcom/android/server/backup/remote/RemoteResult;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method


# virtual methods
.method public call()Lcom/android/server/backup/remote/RemoteResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 115
    const-string v1, "Can\'t call call() on main thread"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/server/backup/remote/RemoteCall;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    iget-wide v0, p0, Lcom/android/server/backup/remote/RemoteCall;->mTimeoutMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/android/server/backup/remote/RemoteCall;->timeOut()V

    goto :goto_0

    .line 122
    :cond_0
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/backup/remote/-$$Lambda$RemoteCall$UZaEiTGjS9e2j04YYkGl3Y2ltU4;

    invoke-direct {v1, p0}, Lcom/android/server/backup/remote/-$$Lambda$RemoteCall$UZaEiTGjS9e2j04YYkGl3Y2ltU4;-><init>(Lcom/android/server/backup/remote/RemoteCall;)V

    iget-wide v2, p0, Lcom/android/server/backup/remote/RemoteCall;->mTimeoutMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    iget-object v0, p0, Lcom/android/server/backup/remote/RemoteCall;->mCallable:Lcom/android/server/backup/remote/RemoteCallable;

    new-instance v1, Lcom/android/server/backup/remote/FutureBackupCallback;

    iget-object v2, p0, Lcom/android/server/backup/remote/RemoteCall;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1, v2}, Lcom/android/server/backup/remote/FutureBackupCallback;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-interface {v0, v1}, Lcom/android/server/backup/remote/RemoteCallable;->call(Ljava/lang/Object;)V

    .line 127
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/remote/RemoteCall;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/remote/RemoteResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Future unexpectedly completed with an exception"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/android/server/backup/remote/RemoteResult;->FAILED_THREAD_INTERRUPTED:Lcom/android/server/backup/remote/RemoteResult;

    return-object v1
.end method

.method public cancel()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/android/server/backup/remote/RemoteCall;->mFuture:Ljava/util/concurrent/CompletableFuture;

    sget-object v1, Lcom/android/server/backup/remote/RemoteResult;->FAILED_CANCELLED:Lcom/android/server/backup/remote/RemoteResult;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method
