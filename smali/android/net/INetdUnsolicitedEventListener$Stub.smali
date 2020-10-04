.class public abstract Landroid/net/INetdUnsolicitedEventListener$Stub;
.super Landroid/os/Binder;
.source "INetdUnsolicitedEventListener.java"

# interfaces
.implements Landroid/net/INetdUnsolicitedEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetdUnsolicitedEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetdUnsolicitedEventListener"

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onInterfaceAdded:I = 0x6

.field static final TRANSACTION_onInterfaceAddressRemoved:I = 0x5

.field static final TRANSACTION_onInterfaceAddressUpdated:I = 0x4

.field static final TRANSACTION_onInterfaceChanged:I = 0x8

.field static final TRANSACTION_onInterfaceClassActivityChanged:I = 0x1

.field static final TRANSACTION_onInterfaceDnsServerInfo:I = 0x3

.field static final TRANSACTION_onInterfaceLinkStateChanged:I = 0x9

.field static final TRANSACTION_onInterfaceRemoved:I = 0x7

.field static final TRANSACTION_onQuotaLimitReached:I = 0x2

.field static final TRANSACTION_onRouteChanged:I = 0xa

.field static final TRANSACTION_onStrictCleartextDetected:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 66
    const-string v0, "android.net.INetdUnsolicitedEventListener"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetdUnsolicitedEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetdUnsolicitedEventListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 74
    if-nez p0, :cond_0

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_0
    const-string v0, "android.net.INetdUnsolicitedEventListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 78
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/INetdUnsolicitedEventListener;

    if-eqz v1, :cond_1

    .line 79
    move-object v1, v0

    check-cast v1, Landroid/net/INetdUnsolicitedEventListener;

    return-object v1

    .line 81
    :cond_1
    new-instance v1, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/net/INetdUnsolicitedEventListener;
    .locals 1

    .line 483
    sget-object v0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->sDefaultImpl:Landroid/net/INetdUnsolicitedEventListener;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/INetdUnsolicitedEventListener;)Z
    .locals 1
    .param p0, "impl"    # Landroid/net/INetdUnsolicitedEventListener;

    .line 476
    sget-object v0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->sDefaultImpl:Landroid/net/INetdUnsolicitedEventListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 477
    sput-object p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->sDefaultImpl:Landroid/net/INetdUnsolicitedEventListener;

    .line 478
    const/4 v0, 0x1

    return v0

    .line 480
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 85
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

    .line 89
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.net.INetdUnsolicitedEventListener"

    .line 90
    .local v10, "descriptor":Ljava/lang/String;
    const v0, 0xffffff

    const/4 v11, 0x1

    if-eq v7, v0, :cond_5

    const v0, 0x5f4e5446

    if-eq v7, v0, :cond_4

    const/4 v0, 0x0

    packed-switch v7, :pswitch_data_0

    .line 230
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 213
    :pswitch_0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 217
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/net/INetdUnsolicitedEventListener$Stub;->onStrictCleartextDetected(ILjava/lang/String;)V

    .line 219
    return v11

    .line 199
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v0, v11

    .line 203
    .local v0, "_arg0":Z
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 205
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/net/INetdUnsolicitedEventListener$Stub;->onRouteChanged(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return v11

    .line 189
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v11

    .line 194
    .local v0, "_arg1":Z
    :cond_1
    invoke-virtual {v6, v1, v0}, Landroid/net/INetdUnsolicitedEventListener$Stub;->onInterfaceLinkStateChanged(Ljava/lang/String;Z)V

    .line 195
    return v11

    .line 179
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 183
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v0, v11

    .line 184
    .restart local v0    # "_arg1":Z
    :cond_2
    invoke-virtual {v6, v1, v0}, Landroid/net/INetdUnsolicitedEventListener$Stub;->onInterfaceChanged(Ljava/lang/String;Z)V

    .line 185
    return v11

    .line 171
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/net/INetdUnsolicitedEventListener$Stub;->onInterfaceRemoved(Ljava/lang/String;)V

    .line 175
    return v11

    .line 163
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 166
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/net/INetdUnsolicitedEventListener$Stub;->onInterfaceAdded(Ljava/lang/String;)V

    .line 167
    return v11

    .line 149
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 153
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 157
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 158
    .local v3, "_arg3":I
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/net/INetdUnsolicitedEventListener$Stub;->onInterfaceAddressRemoved(Ljava/lang/String;Ljava/lang/String;II)V

    .line 159
    return v11

    .line 135
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 141
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 143
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 144
    .restart local v3    # "_arg3":I
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/net/INetdUnsolicitedEventListener$Stub;->onInterfaceAddressUpdated(Ljava/lang/String;Ljava/lang/String;II)V

    .line 145
    return v11

    .line 123
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 127
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 129
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "_arg2":[Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/net/INetdUnsolicitedEventListener$Stub;->onInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V

    .line 131
    return v11

    .line 113
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":[Ljava/lang/String;
    :pswitch_9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 117
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/net/INetdUnsolicitedEventListener$Stub;->onQuotaLimitReached(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return v11

    .line 99
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v11

    goto :goto_0

    :cond_3
    move v1, v0

    .line 103
    .local v1, "_arg0":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 105
    .local v12, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 107
    .local v13, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 108
    .local v15, "_arg3":I
    move-object/from16 v0, p0

    move v2, v12

    move-wide v3, v13

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Landroid/net/INetdUnsolicitedEventListener$Stub;->onInterfaceClassActivityChanged(ZIJI)V

    .line 109
    return v11

    .line 94
    .end local v1    # "_arg0":Z
    .end local v12    # "_arg1":I
    .end local v13    # "_arg2":J
    .end local v15    # "_arg3":I
    :cond_4
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return v11

    .line 223
    :cond_5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetdUnsolicitedEventListener$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    return v11

    :pswitch_data_0
    .packed-switch 0x1
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
