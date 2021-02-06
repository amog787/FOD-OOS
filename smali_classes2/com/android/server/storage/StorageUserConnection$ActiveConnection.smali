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
.field private mIsConnecting:Z

.field private mLastException:Landroid/os/ParcelableException;

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mRemote:Landroid/service/storage/IExternalStorageService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field final synthetic this$0:Lcom/android/server/storage/StorageUserConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/storage/StorageUserConnection;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/storage/StorageUserConnection;Lcom/android/server/storage/StorageUserConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/storage/StorageUserConnection;
    .param p2, "x1"    # Lcom/android/server/storage/StorageUserConnection$1;

    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;-><init>(Lcom/android/server/storage/StorageUserConnection;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/storage/StorageUserConnection$ActiveConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    .line 241
    iget-boolean v0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mIsConnecting:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/storage/StorageUserConnection$ActiveConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/storage/StorageUserConnection$ActiveConnection;
    .param p1, "x1"    # Z

    .line 241
    iput-boolean p1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mIsConnecting:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/server/storage/StorageUserConnection$ActiveConnection;Landroid/service/storage/IExternalStorageService;)Landroid/service/storage/IExternalStorageService;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/storage/StorageUserConnection$ActiveConnection;
    .param p1, "x1"    # Landroid/service/storage/IExternalStorageService;

    .line 241
    iput-object p1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mRemote:Landroid/service/storage/IExternalStorageService;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/storage/StorageUserConnection$ActiveConnection;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    .line 241
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private maybeThrowExceptionLocked()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLastException:Landroid/os/ParcelableException;

    if-nez v0, :cond_0

    .line 372
    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLastException:Landroid/os/ParcelableException;

    .line 364
    .local v0, "lastException":Landroid/os/ParcelableException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLastException:Landroid/os/ParcelableException;

    .line 366
    :try_start_0
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    nop

    .line 370
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 367
    :catch_0
    move-exception v1

    .line 368
    .local v1, "e":Ljava/io/IOException;
    throw v1
.end method

.method private setResultLocked(Ljava/util/concurrent/CountDownLatch;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 357
    const-string v0, "android.service.storage.extra.error"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelableException;

    iput-object v0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLastException:Landroid/os/ParcelableException;

    .line 358
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 359
    return-void
.end method


# virtual methods
.method public bind()Ljava/util/concurrent/CountDownLatch;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {v0}, Lcom/android/server/storage/StorageUserConnection;->access$500(Lcom/android/server/storage/StorageUserConnection;)Lcom/android/server/storage/StorageSessionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/storage/StorageSessionController;->getExternalStorageServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 376
    .local v0, "name":Landroid/content/ComponentName;
    if-eqz v0, :cond_5

    .line 382
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {v1}, Lcom/android/server/storage/StorageUserConnection;->access$100(Lcom/android/server/storage/StorageUserConnection;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 383
    :try_start_0
    iget-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mRemote:Landroid/service/storage/IExternalStorageService;

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mIsConnecting:Z

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 390
    :cond_0
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 391
    iput-boolean v3, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mIsConnecting:Z

    .line 392
    new-instance v2, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;

    invoke-direct {v2, p0}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;-><init>(Lcom/android/server/storage/StorageUserConnection$ActiveConnection;)V

    iput-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 445
    const-string v2, "StorageUserConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Binding to the ExternalStorageService for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {v4}, Lcom/android/server/storage/StorageUserConnection;->access$200(Lcom/android/server/storage/StorageUserConnection;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {v2}, Lcom/android/server/storage/StorageUserConnection;->access$900(Lcom/android/server/storage/StorageUserConnection;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 448
    iget-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {v2}, Lcom/android/server/storage/StorageUserConnection;->access$300(Lcom/android/server/storage/StorageUserConnection;)Landroid/content/Context;

    move-result-object v4

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    const/16 v7, 0x41

    iget-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    .line 451
    invoke-static {v2}, Lcom/android/server/storage/StorageUserConnection;->access$1000(Lcom/android/server/storage/StorageUserConnection;)Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v8

    iget-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    .line 452
    invoke-static {v2}, Lcom/android/server/storage/StorageUserConnection;->access$200(Lcom/android/server/storage/StorageUserConnection;)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    .line 448
    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 453
    const-string v2, "StorageUserConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bound to the ExternalStorageService for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {v4}, Lcom/android/server/storage/StorageUserConnection;->access$200(Lcom/android/server/storage/StorageUserConnection;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLatch:Ljava/util/concurrent/CountDownLatch;

    monitor-exit v1

    return-object v2

    .line 456
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mIsConnecting:Z

    .line 457
    new-instance v2, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to bind to the ExternalStorageService for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    .line 458
    invoke-static {v4}, Lcom/android/server/storage/StorageUserConnection;->access$200(Lcom/android/server/storage/StorageUserConnection;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;-><init>(Ljava/lang/String;)V

    .end local v0    # "name":Landroid/content/ComponentName;
    .end local p0    # "this":Lcom/android/server/storage/StorageUserConnection$ActiveConnection;
    throw v2

    .line 461
    .restart local v0    # "name":Landroid/content/ComponentName;
    .restart local p0    # "this":Lcom/android/server/storage/StorageUserConnection$ActiveConnection;
    :cond_2
    iget-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {v2}, Lcom/android/server/storage/StorageUserConnection;->access$300(Lcom/android/server/storage/StorageUserConnection;)Landroid/content/Context;

    move-result-object v2

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    const/16 v6, 0x41

    iget-object v7, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    .line 464
    invoke-static {v7}, Lcom/android/server/storage/StorageUserConnection;->access$200(Lcom/android/server/storage/StorageUserConnection;)I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 461
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 465
    const-string v2, "StorageUserConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bound to the ExternalStorageService for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {v4}, Lcom/android/server/storage/StorageUserConnection;->access$200(Lcom/android/server/storage/StorageUserConnection;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLatch:Ljava/util/concurrent/CountDownLatch;

    monitor-exit v1

    return-object v2

    .line 468
    :cond_3
    iput-boolean v3, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mIsConnecting:Z

    .line 469
    new-instance v2, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to bind to the ExternalStorageService for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    .line 470
    invoke-static {v4}, Lcom/android/server/storage/StorageUserConnection;->access$200(Lcom/android/server/storage/StorageUserConnection;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;-><init>(Ljava/lang/String;)V

    .end local v0    # "name":Landroid/content/ComponentName;
    .end local p0    # "this":Lcom/android/server/storage/StorageUserConnection$ActiveConnection;
    throw v2

    .line 387
    .restart local v0    # "name":Landroid/content/ComponentName;
    .restart local p0    # "this":Lcom/android/server/storage/StorageUserConnection$ActiveConnection;
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLatch:Ljava/util/concurrent/CountDownLatch;

    monitor-exit v1

    return-object v2

    .line 473
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 378
    :cond_5
    new-instance v1, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not ready to bind to the ExternalStorageService for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    .line 379
    invoke-static {v3}, Lcom/android/server/storage/StorageUserConnection;->access$200(Lcom/android/server/storage/StorageUserConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public close()V
    .locals 5

    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "oldConnection":Landroid/content/ServiceConnection;
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {v1}, Lcom/android/server/storage/StorageUserConnection;->access$100(Lcom/android/server/storage/StorageUserConnection;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 265
    :try_start_0
    const-string v2, "StorageUserConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Closing connection for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {v4}, Lcom/android/server/storage/StorageUserConnection;->access$200(Lcom/android/server/storage/StorageUserConnection;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mIsConnecting:Z

    .line 267
    iget-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    move-object v0, v2

    .line 268
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 269
    iput-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mRemote:Landroid/service/storage/IExternalStorageService;

    .line 270
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    if-eqz v0, :cond_0

    .line 274
    :try_start_1
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {v1}, Lcom/android/server/storage/StorageUserConnection;->access$300(Lcom/android/server/storage/StorageUserConnection;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 279
    goto :goto_0

    .line 275
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StorageUserConnection"

    const-string v3, "Failed to unbind service"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 270
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public endSessionLocked(Lcom/android/server/storage/StorageUserConnection$Session;)V
    .locals 5
    .param p1, "session"    # Lcom/android/server/storage/StorageUserConnection$Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
        }
    .end annotation

    .line 326
    invoke-virtual {p0, p1}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->isActiveLocked(Lcom/android/server/storage/StorageUserConnection$Session;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    return-void

    .line 331
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 333
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mRemote:Landroid/service/storage/IExternalStorageService;

    iget-object v2, p1, Lcom/android/server/storage/StorageUserConnection$Session;->sessionId:Ljava/lang/String;

    new-instance v3, Landroid/os/RemoteCallback;

    new-instance v4, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$2ECT20JMDVk3s2c7JRifxIdFISs;

    invoke-direct {v4, p0, v0}, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$2ECT20JMDVk3s2c7JRifxIdFISs;-><init>(Lcom/android/server/storage/StorageUserConnection$ActiveConnection;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v3, v4}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {v1, v2, v3}, Landroid/service/storage/IExternalStorageService;->endSession(Ljava/lang/String;Landroid/os/RemoteCallback;)V

    .line 335
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end_session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/server/storage/StorageUserConnection;->access$400(Lcom/android/server/storage/StorageUserConnection;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    .line 336
    invoke-direct {p0}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->maybeThrowExceptionLocked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    nop

    .line 340
    return-void

    .line 337
    :catch_0
    move-exception v1

    .line 338
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to end session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public isActiveLocked(Lcom/android/server/storage/StorageUserConnection$Session;)Z
    .locals 2
    .param p1, "session"    # Lcom/android/server/storage/StorageUserConnection$Session;

    .line 284
    invoke-virtual {p1}, Lcom/android/server/storage/StorageUserConnection$Session;->isInitialisedLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session not initialised "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageUserConnection"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v0, 0x0

    return v0

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mRemote:Landroid/service/storage/IExternalStorageService;

    if-eqz v0, :cond_1

    .line 292
    const/4 v0, 0x1

    return v0

    .line 290
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Valid session with inactive connection"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic lambda$endSessionLocked$1$StorageUserConnection$ActiveConnection(Ljava/util/concurrent/CountDownLatch;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 334
    invoke-direct {p0, p1, p2}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->setResultLocked(Ljava/util/concurrent/CountDownLatch;Landroid/os/Bundle;)V

    return-void
.end method

.method public synthetic lambda$notifyVolumeStateChangedLocked$2$StorageUserConnection$ActiveConnection(Ljava/util/concurrent/CountDownLatch;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 347
    invoke-direct {p0, p1, p2}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->setResultLocked(Ljava/util/concurrent/CountDownLatch;Landroid/os/Bundle;)V

    return-void
.end method

.method public synthetic lambda$startSessionLocked$0$StorageUserConnection$ActiveConnection(Ljava/util/concurrent/CountDownLatch;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 311
    invoke-direct {p0, p1, p2}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->setResultLocked(Ljava/util/concurrent/CountDownLatch;Landroid/os/Bundle;)V

    return-void
.end method

.method public notifyVolumeStateChangedLocked(Ljava/lang/String;Landroid/os/storage/StorageVolume;)V
    .locals 5
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "vol"    # Landroid/os/storage/StorageVolume;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
        }
    .end annotation

    .line 344
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 346
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mRemote:Landroid/service/storage/IExternalStorageService;

    new-instance v2, Landroid/os/RemoteCallback;

    new-instance v3, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$_fNj4MMVR2_fLDVK18ztgw4RUrI;

    invoke-direct {v3, p0, v0}, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$_fNj4MMVR2_fLDVK18ztgw4RUrI;-><init>(Lcom/android/server/storage/StorageUserConnection$ActiveConnection;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v2, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {v1, p1, p2, v2}, Landroid/service/storage/IExternalStorageService;->notifyVolumeStateChanged(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/RemoteCallback;)V

    .line 348
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify_volume_state_changed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/server/storage/StorageUserConnection;->access$400(Lcom/android/server/storage/StorageUserConnection;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    .line 349
    invoke-direct {p0}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->maybeThrowExceptionLocked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    nop

    .line 354
    return-void

    .line 350
    :catch_0
    move-exception v1

    .line 351
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to notify volume state changed for vol : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public startSessionLocked(Lcom/android/server/storage/StorageUserConnection$Session;Landroid/os/ParcelFileDescriptor;)V
    .locals 8
    .param p1, "session"    # Lcom/android/server/storage/StorageUserConnection$Session;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
        }
    .end annotation

    .line 297
    invoke-virtual {p0, p1}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->isActiveLocked(Lcom/android/server/storage/StorageUserConnection$Session;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    :try_start_0
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 303
    :goto_0
    return-void

    .line 306
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 308
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mRemote:Landroid/service/storage/IExternalStorageService;

    iget-object v2, p1, Lcom/android/server/storage/StorageUserConnection$Session;->sessionId:Ljava/lang/String;

    const/4 v3, 0x3

    iget-object v5, p1, Lcom/android/server/storage/StorageUserConnection$Session;->upperPath:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/storage/StorageUserConnection$Session;->lowerPath:Ljava/lang/String;

    new-instance v7, Landroid/os/RemoteCallback;

    new-instance v4, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$uMm3Ei4cCV446R_LJOCKr8R8AU8;

    invoke-direct {v4, p0, v0}, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$uMm3Ei4cCV446R_LJOCKr8R8AU8;-><init>(Lcom/android/server/storage/StorageUserConnection$ActiveConnection;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v7, v4}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    move-object v4, p2

    invoke-interface/range {v1 .. v7}, Landroid/service/storage/IExternalStorageService;->startSession(Ljava/lang/String;ILandroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    .line 312
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start_session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/server/storage/StorageUserConnection;->access$400(Lcom/android/server/storage/StorageUserConnection;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    .line 313
    invoke-direct {p0}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->maybeThrowExceptionLocked()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    :try_start_2
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 321
    goto :goto_1

    .line 319
    :catch_1
    move-exception v1

    .line 322
    nop

    .line 323
    :goto_1
    return-void

    .line 317
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 314
    :catch_2
    move-exception v1

    .line 315
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v2, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to start session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local p0    # "this":Lcom/android/server/storage/StorageUserConnection$ActiveConnection;
    .end local p1    # "session":Lcom/android/server/storage/StorageUserConnection$Session;
    .end local p2    # "fd":Landroid/os/ParcelFileDescriptor;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 318
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    .restart local p0    # "this":Lcom/android/server/storage/StorageUserConnection$ActiveConnection;
    .restart local p1    # "session":Lcom/android/server/storage/StorageUserConnection$Session;
    .restart local p2    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_2
    :try_start_4
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 321
    goto :goto_3

    .line 319
    :catch_3
    move-exception v2

    .line 322
    :goto_3
    throw v1
.end method
