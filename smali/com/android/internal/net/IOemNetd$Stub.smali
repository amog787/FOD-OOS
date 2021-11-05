.class public abstract Lcom/android/internal/net/IOemNetd$Stub;
.super Landroid/os/Binder;
.source "IOemNetd.java"

# interfaces
.implements Lcom/android/internal/net/IOemNetd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/IOemNetd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/IOemNetd$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String;

.field static final TRANSACTION_destroySockets:I = 0x8

.field static final TRANSACTION_isAlive:I = 0x1

.field static final TRANSACTION_onePlusClearUidTos:I = 0xc

.field static final TRANSACTION_onePlusSetUidTos:I = 0xb

.field static final TRANSACTION_opExecuteIPtableCmd:I = 0x3

.field static final TRANSACTION_registerOemUnsolicitedEventListener:I = 0x2

.field static final TRANSACTION_setOPSlaDisable:I = 0x5

.field static final TRANSACTION_setOPSlaEnable:I = 0x4

.field static final TRANSACTION_setOPSlaIfaceDown:I = 0x7

.field static final TRANSACTION_setOPSlaIfaceUp:I = 0x6

.field static final TRANSACTION_setSoftapSuspend:I = 0x9

.field static final TRANSACTION_setTcpTimestamps:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 87
    const-string v0, "com$android$internal$net$IOemNetd"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 91
    sget-object v0, Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/net/IOemNetd$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 85
    sget-object v0, Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 99
    if-nez p0, :cond_0

    .line 100
    const/4 v0, 0x0

    return-object v0

    .line 102
    :cond_0
    sget-object v0, Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 103
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/net/IOemNetd;

    if-eqz v1, :cond_1

    .line 104
    move-object v1, v0

    check-cast v1, Lcom/android/internal/net/IOemNetd;

    return-object v1

    .line 106
    :cond_1
    new-instance v1, Lcom/android/internal/net/IOemNetd$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/net/IOemNetd$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/android/internal/net/IOemNetd;
    .locals 1

    .line 578
    sget-object v0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/net/IOemNetd;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/android/internal/net/IOemNetd;)Z
    .locals 2
    .param p0, "impl"    # Lcom/android/internal/net/IOemNetd;

    .line 568
    sget-object v0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/net/IOemNetd;

    if-nez v0, :cond_1

    .line 571
    if-eqz p0, :cond_0

    .line 572
    sput-object p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/net/IOemNetd;

    .line 573
    const/4 v0, 0x1

    return v0

    .line 575
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 569
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 110
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

    .line 114
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    sget-object v10, Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 115
    .local v10, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v7, v0, :cond_1

    packed-switch v7, :pswitch_data_0

    .line 256
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 243
    :pswitch_0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 247
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 249
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/net/IOemNetd$Stub;->onePlusClearUidTos(IILjava/lang/String;)V

    .line 251
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    return v11

    .line 230
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 234
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 236
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 237
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/net/IOemNetd$Stub;->onePlusSetUidTos(IILjava/lang/String;)V

    .line 238
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    return v11

    .line 221
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/android/internal/net/IOemNetd$Stub;->setTcpTimestamps(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    return v11

    .line 210
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v11

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 214
    .local v0, "_arg0":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/net/IOemNetd$Stub;->setSoftapSuspend(ZLjava/lang/String;)V

    .line 216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    return v11

    .line 198
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 202
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 203
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/net/IOemNetd$Stub;->destroySockets(II)Z

    move-result v2

    .line 204
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    return v11

    .line 186
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/net/IOemNetd$Stub;->setOPSlaIfaceDown(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 192
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    return v11

    .line 168
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 172
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 174
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 176
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 178
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 179
    .local v16, "_arg4":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd$Stub;->setOPSlaIfaceUp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 180
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    return v11

    .line 160
    .end local v0    # "_result":Z
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/net/IOemNetd$Stub;->setOPSlaDisable()Z

    move-result v0

    .line 162
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    return v11

    .line 152
    .end local v0    # "_result":Z
    :pswitch_8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/net/IOemNetd$Stub;->setOPSlaEnable()Z

    move-result v0

    .line 154
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    return v11

    .line 141
    .end local v0    # "_result":Z
    :pswitch_9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 146
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/net/IOemNetd$Stub;->opExecuteIPtableCmd(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    return v11

    .line 132
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;

    move-result-object v0

    .line 135
    .local v0, "_arg0":Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;
    invoke-virtual {v6, v0}, Lcom/android/internal/net/IOemNetd$Stub;->registerOemUnsolicitedEventListener(Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;)V

    .line 136
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    return v11

    .line 124
    .end local v0    # "_arg0":Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;
    :pswitch_b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/net/IOemNetd$Stub;->isAlive()Z

    move-result v0

    .line 126
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    return v11

    .line 119
    .end local v0    # "_result":Z
    :cond_1
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
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
