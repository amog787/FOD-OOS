.class Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetworkMonitorCallbacks.java"

# interfaces
.implements Landroid/net/INetworkMonitorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkMonitorCallbacks$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/INetworkMonitorCallbacks;


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mCachedVersion:I

    .line 221
    const-string v0, "-1"

    iput-object v0, p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 218
    iput-object p1, p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 219
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 224
    iget-object v0, p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 228
    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->access$000()Ljava/lang/String;

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

    .line 424
    :try_start_0
    const-string v0, "-1"

    iget-object v1, p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 426
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 428
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_1
    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 429
    iget-object v2, p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 430
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 431
    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 432
    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetworkMonitorCallbacks;->getInterfaceHash()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 432
    monitor-exit p0

    return-object v3

    .line 435
    .end local p0    # "this":Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 436
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 438
    .end local v2    # "_status":Z
    :try_start_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 440
    goto :goto_0

    .line 438
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 440
    throw v2

    .line 442
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v0

    .line 423
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

    .line 402
    iget v0, p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 403
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 404
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 406
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 407
    iget-object v2, p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 408
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 409
    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 410
    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetworkMonitorCallbacks;->getInterfaceVersion()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 410
    return v3

    .line 413
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 414
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mCachedVersion:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 418
    goto :goto_0

    .line 416
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 418
    throw v2

    .line 420
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_1
    :goto_0
    iget v0, p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public hideProvisioningNotification()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 304
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 306
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 308
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 309
    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/INetworkMonitorCallbacks;->hideProvisioningNotification()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 310
    return-void

    .line 314
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 315
    nop

    .line 316
    return-void

    .line 314
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 315
    throw v1
.end method

.method public notifyCaptivePortalDataChanged(Landroid/net/CaptivePortalData;)V
    .locals 5
    .param p1, "data"    # Landroid/net/CaptivePortalData;
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
    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 383
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 384
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    invoke-virtual {p1, v0, v2}, Landroid/net/CaptivePortalData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    :goto_0
    iget-object v2, p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 391
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 392
    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitorCallbacks;->notifyCaptivePortalDataChanged(Landroid/net/CaptivePortalData;)V
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

.method public notifyDataStallSuspected(Landroid/net/DataStallReportParcelable;)V
    .locals 5
    .param p1, "report"    # Landroid/net/DataStallReportParcelable;
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
    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 361
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 362
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    invoke-virtual {p1, v0, v2}, Landroid/net/DataStallReportParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 366
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    :goto_0
    iget-object v2, p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 369
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 370
    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitorCallbacks;->notifyDataStallSuspected(Landroid/net/DataStallReportParcelable;)V
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

.method public notifyNetworkTested(ILjava/lang/String;)V
    .locals 5
    .param p1, "testResult"    # I
    .param p2, "redirectUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 248
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 250
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 254
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 255
    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetworkMonitorCallbacks;->notifyNetworkTested(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 256
    return-void

    .line 260
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 261
    nop

    .line 262
    return-void

    .line 260
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 261
    throw v1
.end method

.method public notifyNetworkTestedWithExtras(Landroid/net/NetworkTestResultParcelable;)V
    .locals 5
    .param p1, "result"    # Landroid/net/NetworkTestResultParcelable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 336
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 338
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 339
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 340
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    invoke-virtual {p1, v0, v2}, Landroid/net/NetworkTestResultParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 344
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    :goto_0
    iget-object v2, p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 347
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 348
    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitorCallbacks;->notifyNetworkTestedWithExtras(Landroid/net/NetworkTestResultParcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 349
    return-void

    .line 353
    .end local v1    # "_status":Z
    :cond_1
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

.method public notifyPrivateDnsConfigResolved(Landroid/net/PrivateDnsConfigParcel;)V
    .locals 5
    .param p1, "config"    # Landroid/net/PrivateDnsConfigParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 265
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 267
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 268
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 269
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    invoke-virtual {p1, v0, v2}, Landroid/net/PrivateDnsConfigParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 273
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    :goto_0
    iget-object v2, p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 276
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 277
    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitorCallbacks;->notifyPrivateDnsConfigResolved(Landroid/net/PrivateDnsConfigParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 278
    return-void

    .line 282
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 283
    nop

    .line 284
    return-void

    .line 282
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 283
    throw v1
.end method

.method public notifyProbeStatusChanged(II)V
    .locals 5
    .param p1, "probesCompleted"    # I
    .param p2, "probesSucceeded"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 321
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget-object v1, p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 325
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 326
    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetworkMonitorCallbacks;->notifyProbeStatusChanged(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 327
    return-void

    .line 331
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 332
    nop

    .line 333
    return-void

    .line 331
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 332
    throw v1
.end method

.method public onNetworkMonitorCreated(Landroid/net/INetworkMonitor;)V
    .locals 4
    .param p1, "networkMonitor"    # Landroid/net/INetworkMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 234
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 235
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/net/INetworkMonitor;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 236
    iget-object v2, p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 237
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 238
    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitorCallbacks;->onNetworkMonitorCreated(Landroid/net/INetworkMonitor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 239
    return-void

    .line 243
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 244
    nop

    .line 245
    return-void

    .line 243
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 244
    throw v1
.end method

.method public showProvisioningNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 287
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 289
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 293
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 294
    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetworkMonitorCallbacks;->showProvisioningNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 295
    return-void

    .line 299
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 300
    nop

    .line 301
    return-void

    .line 299
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 300
    throw v1
.end method
