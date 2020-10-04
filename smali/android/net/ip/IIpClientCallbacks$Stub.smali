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
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.ip.IIpClientCallbacks"

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_installPacketFilter:I = 0xa

.field static final TRANSACTION_onIpClientCreated:I = 0x1

.field static final TRANSACTION_onLinkPropertiesChange:I = 0x7

.field static final TRANSACTION_onNewDhcpResults:I = 0x4

.field static final TRANSACTION_onPostDhcpAction:I = 0x3

.field static final TRANSACTION_onPreDhcpAction:I = 0x2

.field static final TRANSACTION_onProvisioningFailure:I = 0x6

.field static final TRANSACTION_onProvisioningSuccess:I = 0x5

.field static final TRANSACTION_onQuit:I = 0x9

.field static final TRANSACTION_onReachabilityLost:I = 0x8

.field static final TRANSACTION_setFallbackMulticastFilter:I = 0xc

.field static final TRANSACTION_setNeighborDiscoveryOffload:I = 0xd

.field static final TRANSACTION_startReadPacketFilter:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 72
    const-string v0, "android.net.ip.IIpClientCallbacks"

    invoke-virtual {p0, p0, v0}, Landroid/net/ip/IIpClientCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/ip/IIpClientCallbacks;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 80
    if-nez p0, :cond_0

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_0
    const-string v0, "android.net.ip.IIpClientCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 84
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/ip/IIpClientCallbacks;

    if-eqz v1, :cond_1

    .line 85
    move-object v1, v0

    check-cast v1, Landroid/net/ip/IIpClientCallbacks;

    return-object v1

    .line 87
    :cond_1
    new-instance v1, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;
    .locals 1

    .line 517
    sget-object v0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->sDefaultImpl:Landroid/net/ip/IIpClientCallbacks;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/ip/IIpClientCallbacks;)Z
    .locals 1
    .param p0, "impl"    # Landroid/net/ip/IIpClientCallbacks;

    .line 510
    sget-object v0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->sDefaultImpl:Landroid/net/ip/IIpClientCallbacks;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 511
    sput-object p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->sDefaultImpl:Landroid/net/ip/IIpClientCallbacks;

    .line 512
    const/4 v0, 0x1

    return v0

    .line 514
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 91
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

    .line 95
    const-string v0, "android.net.ip.IIpClientCallbacks"

    .line 96
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-eq p1, v1, :cond_7

    const v1, 0x5f4e5446

    if-eq p1, v1, :cond_6

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 228
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 213
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 216
    .local v1, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v1}, Landroid/net/ip/IIpClientCallbacks$Stub;->setNeighborDiscoveryOffload(Z)V

    .line 217
    return v2

    .line 205
    .end local v1    # "_arg0":Z
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 208
    .restart local v1    # "_arg0":Z
    :cond_1
    invoke-virtual {p0, v1}, Landroid/net/ip/IIpClientCallbacks$Stub;->setFallbackMulticastFilter(Z)V

    .line 209
    return v2

    .line 199
    .end local v1    # "_arg0":Z
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Landroid/net/ip/IIpClientCallbacks$Stub;->startReadPacketFilter()V

    .line 201
    return v2

    .line 191
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 194
    .local v1, "_arg0":[B
    invoke-virtual {p0, v1}, Landroid/net/ip/IIpClientCallbacks$Stub;->installPacketFilter([B)V

    .line 195
    return v2

    .line 185
    .end local v1    # "_arg0":[B
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Landroid/net/ip/IIpClientCallbacks$Stub;->onQuit()V

    .line 187
    return v2

    .line 177
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/ip/IIpClientCallbacks$Stub;->onReachabilityLost(Ljava/lang/String;)V

    .line 181
    return v2

    .line 164
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    sget-object v1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    .local v1, "_arg0":Landroid/net/LinkProperties;
    goto :goto_0

    .line 170
    .end local v1    # "_arg0":Landroid/net/LinkProperties;
    :cond_2
    const/4 v1, 0x0

    .line 172
    .restart local v1    # "_arg0":Landroid/net/LinkProperties;
    :goto_0
    invoke-virtual {p0, v1}, Landroid/net/ip/IIpClientCallbacks$Stub;->onLinkPropertiesChange(Landroid/net/LinkProperties;)V

    .line 173
    return v2

    .line 151
    .end local v1    # "_arg0":Landroid/net/LinkProperties;
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 154
    sget-object v1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    .restart local v1    # "_arg0":Landroid/net/LinkProperties;
    goto :goto_1

    .line 157
    .end local v1    # "_arg0":Landroid/net/LinkProperties;
    :cond_3
    const/4 v1, 0x0

    .line 159
    .restart local v1    # "_arg0":Landroid/net/LinkProperties;
    :goto_1
    invoke-virtual {p0, v1}, Landroid/net/ip/IIpClientCallbacks$Stub;->onProvisioningFailure(Landroid/net/LinkProperties;)V

    .line 160
    return v2

    .line 138
    .end local v1    # "_arg0":Landroid/net/LinkProperties;
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 141
    sget-object v1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    .restart local v1    # "_arg0":Landroid/net/LinkProperties;
    goto :goto_2

    .line 144
    .end local v1    # "_arg0":Landroid/net/LinkProperties;
    :cond_4
    const/4 v1, 0x0

    .line 146
    .restart local v1    # "_arg0":Landroid/net/LinkProperties;
    :goto_2
    invoke-virtual {p0, v1}, Landroid/net/ip/IIpClientCallbacks$Stub;->onProvisioningSuccess(Landroid/net/LinkProperties;)V

    .line 147
    return v2

    .line 125
    .end local v1    # "_arg0":Landroid/net/LinkProperties;
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 128
    sget-object v1, Landroid/net/DhcpResultsParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/DhcpResultsParcelable;

    .local v1, "_arg0":Landroid/net/DhcpResultsParcelable;
    goto :goto_3

    .line 131
    .end local v1    # "_arg0":Landroid/net/DhcpResultsParcelable;
    :cond_5
    const/4 v1, 0x0

    .line 133
    .restart local v1    # "_arg0":Landroid/net/DhcpResultsParcelable;
    :goto_3
    invoke-virtual {p0, v1}, Landroid/net/ip/IIpClientCallbacks$Stub;->onNewDhcpResults(Landroid/net/DhcpResultsParcelable;)V

    .line 134
    return v2

    .line 119
    .end local v1    # "_arg0":Landroid/net/DhcpResultsParcelable;
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Landroid/net/ip/IIpClientCallbacks$Stub;->onPostDhcpAction()V

    .line 121
    return v2

    .line 113
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Landroid/net/ip/IIpClientCallbacks$Stub;->onPreDhcpAction()V

    .line 115
    return v2

    .line 105
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/ip/IIpClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ip/IIpClient;

    move-result-object v1

    .line 108
    .local v1, "_arg0":Landroid/net/ip/IIpClient;
    invoke-virtual {p0, v1}, Landroid/net/ip/IIpClientCallbacks$Stub;->onIpClientCreated(Landroid/net/ip/IIpClient;)V

    .line 109
    return v2

    .line 100
    .end local v1    # "_arg0":Landroid/net/ip/IIpClient;
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v2

    .line 221
    :cond_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p0}, Landroid/net/ip/IIpClientCallbacks$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
