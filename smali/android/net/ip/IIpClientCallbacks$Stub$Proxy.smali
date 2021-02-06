.class Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIpClientCallbacks.java"

# interfaces
.implements Landroid/net/ip/IIpClientCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IIpClientCallbacks$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/ip/IIpClientCallbacks;


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mCachedVersion:I

    .line 264
    const-string v0, "-1"

    iput-object v0, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 261
    iput-object p1, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 262
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 267
    iget-object v0, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 271
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->access$000()Ljava/lang/String;

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

    .line 541
    :try_start_0
    const-string v0, "-1"

    iget-object v1, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 542
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 543
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 545
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_1
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 546
    iget-object v2, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 547
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 548
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 549
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/ip/IIpClientCallbacks;->getInterfaceHash()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 549
    monitor-exit p0

    return-object v3

    .line 552
    .end local p0    # "this":Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 553
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 555
    .end local v2    # "_status":Z
    :try_start_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 557
    goto :goto_0

    .line 555
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 557
    throw v2

    .line 559
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v0

    .line 540
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

    .line 519
    iget v0, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 521
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 523
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 524
    iget-object v2, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 525
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 526
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 527
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/ip/IIpClientCallbacks;->getInterfaceVersion()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 527
    return v3

    .line 530
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 531
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mCachedVersion:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 533
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 535
    goto :goto_0

    .line 533
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 535
    throw v2

    .line 537
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_1
    :goto_0
    iget v0, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public installPacketFilter([B)V
    .locals 5
    .param p1, "filter"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 440
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 442
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 444
    iget-object v1, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 445
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 446
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClientCallbacks;->installPacketFilter([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 447
    return-void

    .line 451
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 452
    nop

    .line 453
    return-void

    .line 451
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 452
    throw v1
.end method

.method public onIpClientCreated(Landroid/net/ip/IIpClient;)V
    .locals 4
    .param p1, "ipClient"    # Landroid/net/ip/IIpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 277
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 278
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/net/ip/IIpClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 279
    iget-object v2, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 280
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 281
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClientCallbacks;->onIpClientCreated(Landroid/net/ip/IIpClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 282
    return-void

    .line 286
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 287
    nop

    .line 288
    return-void

    .line 286
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 287
    throw v1
.end method

.method public onLinkPropertiesChange(Landroid/net/LinkProperties;)V
    .locals 5
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 387
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 389
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 390
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 391
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    invoke-virtual {p1, v0, v2}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 395
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    :goto_0
    iget-object v2, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 398
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 399
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClientCallbacks;->onLinkPropertiesChange(Landroid/net/LinkProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 400
    return-void

    .line 404
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 405
    nop

    .line 406
    return-void

    .line 404
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 405
    throw v1
.end method

.method public onNewDhcpResults(Landroid/net/DhcpResultsParcelable;)V
    .locals 5
    .param p1, "dhcpResults"    # Landroid/net/DhcpResultsParcelable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 321
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 323
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 324
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 325
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    invoke-virtual {p1, v0, v2}, Landroid/net/DhcpResultsParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    :goto_0
    iget-object v2, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 332
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 333
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClientCallbacks;->onNewDhcpResults(Landroid/net/DhcpResultsParcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 334
    return-void

    .line 338
    .end local v1    # "_status":Z
    :cond_1
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

.method public onPostDhcpAction()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 306
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 308
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 309
    iget-object v1, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 310
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 311
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/ip/IIpClientCallbacks;->onPostDhcpAction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 312
    return-void

    .line 316
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 317
    nop

    .line 318
    return-void

    .line 316
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 317
    throw v1
.end method

.method public onPreDhcpAction()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 293
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 295
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 296
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/ip/IIpClientCallbacks;->onPreDhcpAction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 297
    return-void

    .line 301
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 302
    nop

    .line 303
    return-void

    .line 301
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 302
    throw v1
.end method

.method public onPreconnectionStart(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Layer2PacketParcelable;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 503
    .local p1, "packets":Ljava/util/List;, "Ljava/util/List<Landroid/net/Layer2PacketParcelable;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 505
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 507
    iget-object v1, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 508
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 509
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClientCallbacks;->onPreconnectionStart(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 510
    return-void

    .line 514
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 515
    nop

    .line 516
    return-void

    .line 514
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 515
    throw v1
.end method

.method public onProvisioningFailure(Landroid/net/LinkProperties;)V
    .locals 5
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 365
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 367
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 368
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 369
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    invoke-virtual {p1, v0, v2}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 373
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    :goto_0
    iget-object v2, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 376
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 377
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClientCallbacks;->onProvisioningFailure(Landroid/net/LinkProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 378
    return-void

    .line 382
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 383
    nop

    .line 384
    return-void

    .line 382
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 383
    throw v1
.end method

.method public onProvisioningSuccess(Landroid/net/LinkProperties;)V
    .locals 5
    .param p1, "newLp"    # Landroid/net/LinkProperties;
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
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 346
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 347
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    invoke-virtual {p1, v0, v2}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    :goto_0
    iget-object v2, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 354
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 355
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClientCallbacks;->onProvisioningSuccess(Landroid/net/LinkProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 356
    return-void

    .line 360
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 361
    nop

    .line 362
    return-void

    .line 360
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 361
    throw v1
.end method

.method public onQuit()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 425
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 427
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 428
    iget-object v1, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 429
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 430
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/ip/IIpClientCallbacks;->onQuit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 431
    return-void

    .line 435
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 436
    nop

    .line 437
    return-void

    .line 435
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 436
    throw v1
.end method

.method public onReachabilityLost(Ljava/lang/String;)V
    .locals 5
    .param p1, "logMsg"    # Ljava/lang/String;
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
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 413
    iget-object v1, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 414
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 415
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClientCallbacks;->onReachabilityLost(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 416
    return-void

    .line 420
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 421
    nop

    .line 422
    return-void

    .line 420
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 421
    throw v1
.end method

.method public setFallbackMulticastFilter(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 471
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 473
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 474
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    iget-object v2, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 476
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 477
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClientCallbacks;->setFallbackMulticastFilter(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 478
    return-void

    .line 482
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 483
    nop

    .line 484
    return-void

    .line 482
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 483
    throw v1
.end method

.method public setNeighborDiscoveryOffload(Z)V
    .locals 5
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 487
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 489
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 490
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    iget-object v2, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 492
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 493
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClientCallbacks;->setNeighborDiscoveryOffload(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 494
    return-void

    .line 498
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 499
    nop

    .line 500
    return-void

    .line 498
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 499
    throw v1
.end method

.method public startReadPacketFilter()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 456
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 458
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 459
    iget-object v1, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 460
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 461
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/ip/IIpClientCallbacks;->startReadPacketFilter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 462
    return-void

    .line 466
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 467
    nop

    .line 468
    return-void

    .line 466
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 467
    throw v1
.end method
