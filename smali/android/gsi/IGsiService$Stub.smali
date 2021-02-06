.class public abstract Landroid/gsi/IGsiService$Stub;
.super Landroid/os/Binder;
.source "IGsiService.java"

# interfaces
.implements Landroid/gsi/IGsiService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gsi/IGsiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gsi/IGsiService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.gsi.IGsiService"

.field static final TRANSACTION_cancelGsiInstall:I = 0x8

.field static final TRANSACTION_closeInstall:I = 0x13

.field static final TRANSACTION_commitGsiChunkFromAshmem:I = 0x4

.field static final TRANSACTION_commitGsiChunkFromStream:I = 0x1

.field static final TRANSACTION_createPartition:I = 0x14

.field static final TRANSACTION_disableGsi:I = 0xc

.field static final TRANSACTION_dumpDeviceMapperDevices:I = 0x17

.field static final TRANSACTION_enableGsi:I = 0x5

.field static final TRANSACTION_enableGsiAsync:I = 0x6

.field static final TRANSACTION_getActiveDsuSlot:I = 0xf

.field static final TRANSACTION_getAvbPublicKey:I = 0x18

.field static final TRANSACTION_getInstallProgress:I = 0x2

.field static final TRANSACTION_getInstalledDsuSlots:I = 0x11

.field static final TRANSACTION_getInstalledGsiImageDir:I = 0x10

.field static final TRANSACTION_isGsiEnabled:I = 0x7

.field static final TRANSACTION_isGsiInstallInProgress:I = 0x9

.field static final TRANSACTION_isGsiInstalled:I = 0xd

.field static final TRANSACTION_isGsiRunning:I = 0xe

.field static final TRANSACTION_openImageService:I = 0x16

.field static final TRANSACTION_openInstall:I = 0x12

.field static final TRANSACTION_removeGsi:I = 0xa

.field static final TRANSACTION_removeGsiAsync:I = 0xb

.field static final TRANSACTION_setGsiAshmem:I = 0x3

.field static final TRANSACTION_zeroPartition:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 247
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 248
    const-string v0, "android.gsi.IGsiService"

    invoke-virtual {p0, p0, v0}, Landroid/gsi/IGsiService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/gsi/IGsiService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 256
    if-nez p0, :cond_0

    .line 257
    const/4 v0, 0x0

    return-object v0

    .line 259
    :cond_0
    const-string v0, "android.gsi.IGsiService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 260
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/gsi/IGsiService;

    if-eqz v1, :cond_1

    .line 261
    move-object v1, v0

    check-cast v1, Landroid/gsi/IGsiService;

    return-object v1

    .line 263
    :cond_1
    new-instance v1, Landroid/gsi/IGsiService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/gsi/IGsiService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/gsi/IGsiService;
    .locals 1

    .line 1225
    sget-object v0, Landroid/gsi/IGsiService$Stub$Proxy;->sDefaultImpl:Landroid/gsi/IGsiService;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/gsi/IGsiService;)Z
    .locals 2
    .param p0, "impl"    # Landroid/gsi/IGsiService;

    .line 1215
    sget-object v0, Landroid/gsi/IGsiService$Stub$Proxy;->sDefaultImpl:Landroid/gsi/IGsiService;

    if-nez v0, :cond_1

    .line 1218
    if-eqz p0, :cond_0

    .line 1219
    sput-object p0, Landroid/gsi/IGsiService$Stub$Proxy;->sDefaultImpl:Landroid/gsi/IGsiService;

    .line 1220
    const/4 v0, 0x1

    return v0

    .line 1222
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1216
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 267
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    const-string v0, "android.gsi.IGsiService"

    .line 272
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_7

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 528
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 511
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    new-instance v1, Landroid/gsi/AvbPublicKey;

    invoke-direct {v1}, Landroid/gsi/AvbPublicKey;-><init>()V

    .line 514
    .local v1, "_arg0":Landroid/gsi/AvbPublicKey;
    invoke-virtual {p0, v1}, Landroid/gsi/IGsiService$Stub;->getAvbPublicKey(Landroid/gsi/AvbPublicKey;)I

    move-result v3

    .line 515
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    nop

    .line 518
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    invoke-virtual {v1, p3, v2}, Landroid/gsi/AvbPublicKey;->writeToParcel(Landroid/os/Parcel;I)V

    .line 524
    return v2

    .line 503
    .end local v1    # "_arg0":Landroid/gsi/AvbPublicKey;
    .end local v3    # "_result":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->dumpDeviceMapperDevices()Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 507
    return v2

    .line 493
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 496
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/gsi/IGsiService$Stub;->openImageService(Ljava/lang/String;)Landroid/gsi/IImageService;

    move-result-object v3

    .line 497
    .local v3, "_result":Landroid/gsi/IImageService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/gsi/IImageService;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 499
    return v2

    .line 483
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/gsi/IImageService;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 486
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/gsi/IGsiService$Stub;->zeroPartition(Ljava/lang/String;)I

    move-result v3

    .line 487
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    return v2

    .line 469
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 473
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 475
    .local v4, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    move v1, v2

    .line 476
    .local v1, "_arg2":Z
    :cond_1
    invoke-virtual {p0, v3, v4, v5, v1}, Landroid/gsi/IGsiService$Stub;->createPartition(Ljava/lang/String;JZ)I

    move-result v6

    .line 477
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    return v2

    .line 461
    .end local v1    # "_arg2":Z
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":J
    .end local v6    # "_result":I
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->closeInstall()I

    move-result v1

    .line 463
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    return v2

    .line 451
    .end local v1    # "_result":I
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/gsi/IGsiService$Stub;->openInstall(Ljava/lang/String;)I

    move-result v3

    .line 455
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    return v2

    .line 443
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->getInstalledDsuSlots()Ljava/util/List;

    move-result-object v1

    .line 445
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 447
    return v2

    .line 435
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->getInstalledGsiImageDir()Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 439
    return v2

    .line 427
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->getActiveDsuSlot()Ljava/lang/String;

    move-result-object v1

    .line 429
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 431
    return v2

    .line 419
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->isGsiRunning()Z

    move-result v1

    .line 421
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    return v2

    .line 411
    .end local v1    # "_result":Z
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->isGsiInstalled()Z

    move-result v1

    .line 413
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    return v2

    .line 403
    .end local v1    # "_result":Z
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->disableGsi()Z

    move-result v1

    .line 405
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    return v2

    .line 395
    .end local v1    # "_result":Z
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/gsi/IGsiServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gsi/IGsiServiceCallback;

    move-result-object v1

    .line 398
    .local v1, "_arg0":Landroid/gsi/IGsiServiceCallback;
    invoke-virtual {p0, v1}, Landroid/gsi/IGsiService$Stub;->removeGsiAsync(Landroid/gsi/IGsiServiceCallback;)V

    .line 399
    return v2

    .line 387
    .end local v1    # "_arg0":Landroid/gsi/IGsiServiceCallback;
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->removeGsi()Z

    move-result v1

    .line 389
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    return v2

    .line 379
    .end local v1    # "_result":Z
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->isGsiInstallInProgress()Z

    move-result v1

    .line 381
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    return v2

    .line 371
    .end local v1    # "_result":Z
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->cancelGsiInstall()Z

    move-result v1

    .line 373
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    return v2

    .line 363
    .end local v1    # "_result":Z
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->isGsiEnabled()Z

    move-result v1

    .line 365
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    return v2

    .line 351
    .end local v1    # "_result":Z
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 355
    .local v1, "_arg0":Z
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 357
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/gsi/IGsiServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gsi/IGsiServiceCallback;

    move-result-object v4

    .line 358
    .local v4, "_arg2":Landroid/gsi/IGsiServiceCallback;
    invoke-virtual {p0, v1, v3, v4}, Landroid/gsi/IGsiService$Stub;->enableGsiAsync(ZLjava/lang/String;Landroid/gsi/IGsiServiceCallback;)V

    .line 359
    return v2

    .line 339
    .end local v1    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/gsi/IGsiServiceCallback;
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 343
    .restart local v1    # "_arg0":Z
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 344
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/gsi/IGsiService$Stub;->enableGsi(ZLjava/lang/String;)I

    move-result v4

    .line 345
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    return v2

    .line 329
    .end local v1    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 332
    .local v3, "_arg0":J
    invoke-virtual {p0, v3, v4}, Landroid/gsi/IGsiService$Stub;->commitGsiChunkFromAshmem(J)Z

    move-result v1

    .line 333
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    return v2

    .line 312
    .end local v1    # "_result":Z
    .end local v3    # "_arg0":J
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 315
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    .line 318
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_4
    const/4 v1, 0x0

    .line 321
    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 322
    .local v3, "_arg1":J
    invoke-virtual {p0, v1, v3, v4}, Landroid/gsi/IGsiService$Stub;->setGsiAshmem(Landroid/os/ParcelFileDescriptor;J)Z

    move-result v5

    .line 323
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    return v2

    .line 298
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg1":J
    .end local v5    # "_result":Z
    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->getInstallProgress()Landroid/gsi/GsiProgress;

    move-result-object v3

    .line 300
    .local v3, "_result":Landroid/gsi/GsiProgress;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    if-eqz v3, :cond_5

    .line 302
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    invoke-virtual {v3, p3, v2}, Landroid/gsi/GsiProgress;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 306
    :cond_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    :goto_2
    return v2

    .line 281
    .end local v3    # "_result":Landroid/gsi/GsiProgress;
    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 284
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_3

    .line 287
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_6
    const/4 v1, 0x0

    .line 290
    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 291
    .local v3, "_arg1":J
    invoke-virtual {p0, v1, v3, v4}, Landroid/gsi/IGsiService$Stub;->commitGsiChunkFromStream(Landroid/os/ParcelFileDescriptor;J)Z

    move-result v5

    .line 292
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    return v2

    .line 276
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg1":J
    .end local v5    # "_result":Z
    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
