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
.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mCachedVersion:I

    .line 243
    iput-object p1, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 244
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

    .line 408
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 410
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.ip.IIpClient"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 413
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    invoke-virtual {p2, v0, v2}, Landroid/net/TcpKeepalivePacketDataParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 417
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    :goto_0
    iget-object v2, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 420
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 421
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/ip/IIpClient;->addKeepalivePacketFilter(ILandroid/net/TcpKeepalivePacketDataParcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 422
    return-void

    .line 426
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 427
    nop

    .line 428
    return-void

    .line 426
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

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

    .line 464
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 466
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.ip.IIpClient"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 469
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 470
    invoke-virtual {p2, v0, v2}, Landroid/net/NattKeepalivePacketDataParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 473
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    :goto_0
    iget-object v2, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 476
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 477
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/ip/IIpClient;->addNattKeepalivePacketFilter(ILandroid/net/NattKeepalivePacketDataParcelable;)V
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

    throw v1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 248
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

    .line 256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 258
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.ip.IIpClient"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 260
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 261
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/ip/IIpClient;->completedPreDhcpAction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 262
    return-void

    .line 266
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 267
    nop

    .line 268
    return-void

    .line 266
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public confirmConfiguration()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 273
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.ip.IIpClient"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 275
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 276
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/ip/IIpClient;->confirmConfiguration()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 277
    return-void

    .line 281
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 282
    nop

    .line 283
    return-void

    .line 281
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 252
    const-string v0, "android.net.ip.IIpClient"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 487
    iget v0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 488
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 489
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 491
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.ip.IIpClient"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 492
    iget-object v2, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 493
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 494
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mCachedVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 497
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 498
    goto :goto_0

    .line 496
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 497
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 500
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget v0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public readPacketFilterComplete([B)V
    .locals 5
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 288
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.ip.IIpClient"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 290
    iget-object v1, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 291
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 292
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->readPacketFilterComplete([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 293
    return-void

    .line 297
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 298
    nop

    .line 299
    return-void

    .line 297
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

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

    .line 431
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 433
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.ip.IIpClient"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    iget-object v1, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 436
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 437
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->removeKeepalivePacketFilter(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 438
    return-void

    .line 442
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 443
    nop

    .line 444
    return-void

    .line 442
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

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

    .line 370
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 372
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.ip.IIpClient"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 373
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 374
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    invoke-virtual {p1, v0, v2}, Landroid/net/ProxyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 378
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    :goto_0
    iget-object v2, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 381
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 382
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->setHttpProxy(Landroid/net/ProxyInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 383
    return-void

    .line 387
    .end local v1    # "_status":Z
    :cond_1
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

.method public setL2KeyAndGroupHint(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "l2Key"    # Ljava/lang/String;
    .param p2, "groupHint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 447
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 449
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.ip.IIpClient"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 452
    iget-object v1, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 453
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 454
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/ip/IIpClient;->setL2KeyAndGroupHint(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 455
    return-void

    .line 459
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 460
    nop

    .line 461
    return-void

    .line 459
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

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

    .line 392
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 394
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.ip.IIpClient"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 395
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    iget-object v2, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 397
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 398
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->setMulticastFilter(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 399
    return-void

    .line 403
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 404
    nop

    .line 405
    return-void

    .line 403
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

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

    .line 354
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 356
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.ip.IIpClient"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 359
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 360
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->setTcpBufferSizes(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 361
    return-void

    .line 365
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 366
    nop

    .line 367
    return-void

    .line 365
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public shutdown()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 302
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 304
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.ip.IIpClient"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 306
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 307
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/ip/IIpClient;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 308
    return-void

    .line 312
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 313
    nop

    .line 314
    return-void

    .line 312
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

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

    .line 317
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 319
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.ip.IIpClient"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 320
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 321
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    invoke-virtual {p1, v0, v2}, Landroid/net/ProvisioningConfigurationParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    :goto_0
    iget-object v2, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 328
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 329
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->startProvisioning(Landroid/net/ProvisioningConfigurationParcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 330
    return-void

    .line 334
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 335
    nop

    .line 336
    return-void

    .line 334
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public stop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 341
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.ip.IIpClient"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 342
    iget-object v1, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 343
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 344
    invoke-static {}, Landroid/net/ip/IIpClient$Stub;->getDefaultImpl()Landroid/net/ip/IIpClient;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/ip/IIpClient;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 345
    return-void

    .line 349
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 350
    nop

    .line 351
    return-void

    .line 349
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
