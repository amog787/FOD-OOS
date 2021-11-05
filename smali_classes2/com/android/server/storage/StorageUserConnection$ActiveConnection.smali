.class final Lcom/android/server/storage/StorageUserConnection$ActiveConnection;
.super Ljava/lang/Object;
.source "StorageUserConnection.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/StorageUserConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActiveConnection"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mOutstandingOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRemoteFuture:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Landroid/service/storage/IExternalStorageService;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field final synthetic this$0:Lcom/android/server/storage/StorageUserConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/storage/StorageUserConnection;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLock:Ljava/lang/Object;

    .line 218
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mOutstandingOps:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/storage/StorageUserConnection;Lcom/android/server/storage/StorageUserConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/storage/StorageUserConnection;
    .param p2, "x1"    # Lcom/android/server/storage/StorageUserConnection$1;

    .line 206
    invoke-direct {p0, p1}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;-><init>(Lcom/android/server/storage/StorageUserConnection;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/storage/StorageUserConnection$ActiveConnection;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    .line 206
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private connectIfNeeded()Ljava/util/concurrent/CompletableFuture;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Landroid/service/storage/IExternalStorageService;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {v0}, Lcom/android/server/storage/StorageUserConnection;->access$300(Lcom/android/server/storage/StorageUserConnection;)Lcom/android/server/storage/StorageSessionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/storage/StorageSessionController;->getExternalStorageServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 326
    .local v0, "name":Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    .line 331
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 332
    :try_start_0
    iget-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mRemoteFuture:Ljava/util/concurrent/CompletableFuture;

    if-eqz v2, :cond_0

    .line 333
    iget-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mRemoteFuture:Ljava/util/concurrent/CompletableFuture;

    monitor-exit v1

    return-object v2

    .line 335
    :cond_0
    new-instance v2, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 336
    .local v2, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/service/storage/IExternalStorageService;>;"
    new-instance v3, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;

    invoke-direct {v3, p0, v2}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;-><init>(Lcom/android/server/storage/StorageUserConnection$ActiveConnection;Ljava/util/concurrent/CompletableFuture;)V

    iput-object v3, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 382
    const-string v3, "StorageUserConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Binding to the ExternalStorageService for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {v5}, Lcom/android/server/storage/StorageUserConnection;->access$100(Lcom/android/server/storage/StorageUserConnection;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v3, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {v3}, Lcom/android/server/storage/StorageUserConnection;->access$200(Lcom/android/server/storage/StorageUserConnection;)Landroid/content/Context;

    move-result-object v4

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    const/16 v7, 0x41

    iget-object v3, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    .line 388
    invoke-static {v3}, Lcom/android/server/storage/StorageUserConnection;->access$500(Lcom/android/server/storage/StorageUserConnection;)Landroid/os/HandlerThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v8

    iget-object v3, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    .line 389
    invoke-static {v3}, Lcom/android/server/storage/StorageUserConnection;->access$100(Lcom/android/server/storage/StorageUserConnection;)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    .line 385
    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 390
    const-string v3, "StorageUserConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bound to the ExternalStorageService for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {v5}, Lcom/android/server/storage/StorageUserConnection;->access$100(Lcom/android/server/storage/StorageUserConnection;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iput-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mRemoteFuture:Ljava/util/concurrent/CompletableFuture;

    .line 392
    monitor-exit v1

    return-object v2

    .line 394
    :cond_1
    new-instance v3, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to bind to the ExternalStorageService for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    .line 395
    invoke-static {v5}, Lcom/android/server/storage/StorageUserConnection;->access$100(Lcom/android/server/storage/StorageUserConnection;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;-><init>(Ljava/lang/String;)V

    .end local v0    # "name":Landroid/content/ComponentName;
    .end local p0    # "this":Lcom/android/server/storage/StorageUserConnection$ActiveConnection;
    throw v3

    .line 397
    .end local v2    # "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/service/storage/IExternalStorageService;>;"
    .restart local v0    # "name":Landroid/content/ComponentName;
    .restart local p0    # "this":Lcom/android/server/storage/StorageUserConnection$ActiveConnection;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 328
    :cond_2
    new-instance v1, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not ready to bind to the ExternalStorageService for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    .line 329
    invoke-static {v3}, Lcom/android/server/storage/StorageUserConnection;->access$100(Lcom/android/server/storage/StorageUserConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic lambda$endSession$3(Lcom/android/server/storage/StorageUserConnection$Session;Landroid/service/storage/IExternalStorageService;Landroid/os/RemoteCallback;)V
    .locals 1
    .param p0, "session"    # Lcom/android/server/storage/StorageUserConnection$Session;
    .param p1, "service"    # Landroid/service/storage/IExternalStorageService;
    .param p2, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection$Session;->sessionId:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/service/storage/IExternalStorageService;->endSession(Ljava/lang/String;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method static synthetic lambda$notifyVolumeStateChanged$4(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/service/storage/IExternalStorageService;Landroid/os/RemoteCallback;)V
    .locals 0
    .param p0, "sessionId"    # Ljava/lang/String;
    .param p1, "vol"    # Landroid/os/storage/StorageVolume;
    .param p2, "service"    # Landroid/service/storage/IExternalStorageService;
    .param p3, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 307
    invoke-interface {p2, p0, p1, p3}, Landroid/service/storage/IExternalStorageService;->notifyVolumeStateChanged(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method static synthetic lambda$startSession$2(Lcom/android/server/storage/StorageUserConnection$Session;Landroid/os/ParcelFileDescriptor;Landroid/service/storage/IExternalStorageService;Landroid/os/RemoteCallback;)V
    .locals 7
    .param p0, "session"    # Lcom/android/server/storage/StorageUserConnection$Session;
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "service"    # Landroid/service/storage/IExternalStorageService;
    .param p3, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 279
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection$Session;->sessionId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/storage/StorageUserConnection$Session;->upperPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/storage/StorageUserConnection$Session;->lowerPath:Ljava/lang/String;

    const/4 v2, 0x3

    move-object v0, p2

    move-object v3, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Landroid/service/storage/IExternalStorageService;->startSession(Ljava/lang/String;ILandroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method private setResult(Landroid/os/Bundle;Ljava/util/concurrent/CompletableFuture;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 315
    .local p2, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    const-string v0, "android.service.storage.extra.error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelableException;

    .line 316
    .local v0, "ex":Landroid/os/ParcelableException;
    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p2, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 319
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 321
    :goto_0
    return-void
.end method

.method private waitForAsync(Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;)V
    .locals 6
    .param p1, "asyncCall"    # Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 252
    invoke-direct {p0}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->connectIfNeeded()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 253
    .local v0, "serviceFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/service/storage/IExternalStorageService;>;"
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 256
    .local v1, "opFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    :try_start_0
    iget-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 257
    :try_start_1
    iget-object v3, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mOutstandingOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 259
    :try_start_2
    new-instance v2, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$hXlfhMGRYPdWgGEFtH95QtVtGhA;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$hXlfhMGRYPdWgGEFtH95QtVtGhA;-><init>(Lcom/android/server/storage/StorageUserConnection$ActiveConnection;Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CompletableFuture;->thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    const-wide/16 v3, 0x14

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 268
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 270
    iget-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 271
    :try_start_3
    iget-object v3, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mOutstandingOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 272
    monitor-exit v2

    .line 273
    nop

    .line 274
    return-void

    .line 272
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 258
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v0    # "serviceFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/service/storage/IExternalStorageService;>;"
    .end local v1    # "opFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .end local p0    # "this":Lcom/android/server/storage/StorageUserConnection$ActiveConnection;
    .end local p1    # "asyncCall":Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 270
    .restart local v0    # "serviceFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/service/storage/IExternalStorageService;>;"
    .restart local v1    # "opFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .restart local p0    # "this":Lcom/android/server/storage/StorageUserConnection$ActiveConnection;
    .restart local p1    # "asyncCall":Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;
    :catchall_2
    move-exception v2

    iget-object v3, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 271
    :try_start_6
    iget-object v4, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mOutstandingOps:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 272
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 273
    throw v2

    .line 272
    :catchall_3
    move-exception v2

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "oldConnection":Landroid/content/ServiceConnection;
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 225
    :try_start_0
    const-string v2, "StorageUserConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Closing connection for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {v4}, Lcom/android/server/storage/StorageUserConnection;->access$100(Lcom/android/server/storage/StorageUserConnection;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    move-object v0, v2

    .line 227
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 228
    iget-object v3, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mRemoteFuture:Ljava/util/concurrent/CompletableFuture;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 230
    iget-object v3, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mRemoteFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    .line 231
    iput-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mRemoteFuture:Ljava/util/concurrent/CompletableFuture;

    .line 234
    :cond_0
    iget-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mOutstandingOps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/CompletableFuture;

    .line 235
    .local v3, "op":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    invoke-virtual {v3, v4}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    .line 236
    nop

    .end local v3    # "op":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    goto :goto_0

    .line 237
    :cond_1
    iget-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mOutstandingOps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 238
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    if-eqz v0, :cond_2

    .line 242
    :try_start_1
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {v1}, Lcom/android/server/storage/StorageUserConnection;->access$200(Lcom/android/server/storage/StorageUserConnection;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 247
    goto :goto_1

    .line 243
    :catch_0
    move-exception v1

    .line 246
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StorageUserConnection"

    const-string v3, "Failed to unbind service"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void

    .line 238
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public endSession(Lcom/android/server/storage/StorageUserConnection$Session;)V
    .locals 4
    .param p1, "session"    # Lcom/android/server/storage/StorageUserConnection$Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
        }
    .end annotation

    .line 295
    :try_start_0
    new-instance v0, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$w52m3H6gmGVK8BNtAgTo5QgDBPs;

    invoke-direct {v0, p1}, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$w52m3H6gmGVK8BNtAgTo5QgDBPs;-><init>(Lcom/android/server/storage/StorageUserConnection$Session;)V

    invoke-direct {p0, v0}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->waitForAsync(Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    nop

    .line 300
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to end session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public synthetic lambda$waitForAsync$0$StorageUserConnection$ActiveConnection(Ljava/util/concurrent/CompletableFuture;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "opFuture"    # Ljava/util/concurrent/CompletableFuture;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 262
    invoke-direct {p0, p2, p1}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->setResult(Landroid/os/Bundle;Ljava/util/concurrent/CompletableFuture;)V

    return-void
.end method

.method public synthetic lambda$waitForAsync$1$StorageUserConnection$ActiveConnection(Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;Ljava/util/concurrent/CompletableFuture;Landroid/service/storage/IExternalStorageService;)Ljava/util/concurrent/CompletionStage;
    .locals 2
    .param p1, "asyncCall"    # Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;
    .param p2, "opFuture"    # Ljava/util/concurrent/CompletableFuture;
    .param p3, "service"    # Landroid/service/storage/IExternalStorageService;

    .line 261
    :try_start_0
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$kUZGnqbr1oFnqtNxrgrGptrpPnM;

    invoke-direct {v1, p0, p2}, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$kUZGnqbr1oFnqtNxrgrGptrpPnM;-><init>(Lcom/android/server/storage/StorageUserConnection$ActiveConnection;Ljava/util/concurrent/CompletableFuture;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {p1, p3, v0}, Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;->run(Landroid/service/storage/IExternalStorageService;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p2, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 267
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object p2
.end method

.method public notifyVolumeStateChanged(Ljava/lang/String;Landroid/os/storage/StorageVolume;)V
    .locals 4
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "vol"    # Landroid/os/storage/StorageVolume;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
        }
    .end annotation

    .line 306
    :try_start_0
    new-instance v0, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$8pj04t_Ssgb7pJLPtMyPIpmiLPk;

    invoke-direct {v0, p1, p2}, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$8pj04t_Ssgb7pJLPtMyPIpmiLPk;-><init>(Ljava/lang/String;Landroid/os/storage/StorageVolume;)V

    invoke-direct {p0, v0}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->waitForAsync(Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    nop

    .line 312
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to notify volume state changed for vol : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startSession(Lcom/android/server/storage/StorageUserConnection$Session;Landroid/os/ParcelFileDescriptor;)V
    .locals 4
    .param p1, "session"    # Lcom/android/server/storage/StorageUserConnection$Session;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
        }
    .end annotation

    .line 279
    :try_start_0
    new-instance v0, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$hePE56Ve48fBhPCnI3-7SQ4wrQ8;

    invoke-direct {v0, p1, p2}, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$hePE56Ve48fBhPCnI3-7SQ4wrQ8;-><init>(Lcom/android/server/storage/StorageUserConnection$Session;Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {p0, v0}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->waitForAsync(Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :try_start_1
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 289
    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 290
    nop

    .line 291
    :goto_0
    return-void

    .line 285
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 282
    :catch_1
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v1, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/storage/StorageUserConnection$ActiveConnection;
    .end local p1    # "session":Lcom/android/server/storage/StorageUserConnection$Session;
    .end local p2    # "fd":Landroid/os/ParcelFileDescriptor;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 286
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/storage/StorageUserConnection$ActiveConnection;
    .restart local p1    # "session":Lcom/android/server/storage/StorageUserConnection$Session;
    .restart local p2    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_1
    :try_start_3
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 289
    goto :goto_2

    .line 287
    :catch_2
    move-exception v1

    .line 290
    :goto_2
    throw v0
.end method
