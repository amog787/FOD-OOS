.class public abstract Landroid/net/ip/IIpClient$Stub;
.super Landroid/os/Binder;
.source "IIpClient.java"

# interfaces
.implements Landroid/net/ip/IIpClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IIpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/IIpClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String;

.field static final TRANSACTION_addKeepalivePacketFilter:I = 0xa

.field static final TRANSACTION_addNattKeepalivePacketFilter:I = 0xd

.field static final TRANSACTION_completedPreDhcpAction:I = 0x1

.field static final TRANSACTION_confirmConfiguration:I = 0x2

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_notifyPreconnectionComplete:I = 0xe

.field static final TRANSACTION_readPacketFilterComplete:I = 0x3

.field static final TRANSACTION_removeKeepalivePacketFilter:I = 0xb

.field static final TRANSACTION_setHttpProxy:I = 0x8

.field static final TRANSACTION_setL2KeyAndGroupHint:I = 0xc

.field static final TRANSACTION_setMulticastFilter:I = 0x9

.field static final TRANSACTION_setTcpBufferSizes:I = 0x7

.field static final TRANSACTION_shutdown:I = 0x4

.field static final TRANSACTION_startProvisioning:I = 0x5

.field static final TRANSACTION_stop:I = 0x6

.field static final TRANSACTION_updateLayer2Information:I = 0xf


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 80
    const-string v0, "android$net$ip$IIpClient"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/ip/IIpClient$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 84
    sget-object v0, Landroid/net/ip/IIpClient$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/net/ip/IIpClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Landroid/net/ip/IIpClient$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/ip/IIpClient;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 92
    if-nez p0, :cond_0

    .line 93
    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_0
    sget-object v0, Landroid/net/ip/IIpClient$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 96
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/ip/IIpClient;

    if-eqz v1, :cond_1

    .line 97
    move-object v1, v0

    check-cast v1, Landroid/net/ip/IIpClient;

    return-object v1

    .line 99
    :cond_1
    new-instance v1, Landroid/net/ip/IIpClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/ip/IIpClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/net/ip/IIpClient;
    .locals 1

    .line 641
    sget-object v0, Landroid/net/ip/IIpClient$Stub$Proxy;->sDefaultImpl:Landroid/net/ip/IIpClient;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/ip/IIpClient;)Z
    .locals 2
    .param p0, "impl"    # Landroid/net/ip/IIpClient;

    .line 631
    sget-object v0, Landroid/net/ip/IIpClient$Stub$Proxy;->sDefaultImpl:Landroid/net/ip/IIpClient;

    if-nez v0, :cond_1

    .line 634
    if-eqz p0, :cond_0

    .line 635
    sput-object p0, Landroid/net/ip/IIpClient$Stub$Proxy;->sDefaultImpl:Landroid/net/ip/IIpClient;

    .line 636
    const/4 v0, 0x1

    return v0

    .line 638
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 632
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 103
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    sget-object v0, Landroid/net/ip/IIpClient$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 108
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_7

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 274
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 260
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {p0}, Landroid/net/ip/IIpClient$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    return v2

    .line 267
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {p0}, Landroid/net/ip/IIpClient$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    return v2

    .line 247
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    sget-object v1, Landroid/net/Layer2InformationParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Layer2InformationParcelable;

    .local v1, "_arg0":Landroid/net/Layer2InformationParcelable;
    goto :goto_0

    .line 253
    .end local v1    # "_arg0":Landroid/net/Layer2InformationParcelable;
    :cond_0
    const/4 v1, 0x0

    .line 255
    .restart local v1    # "_arg0":Landroid/net/Layer2InformationParcelable;
    :goto_0
    invoke-virtual {p0, v1}, Landroid/net/ip/IIpClient$Stub;->updateLayer2Information(Landroid/net/Layer2InformationParcelable;)V

    .line 256
    return v2

    .line 239
    .end local v1    # "_arg0":Landroid/net/Layer2InformationParcelable;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 242
    .local v1, "_arg0":Z
    :cond_1
    invoke-virtual {p0, v1}, Landroid/net/ip/IIpClient$Stub;->notifyPreconnectionComplete(Z)V

    .line 243
    return v2

    .line 224
    .end local v1    # "_arg0":Z
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 228
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 229
    sget-object v3, Landroid/net/NattKeepalivePacketDataParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NattKeepalivePacketDataParcelable;

    .local v3, "_arg1":Landroid/net/NattKeepalivePacketDataParcelable;
    goto :goto_1

    .line 232
    .end local v3    # "_arg1":Landroid/net/NattKeepalivePacketDataParcelable;
    :cond_2
    const/4 v3, 0x0

    .line 234
    .restart local v3    # "_arg1":Landroid/net/NattKeepalivePacketDataParcelable;
    :goto_1
    invoke-virtual {p0, v1, v3}, Landroid/net/ip/IIpClient$Stub;->addNattKeepalivePacketFilter(ILandroid/net/NattKeepalivePacketDataParcelable;)V

    .line 235
    return v2

    .line 214
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/net/NattKeepalivePacketDataParcelable;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/net/ip/IIpClient$Stub;->setL2KeyAndGroupHint(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return v2

    .line 206
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 209
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/ip/IIpClient$Stub;->removeKeepalivePacketFilter(I)V

    .line 210
    return v2

    .line 191
    .end local v1    # "_arg0":I
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 195
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 196
    sget-object v3, Landroid/net/TcpKeepalivePacketDataParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/TcpKeepalivePacketDataParcelable;

    .local v3, "_arg1":Landroid/net/TcpKeepalivePacketDataParcelable;
    goto :goto_2

    .line 199
    .end local v3    # "_arg1":Landroid/net/TcpKeepalivePacketDataParcelable;
    :cond_3
    const/4 v3, 0x0

    .line 201
    .restart local v3    # "_arg1":Landroid/net/TcpKeepalivePacketDataParcelable;
    :goto_2
    invoke-virtual {p0, v1, v3}, Landroid/net/ip/IIpClient$Stub;->addKeepalivePacketFilter(ILandroid/net/TcpKeepalivePacketDataParcelable;)V

    .line 202
    return v2

    .line 183
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/net/TcpKeepalivePacketDataParcelable;
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 186
    .local v1, "_arg0":Z
    :cond_4
    invoke-virtual {p0, v1}, Landroid/net/ip/IIpClient$Stub;->setMulticastFilter(Z)V

    .line 187
    return v2

    .line 170
    .end local v1    # "_arg0":Z
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 173
    sget-object v1, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ProxyInfo;

    .local v1, "_arg0":Landroid/net/ProxyInfo;
    goto :goto_3

    .line 176
    .end local v1    # "_arg0":Landroid/net/ProxyInfo;
    :cond_5
    const/4 v1, 0x0

    .line 178
    .restart local v1    # "_arg0":Landroid/net/ProxyInfo;
    :goto_3
    invoke-virtual {p0, v1}, Landroid/net/ip/IIpClient$Stub;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 179
    return v2

    .line 162
    .end local v1    # "_arg0":Landroid/net/ProxyInfo;
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/ip/IIpClient$Stub;->setTcpBufferSizes(Ljava/lang/String;)V

    .line 166
    return v2

    .line 156
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Landroid/net/ip/IIpClient$Stub;->stop()V

    .line 158
    return v2

    .line 143
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 146
    sget-object v1, Landroid/net/ProvisioningConfigurationParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ProvisioningConfigurationParcelable;

    .local v1, "_arg0":Landroid/net/ProvisioningConfigurationParcelable;
    goto :goto_4

    .line 149
    .end local v1    # "_arg0":Landroid/net/ProvisioningConfigurationParcelable;
    :cond_6
    const/4 v1, 0x0

    .line 151
    .restart local v1    # "_arg0":Landroid/net/ProvisioningConfigurationParcelable;
    :goto_4
    invoke-virtual {p0, v1}, Landroid/net/ip/IIpClient$Stub;->startProvisioning(Landroid/net/ProvisioningConfigurationParcelable;)V

    .line 152
    return v2

    .line 137
    .end local v1    # "_arg0":Landroid/net/ProvisioningConfigurationParcelable;
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Landroid/net/ip/IIpClient$Stub;->shutdown()V

    .line 139
    return v2

    .line 129
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 132
    .local v1, "_arg0":[B
    invoke-virtual {p0, v1}, Landroid/net/ip/IIpClient$Stub;->readPacketFilterComplete([B)V

    .line 133
    return v2

    .line 123
    .end local v1    # "_arg0":[B
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Landroid/net/ip/IIpClient$Stub;->confirmConfiguration()V

    .line 125
    return v2

    .line 117
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Landroid/net/ip/IIpClient$Stub;->completedPreDhcpAction()V

    .line 119
    return v2

    .line 112
    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    return v2

    nop

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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xfffffe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
