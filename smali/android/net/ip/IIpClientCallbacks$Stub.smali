.class public abstract Landroid/net/ip/IIpClientCallbacks$Stub;
.super Landroid/os/Binder;
.source "IIpClientCallbacks.java"

# interfaces
.implements Landroid/net/ip/IIpClientCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IIpClientCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String;

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_installPacketFilter:I = 0xa

.field static final TRANSACTION_onIpClientCreated:I = 0x1

.field static final TRANSACTION_onLinkPropertiesChange:I = 0x7

.field static final TRANSACTION_onNewDhcpResults:I = 0x4

.field static final TRANSACTION_onPostDhcpAction:I = 0x3

.field static final TRANSACTION_onPreDhcpAction:I = 0x2

.field static final TRANSACTION_onPreconnectionStart:I = 0xe

.field static final TRANSACTION_onProvisioningFailure:I = 0x6

.field static final TRANSACTION_onProvisioningSuccess:I = 0x5

.field static final TRANSACTION_onQuit:I = 0x9

.field static final TRANSACTION_onReachabilityLost:I = 0x8

.field static final TRANSACTION_setFallbackMulticastFilter:I = 0xc

.field static final TRANSACTION_setNeighborDiscoveryOffload:I = 0xd

.field static final TRANSACTION_startReadPacketFilter:I = 0xb


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 77
    const-string v0, "android$net$ip$IIpClientCallbacks"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/ip/IIpClientCallbacks$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 81
    sget-object v0, Landroid/net/ip/IIpClientCallbacks$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/net/ip/IIpClientCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 75
    sget-object v0, Landroid/net/ip/IIpClientCallbacks$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/ip/IIpClientCallbacks;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 89
    if-nez p0, :cond_0

    .line 90
    const/4 v0, 0x0

    return-object v0

    .line 92
    :cond_0
    sget-object v0, Landroid/net/ip/IIpClientCallbacks$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 93
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/ip/IIpClientCallbacks;

    if-eqz v1, :cond_1

    .line 94
    move-object v1, v0

    check-cast v1, Landroid/net/ip/IIpClientCallbacks;

    return-object v1

    .line 96
    :cond_1
    new-instance v1, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;
    .locals 1

    .line 593
    sget-object v0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->sDefaultImpl:Landroid/net/ip/IIpClientCallbacks;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/ip/IIpClientCallbacks;)Z
    .locals 2
    .param p0, "impl"    # Landroid/net/ip/IIpClientCallbacks;

    .line 583
    sget-object v0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->sDefaultImpl:Landroid/net/ip/IIpClientCallbacks;

    if-nez v0, :cond_1

    .line 586
    if-eqz p0, :cond_0

    .line 587
    sput-object p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->sDefaultImpl:Landroid/net/ip/IIpClientCallbacks;

    .line 588
    const/4 v0, 0x1

    return v0

    .line 590
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 584
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 100
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

    .line 104
    sget-object v0, Landroid/net/ip/IIpClientCallbacks$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 105
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_6

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 252
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 238
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p0}, Landroid/net/ip/IIpClientCallbacks$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    return v2

    .line 245
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {p0}, Landroid/net/ip/IIpClientCallbacks$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    return v2

    .line 230
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    sget-object v1, Landroid/net/Layer2PacketParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 233
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Layer2PacketParcelable;>;"
    invoke-virtual {p0, v1}, Landroid/net/ip/IIpClientCallbacks$Stub;->onPreconnectionStart(Ljava/util/List;)V

    .line 234
    return v2

    .line 222
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Layer2PacketParcelable;>;"
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 225
    .local v1, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v1}, Landroid/net/ip/IIpClientCallbacks$Stub;->setNeighborDiscoveryOffload(Z)V

    .line 226
    return v2

    .line 214
    .end local v1    # "_arg0":Z
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 217
    .restart local v1    # "_arg0":Z
    :cond_1
    invoke-virtual {p0, v1}, Landroid/net/ip/IIpClientCallbacks$Stub;->setFallbackMulticastFilter(Z)V

    .line 218
    return v2

    .line 208
    .end local v1    # "_arg0":Z
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Landroid/net/ip/IIpClientCallbacks$Stub;->startReadPacketFilter()V

    .line 210
    return v2

    .line 200
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 203
    .local v1, "_arg0":[B
    invoke-virtual {p0, v1}, Landroid/net/ip/IIpClientCallbacks$Stub;->installPacketFilter([B)V

    .line 204
    return v2

    .line 194
    .end local v1    # "_arg0":[B
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Landroid/net/ip/IIpClientCallbacks$Stub;->onQuit()V

    .line 196
    return v2

    .line 186
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/ip/IIpClientCallbacks$Stub;->onReachabilityLost(Ljava/lang/String;)V

    .line 190
    return v2

    .line 173
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    sget-object v1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    .local v1, "_arg0":Landroid/net/LinkProperties;
    goto :goto_0

    .line 179
    .end local v1    # "_arg0":Landroid/net/LinkProperties;
    :cond_2
    const/4 v1, 0x0

    .line 181
    .restart local v1    # "_arg0":Landroid/net/LinkProperties;
    :goto_0
    invoke-virtual {p0, v1}, Landroid/net/ip/IIpClientCallbacks$Stub;->onLinkPropertiesChange(Landroid/net/LinkProperties;)V

    .line 182
    return v2

    .line 160
    .end local v1    # "_arg0":Landroid/net/LinkProperties;
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 163
    sget-object v1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    .restart local v1    # "_arg0":Landroid/net/LinkProperties;
    goto :goto_1

    .line 166
    .end local v1    # "_arg0":Landroid/net/LinkProperties;
    :cond_3
    const/4 v1, 0x0

    .line 168
    .restart local v1    # "_arg0":Landroid/net/LinkProperties;
    :goto_1
    invoke-virtual {p0, v1}, Landroid/net/ip/IIpClientCallbacks$Stub;->onProvisioningFailure(Landroid/net/LinkProperties;)V

    .line 169
    return v2

    .line 147
    .end local v1    # "_arg0":Landroid/net/LinkProperties;
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 150
    sget-object v1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    .restart local v1    # "_arg0":Landroid/net/LinkProperties;
    goto :goto_2

    .line 153
    .end local v1    # "_arg0":Landroid/net/LinkProperties;
    :cond_4
    const/4 v1, 0x0

    .line 155
    .restart local v1    # "_arg0":Landroid/net/LinkProperties;
    :goto_2
    invoke-virtual {p0, v1}, Landroid/net/ip/IIpClientCallbacks$Stub;->onProvisioningSuccess(Landroid/net/LinkProperties;)V

    .line 156
    return v2

    .line 134
    .end local v1    # "_arg0":Landroid/net/LinkProperties;
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 137
    sget-object v1, Landroid/net/DhcpResultsParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/DhcpResultsParcelable;

    .local v1, "_arg0":Landroid/net/DhcpResultsParcelable;
    goto :goto_3

    .line 140
    .end local v1    # "_arg0":Landroid/net/DhcpResultsParcelable;
    :cond_5
    const/4 v1, 0x0

    .line 142
    .restart local v1    # "_arg0":Landroid/net/DhcpResultsParcelable;
    :goto_3
    invoke-virtual {p0, v1}, Landroid/net/ip/IIpClientCallbacks$Stub;->onNewDhcpResults(Landroid/net/DhcpResultsParcelable;)V

    .line 143
    return v2

    .line 128
    .end local v1    # "_arg0":Landroid/net/DhcpResultsParcelable;
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Landroid/net/ip/IIpClientCallbacks$Stub;->onPostDhcpAction()V

    .line 130
    return v2

    .line 122
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Landroid/net/ip/IIpClientCallbacks$Stub;->onPreDhcpAction()V

    .line 124
    return v2

    .line 114
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/ip/IIpClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ip/IIpClient;

    move-result-object v1

    .line 117
    .local v1, "_arg0":Landroid/net/ip/IIpClient;
    invoke-virtual {p0, v1}, Landroid/net/ip/IIpClientCallbacks$Stub;->onIpClientCreated(Landroid/net/ip/IIpClient;)V

    .line 118
    return v2

    .line 109
    .end local v1    # "_arg0":Landroid/net/ip/IIpClient;
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    return v2

    :pswitch_data_0
    .packed-switch 0x1
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
