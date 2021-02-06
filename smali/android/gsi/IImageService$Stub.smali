.class public abstract Landroid/gsi/IImageService$Stub;
.super Landroid/os/Binder;
.source "IImageService.java"

# interfaces
.implements Landroid/gsi/IImageService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gsi/IImageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gsi/IImageService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.gsi.IImageService"

.field static final TRANSACTION_backingImageExists:I = 0x5

.field static final TRANSACTION_createBackingImage:I = 0x1

.field static final TRANSACTION_deleteBackingImage:I = 0x2

.field static final TRANSACTION_getAllBackingImages:I = 0x8

.field static final TRANSACTION_getAvbPublicKey:I = 0x7

.field static final TRANSACTION_getMappedImageDevice:I = 0xc

.field static final TRANSACTION_isImageMapped:I = 0x6

.field static final TRANSACTION_mapImageDevice:I = 0x3

.field static final TRANSACTION_removeAllImages:I = 0xa

.field static final TRANSACTION_removeDisabledImages:I = 0xb

.field static final TRANSACTION_unmapImageDevice:I = 0x4

.field static final TRANSACTION_zeroFillNewImage:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 145
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 146
    const-string v0, "android.gsi.IImageService"

    invoke-virtual {p0, p0, v0}, Landroid/gsi/IImageService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/gsi/IImageService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 154
    if-nez p0, :cond_0

    .line 155
    const/4 v0, 0x0

    return-object v0

    .line 157
    :cond_0
    const-string v0, "android.gsi.IImageService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 158
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/gsi/IImageService;

    if-eqz v1, :cond_1

    .line 159
    move-object v1, v0

    check-cast v1, Landroid/gsi/IImageService;

    return-object v1

    .line 161
    :cond_1
    new-instance v1, Landroid/gsi/IImageService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/gsi/IImageService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/gsi/IImageService;
    .locals 1

    .line 689
    sget-object v0, Landroid/gsi/IImageService$Stub$Proxy;->sDefaultImpl:Landroid/gsi/IImageService;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/gsi/IImageService;)Z
    .locals 2
    .param p0, "impl"    # Landroid/gsi/IImageService;

    .line 679
    sget-object v0, Landroid/gsi/IImageService$Stub$Proxy;->sDefaultImpl:Landroid/gsi/IImageService;

    if-nez v0, :cond_1

    .line 682
    if-eqz p0, :cond_0

    .line 683
    sput-object p0, Landroid/gsi/IImageService$Stub$Proxy;->sDefaultImpl:Landroid/gsi/IImageService;

    .line 684
    const/4 v0, 0x1

    return v0

    .line 686
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 680
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 165
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.gsi.IImageService"

    .line 170
    .local v10, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v7, v0, :cond_0

    packed-switch v7, :pswitch_data_0

    .line 314
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 304
    :pswitch_0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/gsi/IImageService$Stub;->getMappedImageDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    return v11

    .line 297
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p0 .. p0}, Landroid/gsi/IImageService$Stub;->removeDisabledImages()V

    .line 299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    return v11

    .line 290
    :pswitch_2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p0 .. p0}, Landroid/gsi/IImageService$Stub;->removeAllImages()V

    .line 292
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    return v11

    .line 279
    :pswitch_3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 283
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 284
    .local v1, "_arg1":J
    invoke-virtual {v6, v0, v1, v2}, Landroid/gsi/IImageService$Stub;->zeroFillNewImage(Ljava/lang/String;J)V

    .line 285
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    return v11

    .line 271
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    :pswitch_4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual/range {p0 .. p0}, Landroid/gsi/IImageService$Stub;->getAllBackingImages()Ljava/util/List;

    move-result-object v0

    .line 273
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 275
    return v11

    .line 252
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "_arg0":Ljava/lang/String;
    new-instance v1, Landroid/gsi/AvbPublicKey;

    invoke-direct {v1}, Landroid/gsi/AvbPublicKey;-><init>()V

    .line 257
    .local v1, "_arg1":Landroid/gsi/AvbPublicKey;
    invoke-virtual {v6, v0, v1}, Landroid/gsi/IImageService$Stub;->getAvbPublicKey(Ljava/lang/String;Landroid/gsi/AvbPublicKey;)I

    move-result v2

    .line 258
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    nop

    .line 261
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    invoke-virtual {v1, v9, v11}, Landroid/gsi/AvbPublicKey;->writeToParcel(Landroid/os/Parcel;I)V

    .line 267
    return v11

    .line 242
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/gsi/AvbPublicKey;
    .end local v2    # "_result":I
    :pswitch_6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 245
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/gsi/IImageService$Stub;->isImageMapped(Ljava/lang/String;)Z

    move-result v1

    .line 246
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    return v11

    .line 232
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 235
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/gsi/IImageService$Stub;->backingImageExists(Ljava/lang/String;)Z

    move-result v1

    .line 236
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    return v11

    .line 223
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 226
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/gsi/IImageService$Stub;->unmapImageDevice(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    return v11

    .line 203
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 207
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 209
    .local v1, "_arg1":I
    new-instance v2, Landroid/gsi/MappedImage;

    invoke-direct {v2}, Landroid/gsi/MappedImage;-><init>()V

    .line 210
    .local v2, "_arg2":Landroid/gsi/MappedImage;
    invoke-virtual {v6, v0, v1, v2}, Landroid/gsi/IImageService$Stub;->mapImageDevice(Ljava/lang/String;ILandroid/gsi/MappedImage;)V

    .line 211
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    nop

    .line 213
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    invoke-virtual {v2, v9, v11}, Landroid/gsi/MappedImage;->writeToParcel(Landroid/os/Parcel;I)V

    .line 219
    return v11

    .line 194
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/gsi/MappedImage;
    :pswitch_a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 197
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/gsi/IImageService$Stub;->deleteBackingImage(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    return v11

    .line 179
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 183
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 185
    .local v13, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 187
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/gsi/IProgressCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gsi/IProgressCallback;

    move-result-object v16

    .line 188
    .local v16, "_arg3":Landroid/gsi/IProgressCallback;
    move-object/from16 v0, p0

    move-object v1, v12

    move-wide v2, v13

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/gsi/IImageService$Stub;->createBackingImage(Ljava/lang/String;JILandroid/gsi/IProgressCallback;)V

    .line 189
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    return v11

    .line 174
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":J
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Landroid/gsi/IProgressCallback;
    :cond_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
