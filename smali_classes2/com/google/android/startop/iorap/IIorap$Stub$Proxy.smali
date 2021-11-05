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

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput-object p1, p0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 316
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 323
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

    .line 525
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 527
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.google.android.startop.iorap.IIorap"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 528
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 529
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    invoke-virtual {p1, v0, v2}, Lcom/google/android/startop/iorap/RequestId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 533
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    :goto_0
    if-eqz p2, :cond_1

    .line 536
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    invoke-virtual {p2, v0, v2}, Lcom/google/android/startop/iorap/AppIntentEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 540
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    :goto_1
    iget-object v2, p0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 543
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 544
    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/google/android/startop/iorap/IIorap;->onAppIntentEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/AppIntentEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 545
    return-void

    .line 549
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 550
    nop

    .line 551
    return-void

    .line 549
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 550
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

    .line 409
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 411
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.google.android.startop.iorap.IIorap"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 412
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 413
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    invoke-virtual {p1, v0, v2}, Lcom/google/android/startop/iorap/RequestId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 417
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    :goto_0
    if-eqz p2, :cond_1

    .line 420
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    invoke-virtual {p2, v0, v2}, Lcom/google/android/startop/iorap/AppLaunchEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 424
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    :goto_1
    iget-object v2, p0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 427
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 428
    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/google/android/startop/iorap/IIorap;->onAppLaunchEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/AppLaunchEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 429
    return-void

    .line 433
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 434
    nop

    .line 435
    return-void

    .line 433
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 434
    throw v1
.end method

.method public onDexOptEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/DexOptEvent;)V
    .locals 5
    .param p1, "request"    # Lcom/google/android/startop/iorap/RequestId;
    .param p2, "event"    # Lcom/google/android/startop/iorap/DexOptEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 438
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 440
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.google.android.startop.iorap.IIorap"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 441
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 442
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    invoke-virtual {p1, v0, v2}, Lcom/google/android/startop/iorap/RequestId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 446
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    :goto_0
    if-eqz p2, :cond_1

    .line 449
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    invoke-virtual {p2, v0, v2}, Lcom/google/android/startop/iorap/DexOptEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 453
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    :goto_1
    iget-object v2, p0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 456
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 457
    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/google/android/startop/iorap/IIorap;->onDexOptEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/DexOptEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 458
    return-void

    .line 462
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 463
    nop

    .line 464
    return-void

    .line 462
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 463
    throw v1
.end method

.method public onJobScheduledEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/JobScheduledEvent;)V
    .locals 5
    .param p1, "request"    # Lcom/google/android/startop/iorap/RequestId;
    .param p2, "event"    # Lcom/google/android/startop/iorap/JobScheduledEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 467
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 469
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.google.android.startop.iorap.IIorap"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 470
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 471
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    invoke-virtual {p1, v0, v2}, Lcom/google/android/startop/iorap/RequestId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 475
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    :goto_0
    if-eqz p2, :cond_1

    .line 478
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    invoke-virtual {p2, v0, v2}, Lcom/google/android/startop/iorap/JobScheduledEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 482
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    :goto_1
    iget-object v2, p0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 485
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 486
    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/google/android/startop/iorap/IIorap;->onJobScheduledEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/JobScheduledEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 487
    return-void

    .line 491
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 492
    nop

    .line 493
    return-void

    .line 491
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 492
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

    .line 496
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 498
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.google.android.startop.iorap.IIorap"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 499
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 500
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    invoke-virtual {p1, v0, v2}, Lcom/google/android/startop/iorap/RequestId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 504
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    :goto_0
    if-eqz p2, :cond_1

    .line 507
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    invoke-virtual {p2, v0, v2}, Lcom/google/android/startop/iorap/PackageEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 511
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    :goto_1
    iget-object v2, p0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 514
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 515
    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/google/android/startop/iorap/IIorap;->onPackageEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/PackageEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 516
    return-void

    .line 520
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 521
    nop

    .line 522
    return-void

    .line 520
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 521
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

    .line 554
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 556
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.google.android.startop.iorap.IIorap"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 557
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 558
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    invoke-virtual {p1, v0, v2}, Lcom/google/android/startop/iorap/RequestId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 562
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    :goto_0
    if-eqz p2, :cond_1

    .line 565
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 566
    invoke-virtual {p2, v0, v2}, Lcom/google/android/startop/iorap/SystemServiceEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 569
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    :goto_1
    iget-object v2, p0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 572
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 573
    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/google/android/startop/iorap/IIorap;->onSystemServiceEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/SystemServiceEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 574
    return-void

    .line 578
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 579
    nop

    .line 580
    return-void

    .line 578
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 579
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

    .line 583
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 585
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.google.android.startop.iorap.IIorap"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 586
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 587
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    invoke-virtual {p1, v0, v2}, Lcom/google/android/startop/iorap/RequestId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 591
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 593
    :goto_0
    if-eqz p2, :cond_1

    .line 594
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    invoke-virtual {p2, v0, v2}, Lcom/google/android/startop/iorap/SystemServiceUserEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 598
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 600
    :goto_1
    iget-object v2, p0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 601
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 602
    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/google/android/startop/iorap/IIorap;->onSystemServiceUserEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/SystemServiceUserEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 603
    return-void

    .line 607
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 608
    nop

    .line 609
    return-void

    .line 607
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 608
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

    .line 386
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 388
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.google.android.startop.iorap.IIorap"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 389
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/startop/iorap/ITaskListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 390
    iget-object v2, p0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 391
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 392
    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/google/android/startop/iorap/IIorap;->setTaskListener(Lcom/google/android/startop/iorap/ITaskListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 393
    return-void

    .line 397
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 398
    nop

    .line 399
    return-void

    .line 397
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 398
    throw v1
.end method
