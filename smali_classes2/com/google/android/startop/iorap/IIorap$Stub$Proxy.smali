.class Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIorap.java"

# interfaces
.implements Lcom/google/android/startop/iorap/IIorap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/IIorap$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/google/android/startop/iorap/IIorap;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p1, p0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 270
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 277
    const-string v0, "com.google.android.startop.iorap.IIorap"

    return-object v0
.end method

.method public onAppIntentEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/AppIntentEvent;)V
    .locals 5
    .param p1, "request"    # Lcom/google/android/startop/iorap/RequestId;
    .param p2, "event"    # Lcom/google/android/startop/iorap/AppIntentEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 421
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 423
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.google.android.startop.iorap.IIorap"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 424
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 425
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    invoke-virtual {p1, v0, v2}, Lcom/google/android/startop/iorap/RequestId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 429
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 431
    :goto_0
    if-eqz p2, :cond_1

    .line 432
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    invoke-virtual {p2, v0, v2}, Lcom/google/android/startop/iorap/AppIntentEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 436
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    :goto_1
    iget-object v2, p0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 439
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 440
    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/google/android/startop/iorap/IIorap;->onAppIntentEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/AppIntentEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 441
    return-void

    .line 445
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 446
    nop

    .line 447
    return-void

    .line 445
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onAppLaunchEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/AppLaunchEvent;)V
    .locals 5
    .param p1, "request"    # Lcom/google/android/startop/iorap/RequestId;
    .param p2, "event"    # Lcom/google/android/startop/iorap/AppLaunchEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 365
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.google.android.startop.iorap.IIorap"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 366
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 367
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    invoke-virtual {p1, v0, v2}, Lcom/google/android/startop/iorap/RequestId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 371
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    :goto_0
    if-eqz p2, :cond_1

    .line 374
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    invoke-virtual {p2, v0, v2}, Lcom/google/android/startop/iorap/AppLaunchEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 378
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    :goto_1
    iget-object v2, p0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 381
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 382
    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/google/android/startop/iorap/IIorap;->onAppLaunchEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/AppLaunchEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 383
    return-void

    .line 387
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 388
    nop

    .line 389
    return-void

    .line 387
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onPackageEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/PackageEvent;)V
    .locals 5
    .param p1, "request"    # Lcom/google/android/startop/iorap/RequestId;
    .param p2, "event"    # Lcom/google/android/startop/iorap/PackageEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 392
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 394
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.google.android.startop.iorap.IIorap"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 395
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 396
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    invoke-virtual {p1, v0, v2}, Lcom/google/android/startop/iorap/RequestId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 400
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    :goto_0
    if-eqz p2, :cond_1

    .line 403
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    invoke-virtual {p2, v0, v2}, Lcom/google/android/startop/iorap/PackageEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 407
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    :goto_1
    iget-object v2, p0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 410
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 411
    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/google/android/startop/iorap/IIorap;->onPackageEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/PackageEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 412
    return-void

    .line 416
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 417
    nop

    .line 418
    return-void

    .line 416
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onSystemServiceEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/SystemServiceEvent;)V
    .locals 5
    .param p1, "request"    # Lcom/google/android/startop/iorap/RequestId;
    .param p2, "event"    # Lcom/google/android/startop/iorap/SystemServiceEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 450
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 452
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.google.android.startop.iorap.IIorap"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 453
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 454
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    invoke-virtual {p1, v0, v2}, Lcom/google/android/startop/iorap/RequestId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 458
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    :goto_0
    if-eqz p2, :cond_1

    .line 461
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    invoke-virtual {p2, v0, v2}, Lcom/google/android/startop/iorap/SystemServiceEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 465
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    :goto_1
    iget-object v2, p0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 468
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 469
    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/google/android/startop/iorap/IIorap;->onSystemServiceEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/SystemServiceEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 470
    return-void

    .line 474
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 475
    nop

    .line 476
    return-void

    .line 474
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onSystemServiceUserEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/SystemServiceUserEvent;)V
    .locals 5
    .param p1, "request"    # Lcom/google/android/startop/iorap/RequestId;
    .param p2, "event"    # Lcom/google/android/startop/iorap/SystemServiceUserEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 479
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 481
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.google.android.startop.iorap.IIorap"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 482
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 483
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    invoke-virtual {p1, v0, v2}, Lcom/google/android/startop/iorap/RequestId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 487
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    :goto_0
    if-eqz p2, :cond_1

    .line 490
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    invoke-virtual {p2, v0, v2}, Lcom/google/android/startop/iorap/SystemServiceUserEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 494
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    :goto_1
    iget-object v2, p0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 497
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 498
    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/google/android/startop/iorap/IIorap;->onSystemServiceUserEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/SystemServiceUserEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 499
    return-void

    .line 503
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 504
    nop

    .line 505
    return-void

    .line 503
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public setTaskListener(Lcom/google/android/startop/iorap/ITaskListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/google/android/startop/iorap/ITaskListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 342
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.google.android.startop.iorap.IIorap"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 343
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/startop/iorap/ITaskListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 344
    iget-object v2, p0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 345
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 346
    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/google/android/startop/iorap/IIorap;->setTaskListener(Lcom/google/android/startop/iorap/ITaskListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 347
    return-void

    .line 351
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 352
    nop

    .line 353
    return-void

    .line 351
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
