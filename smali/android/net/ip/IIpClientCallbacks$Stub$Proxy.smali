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
.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mCachedVersion:I

    .line 237
    iput-object p1, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 238
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 242
    iget-object v0, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 246
    const-string v0, "android.net.ip.IIpClientCallbacks"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 478
    iget v0, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 479
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 480
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 482
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.ip.IIpClientCallbacks"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 483
    iget-object v2, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 484
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 485
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mCachedVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 489
    goto :goto_0

    .line 487
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 491
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
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

    .line 415
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 417
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.ip.IIpClientCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 419
    iget-object v1, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 420
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 421
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClientCallbacks;->installPacketFilter([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 422
    return-void

    .line 426
    .end local v1    # "_status":Z
    :cond_0
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

.method public onIpClientCreated(Landroid/net/ip/IIpClient;)V
    .locals 4
    .param p1, "ipClient"    # Landroid/net/ip/IIpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 252
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.ip.IIpClientCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 253
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/net/ip/IIpClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 254
    iget-object v2, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 255
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 256
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClientCallbacks;->onIpClientCreated(Landroid/net/ip/IIpClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 257
    return-void

    .line 261
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 262
    nop

    .line 263
    return-void

    .line 261
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

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

    .line 362
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 364
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.ip.IIpClientCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 365
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 366
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    invoke-virtual {p1, v0, v2}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 370
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    :goto_0
    iget-object v2, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 373
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 374
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClientCallbacks;->onLinkPropertiesChange(Landroid/net/LinkProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 375
    return-void

    .line 379
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 380
    nop

    .line 381
    return-void

    .line 379
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

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

    .line 296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 298
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.ip.IIpClientCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 299
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 300
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    invoke-virtual {p1, v0, v2}, Landroid/net/DhcpResultsParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    :goto_0
    iget-object v2, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 307
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 308
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClientCallbacks;->onNewDhcpResults(Landroid/net/DhcpResultsParcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 309
    return-void

    .line 313
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 314
    nop

    .line 315
    return-void

    .line 313
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onPostDhcpAction()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 283
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.ip.IIpClientCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 285
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 286
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/ip/IIpClientCallbacks;->onPostDhcpAction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 287
    return-void

    .line 291
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 292
    nop

    .line 293
    return-void

    .line 291
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onPreDhcpAction()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 266
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 268
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.ip.IIpClientCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 270
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 271
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/ip/IIpClientCallbacks;->onPreDhcpAction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 272
    return-void

    .line 276
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 277
    nop

    .line 278
    return-void

    .line 276
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

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

    .line 340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 342
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.ip.IIpClientCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 343
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 344
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    invoke-virtual {p1, v0, v2}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 348
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    :goto_0
    iget-object v2, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 351
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 352
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClientCallbacks;->onProvisioningFailure(Landroid/net/LinkProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 353
    return-void

    .line 357
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 358
    nop

    .line 359
    return-void

    .line 357
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

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

    .line 318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 320
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.ip.IIpClientCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 321
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 322
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    invoke-virtual {p1, v0, v2}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 326
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    :goto_0
    iget-object v2, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 329
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 330
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClientCallbacks;->onProvisioningSuccess(Landroid/net/LinkProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 331
    return-void

    .line 335
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 336
    nop

    .line 337
    return-void

    .line 335
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onQuit()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 400
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 402
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.ip.IIpClientCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 403
    iget-object v1, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 404
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 405
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/ip/IIpClientCallbacks;->onQuit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 406
    return-void

    .line 410
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 411
    nop

    .line 412
    return-void

    .line 410
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

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

    .line 384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 386
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.ip.IIpClientCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 388
    iget-object v1, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 389
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 390
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClientCallbacks;->onReachabilityLost(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 391
    return-void

    .line 395
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 396
    nop

    .line 397
    return-void

    .line 395
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

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

    .line 446
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 448
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.ip.IIpClientCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 449
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    iget-object v2, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 451
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 452
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClientCallbacks;->setFallbackMulticastFilter(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 453
    return-void

    .line 457
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 458
    nop

    .line 459
    return-void

    .line 457
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

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

    .line 462
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 464
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.ip.IIpClientCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 465
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 466
    iget-object v2, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 467
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 468
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClientCallbacks;->setNeighborDiscoveryOffload(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 469
    return-void

    .line 473
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 474
    nop

    .line 475
    return-void

    .line 473
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public startReadPacketFilter()V
    .locals 5
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
    const-string v1, "android.net.ip.IIpClientCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 435
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 436
    invoke-static {}, Landroid/net/ip/IIpClientCallbacks$Stub;->getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/ip/IIpClientCallbacks;->startReadPacketFilter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 437
    return-void

    .line 441
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 442
    nop

    .line 443
    return-void

    .line 441
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
