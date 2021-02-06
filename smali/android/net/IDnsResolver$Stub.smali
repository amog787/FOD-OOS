.class public abstract Landroid/net/IDnsResolver$Stub;
.super Landroid/os/Binder;
.source "IDnsResolver.java"

# interfaces
.implements Landroid/net/IDnsResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IDnsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IDnsResolver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String;

.field static final TRANSACTION_createNetworkCache:I = 0x8

.field static final TRANSACTION_destroyNetworkCache:I = 0x9

.field static final TRANSACTION_flushNetworkCache:I = 0xb

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getPrefix64:I = 0x7

.field static final TRANSACTION_getResolverInfo:I = 0x4

.field static final TRANSACTION_isAlive:I = 0x1

.field static final TRANSACTION_registerEventListener:I = 0x2

.field static final TRANSACTION_setLogSeverity:I = 0xa

.field static final TRANSACTION_setPrefix64:I = 0xc

.field static final TRANSACTION_setResolverConfiguration:I = 0x3

.field static final TRANSACTION_startPrefix64Discovery:I = 0x5

.field static final TRANSACTION_stopPrefix64Discovery:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 73
    const-string v0, "android$net$IDnsResolver"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/IDnsResolver$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 77
    sget-object v0, Landroid/net/IDnsResolver$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/net/IDnsResolver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 71
    sget-object v0, Landroid/net/IDnsResolver$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IDnsResolver;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 85
    if-nez p0, :cond_0

    .line 86
    const/4 v0, 0x0

    return-object v0

    .line 88
    :cond_0
    sget-object v0, Landroid/net/IDnsResolver$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 89
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IDnsResolver;

    if-eqz v1, :cond_1

    .line 90
    move-object v1, v0

    check-cast v1, Landroid/net/IDnsResolver;

    return-object v1

    .line 92
    :cond_1
    new-instance v1, Landroid/net/IDnsResolver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IDnsResolver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/net/IDnsResolver;
    .locals 1

    .line 668
    sget-object v0, Landroid/net/IDnsResolver$Stub$Proxy;->sDefaultImpl:Landroid/net/IDnsResolver;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/IDnsResolver;)Z
    .locals 2
    .param p0, "impl"    # Landroid/net/IDnsResolver;

    .line 658
    sget-object v0, Landroid/net/IDnsResolver$Stub$Proxy;->sDefaultImpl:Landroid/net/IDnsResolver;

    if-nez v0, :cond_1

    .line 661
    if-eqz p0, :cond_0

    .line 662
    sput-object p0, Landroid/net/IDnsResolver$Stub$Proxy;->sDefaultImpl:Landroid/net/IDnsResolver;

    .line 663
    const/4 v0, 0x1

    return v0

    .line 665
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 659
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 96
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 27
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    sget-object v12, Landroid/net/IDnsResolver$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 101
    .local v12, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v13, 0x1

    if-eq v9, v0, :cond_7

    packed-switch v9, :pswitch_data_0

    packed-switch v9, :pswitch_data_1

    .line 293
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 279
    :pswitch_0
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual/range {p0 .. p0}, Landroid/net/IDnsResolver$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    return v13

    .line 286
    :pswitch_1
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    invoke-virtual/range {p0 .. p0}, Landroid/net/IDnsResolver$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 289
    return v13

    .line 268
    :pswitch_2
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 272
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v8, v0, v1}, Landroid/net/IDnsResolver$Stub;->setPrefix64(ILjava/lang/String;)V

    .line 274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    return v13

    .line 259
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 262
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Landroid/net/IDnsResolver$Stub;->flushNetworkCache(I)V

    .line 263
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    return v13

    .line 250
    .end local v0    # "_arg0":I
    :pswitch_4
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 253
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Landroid/net/IDnsResolver$Stub;->setLogSeverity(I)V

    .line 254
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    return v13

    .line 241
    .end local v0    # "_arg0":I
    :pswitch_5
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 244
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Landroid/net/IDnsResolver$Stub;->destroyNetworkCache(I)V

    .line 245
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    return v13

    .line 232
    .end local v0    # "_arg0":I
    :pswitch_6
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 235
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Landroid/net/IDnsResolver$Stub;->createNetworkCache(I)V

    .line 236
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    return v13

    .line 222
    .end local v0    # "_arg0":I
    :pswitch_7
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 225
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Landroid/net/IDnsResolver$Stub;->getPrefix64(I)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    return v13

    .line 213
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 216
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Landroid/net/IDnsResolver$Stub;->stopPrefix64Discovery(I)V

    .line 217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    return v13

    .line 204
    .end local v0    # "_arg0":I
    :pswitch_9
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 207
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Landroid/net/IDnsResolver$Stub;->startPrefix64Discovery(I)V

    .line 208
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    return v13

    .line 141
    .end local v0    # "_arg0":I
    :pswitch_a
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 145
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 146
    .local v15, "_arg1_length":I
    if-gez v15, :cond_0

    .line 147
    const/4 v0, 0x0

    move-object v7, v0

    .local v0, "_arg1":[Ljava/lang/String;
    goto :goto_0

    .line 150
    .end local v0    # "_arg1":[Ljava/lang/String;
    :cond_0
    new-array v0, v15, [Ljava/lang/String;

    move-object v7, v0

    .line 153
    .local v7, "_arg1":[Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 154
    .local v6, "_arg2_length":I
    if-gez v6, :cond_1

    .line 155
    const/4 v0, 0x0

    move-object v5, v0

    .local v0, "_arg2":[Ljava/lang/String;
    goto :goto_1

    .line 158
    .end local v0    # "_arg2":[Ljava/lang/String;
    :cond_1
    new-array v0, v6, [Ljava/lang/String;

    move-object v5, v0

    .line 161
    .local v5, "_arg2":[Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 162
    .local v4, "_arg3_length":I
    if-gez v4, :cond_2

    .line 163
    const/4 v0, 0x0

    move-object v3, v0

    .local v0, "_arg3":[Ljava/lang/String;
    goto :goto_2

    .line 166
    .end local v0    # "_arg3":[Ljava/lang/String;
    :cond_2
    new-array v0, v4, [Ljava/lang/String;

    move-object v3, v0

    .line 169
    .local v3, "_arg3":[Ljava/lang/String;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 170
    .local v2, "_arg4_length":I
    if-gez v2, :cond_3

    .line 171
    const/4 v0, 0x0

    move-object v1, v0

    .local v0, "_arg4":[I
    goto :goto_3

    .line 174
    .end local v0    # "_arg4":[I
    :cond_3
    new-array v0, v2, [I

    move-object v1, v0

    .line 177
    .local v1, "_arg4":[I
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 178
    .local v0, "_arg5_length":I
    if-gez v0, :cond_4

    .line 179
    const/16 v16, 0x0

    move-object/from16 v13, v16

    .local v16, "_arg5":[I
    goto :goto_4

    .line 182
    .end local v16    # "_arg5":[I
    :cond_4
    new-array v13, v0, [I

    .line 185
    .local v13, "_arg5":[I
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 186
    .local v9, "_arg6_length":I
    if-gez v9, :cond_5

    .line 187
    const/16 v17, 0x0

    move-object/from16 v26, v17

    move/from16 v17, v0

    move-object/from16 v0, v26

    .local v17, "_arg6":[I
    goto :goto_5

    .line 190
    .end local v17    # "_arg6":[I
    :cond_5
    move/from16 v17, v0

    .end local v0    # "_arg5_length":I
    .local v17, "_arg5_length":I
    new-array v0, v9, [I

    .line 192
    .local v0, "_arg6":[I
    :goto_5
    move-object/from16 v18, v0

    .end local v0    # "_arg6":[I
    .local v18, "_arg6":[I
    move-object/from16 v0, p0

    move-object/from16 v19, v1

    .end local v1    # "_arg4":[I
    .local v19, "_arg4":[I
    move v1, v14

    move/from16 v20, v2

    .end local v2    # "_arg4_length":I
    .local v20, "_arg4_length":I
    move-object v2, v7

    move-object/from16 v21, v3

    .end local v3    # "_arg3":[Ljava/lang/String;
    .local v21, "_arg3":[Ljava/lang/String;
    move-object v3, v5

    move/from16 v22, v4

    .end local v4    # "_arg3_length":I
    .local v22, "_arg3_length":I
    move-object/from16 v4, v21

    move/from16 v23, v9

    move-object v9, v5

    .end local v5    # "_arg2":[Ljava/lang/String;
    .local v9, "_arg2":[Ljava/lang/String;
    .local v23, "_arg6_length":I
    move-object/from16 v5, v19

    move/from16 v24, v6

    .end local v6    # "_arg2_length":I
    .local v24, "_arg2_length":I
    move-object v6, v13

    move/from16 v25, v14

    move-object v14, v7

    .end local v7    # "_arg1":[Ljava/lang/String;
    .local v14, "_arg1":[Ljava/lang/String;
    .local v25, "_arg0":I
    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Landroid/net/IDnsResolver$Stub;->getResolverInfo(I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[I[I)V

    .line 193
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 195
    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 196
    move-object/from16 v0, v21

    .end local v21    # "_arg3":[Ljava/lang/String;
    .local v0, "_arg3":[Ljava/lang/String;
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 197
    move-object/from16 v1, v19

    .end local v19    # "_arg4":[I
    .restart local v1    # "_arg4":[I
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 198
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 199
    move-object/from16 v2, v18

    .end local v18    # "_arg6":[I
    .local v2, "_arg6":[I
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 200
    const/4 v3, 0x1

    return v3

    .line 127
    .end local v0    # "_arg3":[Ljava/lang/String;
    .end local v1    # "_arg4":[I
    .end local v2    # "_arg6":[I
    .end local v9    # "_arg2":[Ljava/lang/String;
    .end local v13    # "_arg5":[I
    .end local v14    # "_arg1":[Ljava/lang/String;
    .end local v15    # "_arg1_length":I
    .end local v17    # "_arg5_length":I
    .end local v20    # "_arg4_length":I
    .end local v22    # "_arg3_length":I
    .end local v23    # "_arg6_length":I
    .end local v24    # "_arg2_length":I
    .end local v25    # "_arg0":I
    :pswitch_b
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 130
    sget-object v0, Landroid/net/ResolverParamsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ResolverParamsParcel;

    .local v0, "_arg0":Landroid/net/ResolverParamsParcel;
    goto :goto_6

    .line 133
    .end local v0    # "_arg0":Landroid/net/ResolverParamsParcel;
    :cond_6
    const/4 v0, 0x0

    .line 135
    .restart local v0    # "_arg0":Landroid/net/ResolverParamsParcel;
    :goto_6
    invoke-virtual {v8, v0}, Landroid/net/IDnsResolver$Stub;->setResolverConfiguration(Landroid/net/ResolverParamsParcel;)V

    .line 136
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    const/4 v1, 0x1

    return v1

    .line 118
    .end local v0    # "_arg0":Landroid/net/ResolverParamsParcel;
    :pswitch_c
    move v1, v13

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/metrics/INetdEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/metrics/INetdEventListener;

    move-result-object v0

    .line 121
    .local v0, "_arg0":Landroid/net/metrics/INetdEventListener;
    invoke-virtual {v8, v0}, Landroid/net/IDnsResolver$Stub;->registerEventListener(Landroid/net/metrics/INetdEventListener;)V

    .line 122
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    return v1

    .line 110
    .end local v0    # "_arg0":Landroid/net/metrics/INetdEventListener;
    :pswitch_d
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/net/IDnsResolver$Stub;->isAlive()Z

    move-result v0

    .line 112
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    const/4 v1, 0x1

    return v1

    .line 105
    .end local v0    # "_result":Z
    :cond_7
    move v1, v13

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xfffffe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
