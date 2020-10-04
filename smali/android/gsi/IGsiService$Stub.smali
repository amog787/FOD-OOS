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

.field static final TRANSACTION_beginGsiInstall:I = 0x10

.field static final TRANSACTION_cancelGsiInstall:I = 0x7

.field static final TRANSACTION_commitGsiChunkFromMemory:I = 0x4

.field static final TRANSACTION_commitGsiChunkFromStream:I = 0x2

.field static final TRANSACTION_disableGsiInstall:I = 0xa

.field static final TRANSACTION_getGsiBootStatus:I = 0xe

.field static final TRANSACTION_getInstallProgress:I = 0x3

.field static final TRANSACTION_getInstalledGsiImageDir:I = 0xf

.field static final TRANSACTION_getUserdataImageSize:I = 0xb

.field static final TRANSACTION_isGsiEnabled:I = 0x6

.field static final TRANSACTION_isGsiInstallInProgress:I = 0x8

.field static final TRANSACTION_isGsiInstalled:I = 0xd

.field static final TRANSACTION_isGsiRunning:I = 0xc

.field static final TRANSACTION_removeGsiInstall:I = 0x9

.field static final TRANSACTION_setGsiBootable:I = 0x5

.field static final TRANSACTION_startGsiInstall:I = 0x1

.field static final TRANSACTION_wipeGsiUserdata:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 188
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 189
    const-string v0, "android.gsi.IGsiService"

    invoke-virtual {p0, p0, v0}, Landroid/gsi/IGsiService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/gsi/IGsiService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 197
    if-nez p0, :cond_0

    .line 198
    const/4 v0, 0x0

    return-object v0

    .line 200
    :cond_0
    const-string v0, "android.gsi.IGsiService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 201
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/gsi/IGsiService;

    if-eqz v1, :cond_1

    .line 202
    move-object v1, v0

    check-cast v1, Landroid/gsi/IGsiService;

    return-object v1

    .line 204
    :cond_1
    new-instance v1, Landroid/gsi/IGsiService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/gsi/IGsiService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/gsi/IGsiService;
    .locals 1

    .line 899
    sget-object v0, Landroid/gsi/IGsiService$Stub$Proxy;->sDefaultImpl:Landroid/gsi/IGsiService;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/gsi/IGsiService;)Z
    .locals 1
    .param p0, "impl"    # Landroid/gsi/IGsiService;

    .line 892
    sget-object v0, Landroid/gsi/IGsiService$Stub$Proxy;->sDefaultImpl:Landroid/gsi/IGsiService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 893
    sput-object p0, Landroid/gsi/IGsiService$Stub$Proxy;->sDefaultImpl:Landroid/gsi/IGsiService;

    .line 894
    const/4 v0, 0x1

    return v0

    .line 896
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 208
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.gsi.IGsiService"

    .line 213
    .local v10, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v7, v0, :cond_5

    const/4 v0, 0x0

    packed-switch v7, :pswitch_data_0

    .line 390
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 382
    :pswitch_0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual/range {p0 .. p0}, Landroid/gsi/IGsiService$Stub;->wipeGsiUserdata()I

    move-result v0

    .line 384
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    return v11

    .line 367
    .end local v0    # "_result":I
    :pswitch_1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    sget-object v0, Landroid/gsi/GsiInstallParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gsi/GsiInstallParams;

    .local v0, "_arg0":Landroid/gsi/GsiInstallParams;
    goto :goto_0

    .line 373
    .end local v0    # "_arg0":Landroid/gsi/GsiInstallParams;
    :cond_0
    const/4 v0, 0x0

    .line 375
    .restart local v0    # "_arg0":Landroid/gsi/GsiInstallParams;
    :goto_0
    invoke-virtual {v6, v0}, Landroid/gsi/IGsiService$Stub;->beginGsiInstall(Landroid/gsi/GsiInstallParams;)I

    move-result v1

    .line 376
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    return v11

    .line 359
    .end local v0    # "_arg0":Landroid/gsi/GsiInstallParams;
    .end local v1    # "_result":I
    :pswitch_2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual/range {p0 .. p0}, Landroid/gsi/IGsiService$Stub;->getInstalledGsiImageDir()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 363
    return v11

    .line 351
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p0 .. p0}, Landroid/gsi/IGsiService$Stub;->getGsiBootStatus()I

    move-result v0

    .line 353
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    return v11

    .line 343
    .end local v0    # "_result":I
    :pswitch_4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual/range {p0 .. p0}, Landroid/gsi/IGsiService$Stub;->isGsiInstalled()Z

    move-result v0

    .line 345
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    return v11

    .line 335
    .end local v0    # "_result":Z
    :pswitch_5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p0 .. p0}, Landroid/gsi/IGsiService$Stub;->isGsiRunning()Z

    move-result v0

    .line 337
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    return v11

    .line 327
    .end local v0    # "_result":Z
    :pswitch_6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {p0 .. p0}, Landroid/gsi/IGsiService$Stub;->getUserdataImageSize()J

    move-result-wide v0

    .line 329
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 331
    return v11

    .line 319
    .end local v0    # "_result":J
    :pswitch_7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p0 .. p0}, Landroid/gsi/IGsiService$Stub;->disableGsiInstall()Z

    move-result v0

    .line 321
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    return v11

    .line 311
    .end local v0    # "_result":Z
    :pswitch_8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p0 .. p0}, Landroid/gsi/IGsiService$Stub;->removeGsiInstall()Z

    move-result v0

    .line 313
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    return v11

    .line 303
    .end local v0    # "_result":Z
    :pswitch_9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual/range {p0 .. p0}, Landroid/gsi/IGsiService$Stub;->isGsiInstallInProgress()Z

    move-result v0

    .line 305
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    return v11

    .line 295
    .end local v0    # "_result":Z
    :pswitch_a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p0 .. p0}, Landroid/gsi/IGsiService$Stub;->cancelGsiInstall()Z

    move-result v0

    .line 297
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    return v11

    .line 287
    .end local v0    # "_result":Z
    :pswitch_b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p0 .. p0}, Landroid/gsi/IGsiService$Stub;->isGsiEnabled()Z

    move-result v0

    .line 289
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    return v11

    .line 277
    .end local v0    # "_result":Z
    :pswitch_c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v0, v11

    .line 280
    .local v0, "_arg0":Z
    :cond_1
    invoke-virtual {v6, v0}, Landroid/gsi/IGsiService$Stub;->setGsiBootable(Z)I

    move-result v1

    .line 281
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    return v11

    .line 267
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":I
    :pswitch_d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 270
    .local v0, "_arg0":[B
    invoke-virtual {v6, v0}, Landroid/gsi/IGsiService$Stub;->commitGsiChunkFromMemory([B)Z

    move-result v1

    .line 271
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    return v11

    .line 253
    .end local v0    # "_arg0":[B
    .end local v1    # "_result":Z
    :pswitch_e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p0 .. p0}, Landroid/gsi/IGsiService$Stub;->getInstallProgress()Landroid/gsi/GsiProgress;

    move-result-object v1

    .line 255
    .local v1, "_result":Landroid/gsi/GsiProgress;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    if-eqz v1, :cond_2

    .line 257
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    invoke-virtual {v1, v9, v11}, Landroid/gsi/GsiProgress;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 261
    :cond_2
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    :goto_1
    return v11

    .line 236
    .end local v1    # "_result":Landroid/gsi/GsiProgress;
    :pswitch_f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_2

    .line 242
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_3
    const/4 v0, 0x0

    .line 245
    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 246
    .local v1, "_arg1":J
    invoke-virtual {v6, v0, v1, v2}, Landroid/gsi/IGsiService$Stub;->commitGsiChunkFromStream(Landroid/os/ParcelFileDescriptor;J)Z

    move-result v3

    .line 247
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    return v11

    .line 222
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":J
    .end local v3    # "_result":Z
    :pswitch_10
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 226
    .local v12, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 228
    .local v14, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    move v5, v11

    goto :goto_3

    :cond_4
    move v5, v0

    .line 229
    .local v5, "_arg2":Z
    :goto_3
    move-object/from16 v0, p0

    move-wide v1, v12

    move-wide v3, v14

    invoke-virtual/range {v0 .. v5}, Landroid/gsi/IGsiService$Stub;->startGsiInstall(JJZ)I

    move-result v0

    .line 230
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    return v11

    .line 217
    .end local v0    # "_result":I
    .end local v5    # "_arg2":Z
    .end local v12    # "_arg0":J
    .end local v14    # "_arg1":J
    :cond_5
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    return v11

    :pswitch_data_0
    .packed-switch 0x1
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
