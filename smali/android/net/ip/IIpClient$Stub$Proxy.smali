.class Landroid/net/ip/IIpClient$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIpClient.java"

# interfaces
.implements Landroid/net/ip/IIpClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IIpClient$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/ip/IIpClient;


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mCachedVersion:I

    .line 286
    const-string v0, "-1"

    iput-object v0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 283
    iput-object p1, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 284
    return-void
.end method


# virtual methods
.method public addKeepalivePacketFilter(ILandroid/net/TcpKeepalivePacketDataParcelable;)V
    .locals 5
    .param p1, "slot"    # I
    .param p2, "pkt"    # Landroid/net/TcpKeepalivePacketDataParcelable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 451
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 454
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    invoke-virtual {p2, v0, v2}, Landroid/net/TcpKeepalivePacketDataParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 458
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    :goto_0
    iget-object v2, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 461
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 462
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/ip/IIpClient;->addKeepalivePacketFilter(ILandroid/net/TcpKeepalivePacketDataParcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 463
    return-void

    .line 467
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 468
    nop

    .line 469
    return-void

    .line 467
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 468
    throw v1
.end method

.method public addNattKeepalivePacketFilter(ILandroid/net/NattKeepalivePacketDataParcelable;)V
    .locals 5
    .param p1, "slot"    # I
    .param p2, "pkt"    # Landroid/net/NattKeepalivePacketDataParcelable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 505
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 507
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 508
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 510
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    invoke-virtual {p2, v0, v2}, Landroid/net/NattKeepalivePacketDataParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 514
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    :goto_0
    iget-object v2, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 517
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 518
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/ip/IIpClient;->addNattKeepalivePacketFilter(ILandroid/net/NattKeepalivePacketDataParcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 519
    return-void

    .line 523
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 524
    nop

    .line 525
    return-void

    .line 523
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 524
    throw v1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 289
    iget-object v0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public completedPreDhcpAction()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 299
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 301
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 302
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/ip/IIpClient;->completedPreDhcpAction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 303
    return-void

    .line 307
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 308
    nop

    .line 309
    return-void

    .line 307
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 308
    throw v1
.end method

.method public confirmConfiguration()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 312
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 314
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 316
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 317
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/ip/IIpClient;->confirmConfiguration()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 318
    return-void

    .line 322
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 323
    nop

    .line 324
    return-void

    .line 322
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 323
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 293
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->access$000()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getInterfaceHash()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 588
    :try_start_0
    const-string v0, "-1"

    iget-object v1, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 590
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 592
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_1
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 593
    iget-object v2, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 594
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 595
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 596
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/ip/IIpClient;->getInterfaceHash()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 602
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 603
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 596
    monitor-exit p0

    return-object v3

    .line 599
    .end local p0    # "this":Landroid/net/ip/IIpClient$Stub$Proxy;
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 600
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 602
    .end local v2    # "_status":Z
    :try_start_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 603
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 604
    goto :goto_0

    .line 602
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 603
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 604
    throw v2

    .line 606
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v0

    .line 587
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInterfaceVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 566
    iget v0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 567
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 568
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 570
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 571
    iget-object v2, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 572
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 573
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 574
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/ip/IIpClient;->getInterfaceVersion()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 574
    return v3

    .line 577
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 578
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mCachedVersion:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 580
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 582
    goto :goto_0

    .line 580
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 582
    throw v2

    .line 584
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_1
    :goto_0
    iget v0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public notifyPreconnectionComplete(Z)V
    .locals 5
    .param p1, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 528
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 530
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 531
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    iget-object v2, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 533
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 534
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->notifyPreconnectionComplete(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 535
    return-void

    .line 539
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 540
    nop

    .line 541
    return-void

    .line 539
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 540
    throw v1
.end method

.method public readPacketFilterComplete([B)V
    .locals 5
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 327
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 329
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 331
    iget-object v1, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 332
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 333
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->readPacketFilterComplete([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 334
    return-void

    .line 338
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 339
    nop

    .line 340
    return-void

    .line 338
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 339
    throw v1
.end method

.method public removeKeepalivePacketFilter(I)V
    .locals 5
    .param p1, "slot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 472
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 474
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 475
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    iget-object v1, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 477
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 478
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->removeKeepalivePacketFilter(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 479
    return-void

    .line 483
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 484
    nop

    .line 485
    return-void

    .line 483
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 484
    throw v1
.end method

.method public setHttpProxy(Landroid/net/ProxyInfo;)V
    .locals 5
    .param p1, "proxyInfo"    # Landroid/net/ProxyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 411
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 413
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 414
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 415
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    invoke-virtual {p1, v0, v2}, Landroid/net/ProxyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 419
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    :goto_0
    iget-object v2, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 422
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 423
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->setHttpProxy(Landroid/net/ProxyInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 424
    return-void

    .line 428
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 429
    nop

    .line 430
    return-void

    .line 428
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 429
    throw v1
.end method

.method public setL2KeyAndGroupHint(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "l2Key"    # Ljava/lang/String;
    .param p2, "cluster"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 488
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 490
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 493
    iget-object v1, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 494
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 495
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/ip/IIpClient;->setL2KeyAndGroupHint(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 496
    return-void

    .line 500
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 501
    nop

    .line 502
    return-void

    .line 500
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 501
    throw v1
.end method

.method public setMulticastFilter(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 433
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 435
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 436
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    iget-object v2, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 438
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 439
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->setMulticastFilter(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 440
    return-void

    .line 444
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 445
    nop

    .line 446
    return-void

    .line 444
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 445
    throw v1
.end method

.method public setTcpBufferSizes(Ljava/lang/String;)V
    .locals 5
    .param p1, "tcpBufferSizes"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 395
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 397
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 399
    iget-object v1, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 400
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 401
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->setTcpBufferSizes(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 402
    return-void

    .line 406
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 407
    nop

    .line 408
    return-void

    .line 406
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 407
    throw v1
.end method

.method public shutdown()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 345
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 346
    iget-object v1, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 347
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 348
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/ip/IIpClient;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 349
    return-void

    .line 353
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 354
    nop

    .line 355
    return-void

    .line 353
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 354
    throw v1
.end method

.method public startProvisioning(Landroid/net/ProvisioningConfigurationParcelable;)V
    .locals 5
    .param p1, "req"    # Landroid/net/ProvisioningConfigurationParcelable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 358
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 360
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 361
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 362
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    invoke-virtual {p1, v0, v2}, Landroid/net/ProvisioningConfigurationParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 366
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    :goto_0
    iget-object v2, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 369
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 370
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->startProvisioning(Landroid/net/ProvisioningConfigurationParcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 371
    return-void

    .line 375
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 376
    nop

    .line 377
    return-void

    .line 375
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 376
    throw v1
.end method

.method public stop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 380
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 382
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 383
    iget-object v1, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 384
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 385
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/ip/IIpClient;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 386
    return-void

    .line 390
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 391
    nop

    .line 392
    return-void

    .line 390
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 391
    throw v1
.end method

.method public updateLayer2Information(Landroid/net/Layer2InformationParcelable;)V
    .locals 5
    .param p1, "info"    # Landroid/net/Layer2InformationParcelable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 544
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 546
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 547
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 548
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    invoke-virtual {p1, v0, v2}, Landroid/net/Layer2InformationParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 552
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    :goto_0
    iget-object v2, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 555
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 556
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->updateLayer2Information(Landroid/net/Layer2InformationParcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 557
    return-void

    .line 561
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 562
    nop

    .line 563
    return-void

    .line 561
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 562
    throw v1
.end method
