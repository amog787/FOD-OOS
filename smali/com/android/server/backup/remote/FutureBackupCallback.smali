.class public Lcom/android/server/backup/remote/FutureBackupCallback;
.super Landroid/app/backup/IBackupCallback$Stub;
.source "FutureBackupCallback.java"


# instance fields
.field private final mFuture:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/android/server/backup/remote/RemoteResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/CompletableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/android/server/backup/remote/RemoteResult;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p1, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Lcom/android/server/backup/remote/RemoteResult;>;"
    invoke-direct {p0}, Landroid/app/backup/IBackupCallback$Stub;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/backup/remote/FutureBackupCallback;->mFuture:Ljava/util/concurrent/CompletableFuture;

    .line 33
    return-void
.end method


# virtual methods
.method public operationComplete(J)V
    .locals 2
    .param p1, "result"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/android/server/backup/remote/FutureBackupCallback;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-static {p1, p2}, Lcom/android/server/backup/remote/RemoteResult;->of(J)Lcom/android/server/backup/remote/RemoteResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method
