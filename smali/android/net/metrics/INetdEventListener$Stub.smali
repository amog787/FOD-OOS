.class public abstract Landroid/net/metrics/INetdEventListener$Stub;
.super Landroid/os/Binder;
.source "INetdEventListener.java"

# interfaces
.implements Landroid/net/metrics/INetdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/INetdEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/INetdEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.metrics.INetdEventListener"

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onConnectEvent:I = 0x3

.field static final TRANSACTION_onDnsEvent:I = 0x1

.field static final TRANSACTION_onNat64PrefixEvent:I = 0x6

.field static final TRANSACTION_onPrivateDnsValidationEvent:I = 0x2

.field static final TRANSACTION_onTcpSocketStatsEvent:I = 0x5

.field static final TRANSACTION_onWakeupEvent:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 129
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 130
    const-string v0, "android.net.metrics.INetdEventListener"

    invoke-virtual {p0, p0, v0}, Landroid/net/metrics/INetdEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/metrics/INetdEventListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 138
    if-nez p0, :cond_0

    .line 139
    const/4 v0, 0x0

    return-object v0

    .line 141
    :cond_0
    const-string v0, "android.net.metrics.INetdEventListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 142
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/metrics/INetdEventListener;

    if-eqz v1, :cond_1

    .line 143
    move-object v1, v0

    check-cast v1, Landroid/net/metrics/INetdEventListener;

    return-object v1

    .line 145
    :cond_1
    new-instance v1, Landroid/net/metrics/INetdEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/metrics/INetdEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/net/metrics/INetdEventListener;
    .locals 1

    .line 535
    sget-object v0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->sDefaultImpl:Landroid/net/metrics/INetdEventListener;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/metrics/INetdEventListener;)Z
    .locals 1
    .param p0, "impl"    # Landroid/net/metrics/INetdEventListener;

    .line 528
    sget-object v0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->sDefaultImpl:Landroid/net/metrics/INetdEventListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 529
    sput-object p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->sDefaultImpl:Landroid/net/metrics/INetdEventListener;

    .line 530
    const/4 v0, 0x1

    return v0

    .line 532
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 149
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 28
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v10, "android.net.metrics.INetdEventListener"

    .line 154
    .local v10, "descriptor":Ljava/lang/String;
    const v0, 0xffffff

    const/16 v16, 0x1

    if-eq v13, v0, :cond_3

    const v0, 0x5f4e5446

    if-eq v13, v0, :cond_2

    const/4 v0, 0x0

    packed-switch v13, :pswitch_data_0

    .line 280
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 259
    :pswitch_0
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 263
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move/from16 v0, v16

    .line 265
    .local v0, "_arg1":Z
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 268
    .local v3, "_arg3":I
    invoke-virtual {v12, v1, v0, v2, v3}, Landroid/net/metrics/INetdEventListener$Stub;->onNat64PrefixEvent(IZLjava/lang/String;I)V

    .line 269
    return v16

    .line 243
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_1
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    .line 247
    .local v6, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v7

    .line 249
    .local v7, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v8

    .line 251
    .local v8, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v9

    .line 253
    .local v9, "_arg3":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v11

    .line 254
    .local v11, "_arg4":[I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Landroid/net/metrics/INetdEventListener$Stub;->onTcpSocketStatsEvent([I[I[I[I[I)V

    .line 255
    return v16

    .line 217
    .end local v6    # "_arg0":[I
    .end local v7    # "_arg1":[I
    .end local v8    # "_arg2":[I
    .end local v9    # "_arg3":[I
    .end local v11    # "_arg4":[I
    :pswitch_2
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 221
    .local v17, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 223
    .local v18, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 225
    .local v19, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 227
    .local v20, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v21

    .line 229
    .local v21, "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 231
    .local v22, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 233
    .local v23, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 235
    .local v24, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 237
    .local v25, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    .line 238
    .local v26, "_arg9":J
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    move-object/from16 v7, v23

    move/from16 v8, v24

    move/from16 v9, v25

    move-object v13, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .local v13, "descriptor":Ljava/lang/String;
    move-wide/from16 v10, v26

    invoke-virtual/range {v0 .. v11}, Landroid/net/metrics/INetdEventListener$Stub;->onWakeupEvent(Ljava/lang/String;III[BLjava/lang/String;Ljava/lang/String;IIJ)V

    .line 239
    return v16

    .line 199
    .end local v13    # "descriptor":Ljava/lang/String;
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v18    # "_arg1":I
    .end local v19    # "_arg2":I
    .end local v20    # "_arg3":I
    .end local v21    # "_arg4":[B
    .end local v22    # "_arg5":Ljava/lang/String;
    .end local v23    # "_arg6":Ljava/lang/String;
    .end local v24    # "_arg7":I
    .end local v25    # "_arg8":I
    .end local v26    # "_arg9":J
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_3
    move-object v13, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 203
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 205
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 207
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 209
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 211
    .local v11, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 212
    .local v17, "_arg5":I
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move-object v4, v10

    move v5, v11

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroid/net/metrics/INetdEventListener$Stub;->onConnectEvent(IIILjava/lang/String;II)V

    .line 213
    return v16

    .line 185
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v11    # "_arg4":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .end local v17    # "_arg5":I
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_4
    move-object v13, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 189
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    move/from16 v0, v16

    .line 194
    .local v0, "_arg3":Z
    :cond_1
    invoke-virtual {v12, v1, v2, v3, v0}, Landroid/net/metrics/INetdEventListener$Stub;->onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 195
    return v16

    .line 163
    .end local v0    # "_arg3":Z
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_5
    move-object v13, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 167
    .local v9, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 169
    .local v10, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 171
    .local v11, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 173
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 175
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v19

    .line 177
    .local v19, "_arg5":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 179
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 180
    .local v21, "_arg7":I
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move/from16 v7, v20

    move/from16 v8, v21

    invoke-virtual/range {v0 .. v8}, Landroid/net/metrics/INetdEventListener$Stub;->onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V

    .line 181
    return v16

    .line 158
    .end local v9    # "_arg0":I
    .end local v11    # "_arg2":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg5":[Ljava/lang/String;
    .end local v20    # "_arg6":I
    .end local v21    # "_arg7":I
    .local v10, "descriptor":Ljava/lang/String;
    :cond_2
    move-object v13, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    return v16

    .line 273
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :cond_3
    move-object v13, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual/range {p0 .. p0}, Landroid/net/metrics/INetdEventListener$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    return v16

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
