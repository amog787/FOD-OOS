.class Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetdUnsolicitedEventListener.java"

# interfaces
.implements Landroid/net/INetdUnsolicitedEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetdUnsolicitedEventListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/INetdUnsolicitedEventListener;


# instance fields
.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mCachedVersion:I

    .line 239
    iput-object p1, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 240
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 244
    iget-object v0, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 248
    const-string v0, "android.net.INetdUnsolicitedEventListener"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 446
    iget v0, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 447
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 448
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 450
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetdUnsolicitedEventListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 451
    iget-object v2, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 452
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 453
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mCachedVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 457
    goto :goto_0

    .line 455
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 459
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget v0, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public onInterfaceAdded(Ljava/lang/String;)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 344
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 346
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.INetdUnsolicitedEventListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 349
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/INetdUnsolicitedEventListener$Stub;->getDefaultImpl()Landroid/net/INetdUnsolicitedEventListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 350
    invoke-static {}, Landroid/net/INetdUnsolicitedEventListener$Stub;->getDefaultImpl()Landroid/net/INetdUnsolicitedEventListener;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetdUnsolicitedEventListener;->onInterfaceAdded(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 351
    return-void

    .line 355
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 356
    nop

    .line 357
    return-void

    .line 355
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onInterfaceAddressRemoved(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 5
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "scope"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 327
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.INetdUnsolicitedEventListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget-object v1, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 333
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/INetdUnsolicitedEventListener$Stub;->getDefaultImpl()Landroid/net/INetdUnsolicitedEventListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 334
    invoke-static {}, Landroid/net/INetdUnsolicitedEventListener$Stub;->getDefaultImpl()Landroid/net/INetdUnsolicitedEventListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/net/INetdUnsolicitedEventListener;->onInterfaceAddressRemoved(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 335
    return-void

    .line 339
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 340
    nop

    .line 341
    return-void

    .line 339
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onInterfaceAddressUpdated(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 5
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "scope"    # I
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
    const-string v1, "android.net.INetdUnsolicitedEventListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    iget-object v1, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 314
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/INetdUnsolicitedEventListener$Stub;->getDefaultImpl()Landroid/net/INetdUnsolicitedEventListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 315
    invoke-static {}, Landroid/net/INetdUnsolicitedEventListener$Stub;->getDefaultImpl()Landroid/net/INetdUnsolicitedEventListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/net/INetdUnsolicitedEventListener;->onInterfaceAddressUpdated(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 316
    return-void

    .line 320
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 321
    nop

    .line 322
    return-void

    .line 320
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onInterfaceChanged(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "up"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 378
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.INetdUnsolicitedEventListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 380
    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    iget-object v2, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 382
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/INetdUnsolicitedEventListener$Stub;->getDefaultImpl()Landroid/net/INetdUnsolicitedEventListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 383
    invoke-static {}, Landroid/net/INetdUnsolicitedEventListener$Stub;->getDefaultImpl()Landroid/net/INetdUnsolicitedEventListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetdUnsolicitedEventListener;->onInterfaceChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 384
    return-void

    .line 388
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 389
    nop

    .line 390
    return-void

    .line 388
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onInterfaceClassActivityChanged(ZIJI)V
    .locals 9
    .param p1, "isActive"    # Z
    .param p2, "timerLabel"    # I
    .param p3, "timestampNs"    # J
    .param p5, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 254
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.INetdUnsolicitedEventListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 255
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 258
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget-object v2, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 260
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/INetdUnsolicitedEventListener$Stub;->getDefaultImpl()Landroid/net/INetdUnsolicitedEventListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 261
    invoke-static {}, Landroid/net/INetdUnsolicitedEventListener$Stub;->getDefaultImpl()Landroid/net/INetdUnsolicitedEventListener;

    move-result-object v3

    move v4, p1

    move v5, p2

    move-wide v6, p3

    move v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/net/INetdUnsolicitedEventListener;->onInterfaceClassActivityChanged(ZIJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 262
    return-void

    .line 266
    .end local v1    # "_status":Z
    :cond_1
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

.method public onInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "lifetimeS"    # J
    .param p4, "servers"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 290
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.INetdUnsolicitedEventListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 293
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 295
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/INetdUnsolicitedEventListener$Stub;->getDefaultImpl()Landroid/net/INetdUnsolicitedEventListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 296
    invoke-static {}, Landroid/net/INetdUnsolicitedEventListener$Stub;->getDefaultImpl()Landroid/net/INetdUnsolicitedEventListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/net/INetdUnsolicitedEventListener;->onInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
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

    throw v1
.end method

.method public onInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "up"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 393
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 395
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.INetdUnsolicitedEventListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 397
    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    iget-object v2, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 399
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/INetdUnsolicitedEventListener$Stub;->getDefaultImpl()Landroid/net/INetdUnsolicitedEventListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 400
    invoke-static {}, Landroid/net/INetdUnsolicitedEventListener$Stub;->getDefaultImpl()Landroid/net/INetdUnsolicitedEventListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetdUnsolicitedEventListener;->onInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 401
    return-void

    .line 405
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 406
    nop

    .line 407
    return-void

    .line 405
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onInterfaceRemoved(Ljava/lang/String;)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 360
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 362
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.INetdUnsolicitedEventListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 364
    iget-object v1, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 365
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/INetdUnsolicitedEventListener$Stub;->getDefaultImpl()Landroid/net/INetdUnsolicitedEventListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 366
    invoke-static {}, Landroid/net/INetdUnsolicitedEventListener$Stub;->getDefaultImpl()Landroid/net/INetdUnsolicitedEventListener;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetdUnsolicitedEventListener;->onInterfaceRemoved(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 367
    return-void

    .line 371
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 372
    nop

    .line 373
    return-void

    .line 371
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onQuotaLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "alertName"    # Ljava/lang/String;
    .param p2, "ifName"    # Ljava/lang/String;
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
    const-string v1, "android.net.INetdUnsolicitedEventListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    iget-object v1, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 277
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/INetdUnsolicitedEventListener$Stub;->getDefaultImpl()Landroid/net/INetdUnsolicitedEventListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 278
    invoke-static {}, Landroid/net/INetdUnsolicitedEventListener$Stub;->getDefaultImpl()Landroid/net/INetdUnsolicitedEventListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetdUnsolicitedEventListener;->onQuotaLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 279
    return-void

    .line 283
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 284
    nop

    .line 285
    return-void

    .line 283
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onRouteChanged(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "updated"    # Z
    .param p2, "route"    # Ljava/lang/String;
    .param p3, "gateway"    # Ljava/lang/String;
    .param p4, "ifName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 410
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 412
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.INetdUnsolicitedEventListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 413
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 417
    iget-object v2, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 418
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/INetdUnsolicitedEventListener$Stub;->getDefaultImpl()Landroid/net/INetdUnsolicitedEventListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 419
    invoke-static {}, Landroid/net/INetdUnsolicitedEventListener$Stub;->getDefaultImpl()Landroid/net/INetdUnsolicitedEventListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/net/INetdUnsolicitedEventListener;->onRouteChanged(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 420
    return-void

    .line 424
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 425
    nop

    .line 426
    return-void

    .line 424
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onStrictCleartextDetected(ILjava/lang/String;)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "hex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 429
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 431
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.INetdUnsolicitedEventListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 435
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/INetdUnsolicitedEventListener$Stub;->getDefaultImpl()Landroid/net/INetdUnsolicitedEventListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 436
    invoke-static {}, Landroid/net/INetdUnsolicitedEventListener$Stub;->getDefaultImpl()Landroid/net/INetdUnsolicitedEventListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetdUnsolicitedEventListener;->onStrictCleartextDetected(ILjava/lang/String;)V
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
