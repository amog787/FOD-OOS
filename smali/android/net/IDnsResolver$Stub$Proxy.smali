.class Landroid/net/IDnsResolver$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDnsResolver.java"

# interfaces
.implements Landroid/net/IDnsResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IDnsResolver$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/IDnsResolver;


# instance fields
.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mCachedVersion:I

    .line 275
    iput-object p1, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 276
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 280
    iget-object v0, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public createNetworkCache(I)V
    .locals 5
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 472
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 473
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 475
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.IDnsResolver"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    iget-object v2, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 478
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 479
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/IDnsResolver;->createNetworkCache(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 480
    return-void

    .line 482
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 485
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 487
    nop

    .line 488
    return-void

    .line 485
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public destroyNetworkCache(I)V
    .locals 5
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 492
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 494
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.IDnsResolver"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    iget-object v2, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 497
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 498
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/IDnsResolver;->destroyNetworkCache(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 505
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 499
    return-void

    .line 501
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 504
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 505
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 506
    nop

    .line 507
    return-void

    .line 504
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 505
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 284
    const-string v0, "android.net.IDnsResolver"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 548
    iget v0, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 549
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 550
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 552
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.IDnsResolver"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 553
    iget-object v2, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 554
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 555
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mCachedVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 559
    goto :goto_0

    .line 557
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 561
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget v0, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public getPrefix64(I)Ljava/lang/String;
    .locals 5
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 451
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 452
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 455
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.IDnsResolver"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    iget-object v2, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 458
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 459
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/IDnsResolver;->getPrefix64(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 459
    return-object v3

    .line 461
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 462
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 465
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 467
    nop

    .line 468
    return-object v2

    .line 465
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getResolverInfo(I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[I[I)V
    .locals 17
    .param p1, "netId"    # I
    .param p2, "servers"    # [Ljava/lang/String;
    .param p3, "domains"    # [Ljava/lang/String;
    .param p4, "tlsServers"    # [Ljava/lang/String;
    .param p5, "params"    # [I
    .param p6, "stats"    # [I
    .param p7, "wait_for_pending_req_timeout_count"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 352
    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v15

    .line 353
    .local v15, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    .line 355
    .local v8, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "android.net.IDnsResolver"

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 356
    move/from16 v7, p1

    invoke-virtual {v15, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 357
    const/4 v0, -0x1

    if-nez v9, :cond_0

    .line 358
    :try_start_1
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 407
    :catchall_0
    move-exception v0

    move-object v1, v8

    goto/16 :goto_6

    .line 361
    :cond_0
    :try_start_2
    array-length v1, v9

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 363
    :goto_0
    if-nez v10, :cond_1

    .line 364
    :try_start_3
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 367
    :cond_1
    :try_start_4
    array-length v1, v10

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 369
    :goto_1
    if-nez v11, :cond_2

    .line 370
    :try_start_5
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 373
    :cond_2
    :try_start_6
    array-length v1, v11

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 375
    :goto_2
    if-nez v12, :cond_3

    .line 376
    :try_start_7
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 379
    :cond_3
    :try_start_8
    array-length v1, v12

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 381
    :goto_3
    if-nez v13, :cond_4

    .line 382
    :try_start_9
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    .line 385
    :cond_4
    :try_start_a
    array-length v1, v13

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 387
    :goto_4
    if-nez v14, :cond_5

    .line 388
    :try_start_b
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_5

    .line 391
    :cond_5
    :try_start_c
    array-length v0, v14

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    :goto_5
    move-object/from16 v6, p0

    iget-object v0, v6, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {v0, v1, v15, v8, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 394
    .local v0, "_status":Z
    if-nez v0, :cond_6

    :try_start_d
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 395
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v16, v8

    .end local v8    # "_reply":Landroid/os/Parcel;
    .local v16, "_reply":Landroid/os/Parcel;
    move-object/from16 v8, p7

    :try_start_e
    invoke-interface/range {v1 .. v8}, Landroid/net/IDnsResolver;->getResolverInfo(I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[I[I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 407
    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->recycle()V

    .line 408
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    .line 396
    return-void

    .line 407
    .end local v0    # "_status":Z
    :catchall_1
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_6

    .end local v16    # "_reply":Landroid/os/Parcel;
    .restart local v8    # "_reply":Landroid/os/Parcel;
    :catchall_2
    move-exception v0

    move-object v1, v8

    .end local v8    # "_reply":Landroid/os/Parcel;
    .restart local v16    # "_reply":Landroid/os/Parcel;
    goto :goto_6

    .line 394
    .end local v16    # "_reply":Landroid/os/Parcel;
    .restart local v0    # "_status":Z
    .restart local v8    # "_reply":Landroid/os/Parcel;
    :cond_6
    move-object/from16 v16, v8

    .line 398
    .end local v8    # "_reply":Landroid/os/Parcel;
    .restart local v16    # "_reply":Landroid/os/Parcel;
    :try_start_f
    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->readException()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 399
    move-object/from16 v1, v16

    .end local v16    # "_reply":Landroid/os/Parcel;
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_10
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 400
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 401
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 402
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->readIntArray([I)V

    .line 403
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->readIntArray([I)V

    .line 404
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 407
    .end local v0    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 408
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    .line 409
    nop

    .line 410
    return-void

    .line 407
    :catchall_3
    move-exception v0

    goto :goto_6

    .end local v1    # "_reply":Landroid/os/Parcel;
    .restart local v16    # "_reply":Landroid/os/Parcel;
    :catchall_4
    move-exception v0

    move-object/from16 v1, v16

    .end local v16    # "_reply":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    goto :goto_6

    .end local v1    # "_reply":Landroid/os/Parcel;
    .restart local v8    # "_reply":Landroid/os/Parcel;
    :catchall_5
    move-exception v0

    move-object v1, v8

    .end local v8    # "_reply":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    :goto_6
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 408
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isAlive()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 289
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 292
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.IDnsResolver"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 293
    iget-object v2, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 294
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 295
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/IDnsResolver;->isAlive()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 302
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 295
    return v3

    .line 297
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 298
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_1

    move v3, v4

    :cond_1
    move v2, v3

    .line 301
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 302
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 303
    nop

    .line 304
    return v2

    .line 301
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 302
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public registerEventListener(Landroid/net/metrics/INetdEventListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/net/metrics/INetdEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 309
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 311
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.IDnsResolver"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 312
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/net/metrics/INetdEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 313
    iget-object v2, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 314
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 315
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/IDnsResolver;->registerEventListener(Landroid/net/metrics/INetdEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 316
    return-void

    .line 318
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 323
    nop

    .line 324
    return-void

    .line 321
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public resolveFlushCacheForNet(I)V
    .locals 5
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 529
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 530
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 532
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.IDnsResolver"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    iget-object v2, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 535
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 536
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/IDnsResolver;->resolveFlushCacheForNet(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 537
    return-void

    .line 539
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 542
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 544
    nop

    .line 545
    return-void

    .line 542
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setLogSeverity(I)V
    .locals 5
    .param p1, "logSeverity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 510
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 511
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 513
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.IDnsResolver"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    iget-object v2, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 516
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 517
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/IDnsResolver;->setLogSeverity(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 518
    return-void

    .line 520
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 525
    nop

    .line 526
    return-void

    .line 523
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setResolverConfiguration(Landroid/net/ResolverParamsParcel;)V
    .locals 5
    .param p1, "resolverParams"    # Landroid/net/ResolverParamsParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 327
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 328
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 330
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.IDnsResolver"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 331
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 332
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    invoke-virtual {p1, v0, v2}, Landroid/net/ResolverParamsParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    :goto_0
    iget-object v3, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 339
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 340
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/IDnsResolver;->setResolverConfiguration(Landroid/net/ResolverParamsParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 341
    return-void

    .line 343
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 348
    nop

    .line 349
    return-void

    .line 346
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public startPrefix64Discovery(I)V
    .locals 5
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 413
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 414
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 416
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.IDnsResolver"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    iget-object v2, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 419
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 420
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/IDnsResolver;->startPrefix64Discovery(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 421
    return-void

    .line 423
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 428
    nop

    .line 429
    return-void

    .line 426
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public stopPrefix64Discovery(I)V
    .locals 5
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 432
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 433
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 435
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.IDnsResolver"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    iget-object v2, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 438
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 439
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/IDnsResolver;->stopPrefix64Discovery(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 446
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 440
    return-void

    .line 442
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 446
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 447
    nop

    .line 448
    return-void

    .line 445
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 446
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
