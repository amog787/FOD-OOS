.class public abstract Landroid/net/INetworkStackConnector$Stub;
.super Landroid/os/Binder;
.source "INetworkStackConnector.java"

# interfaces
.implements Landroid/net/INetworkStackConnector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkStackConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkStackConnector$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String;

.field static final TRANSACTION_fetchIpMemoryStore:I = 0x4

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_makeDhcpServer:I = 0x1

.field static final TRANSACTION_makeIpClient:I = 0x3

.field static final TRANSACTION_makeNetworkMonitor:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    const-string v0, "android$net$INetworkStackConnector"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/INetworkStackConnector$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 51
    sget-object v0, Landroid/net/INetworkStackConnector$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkStackConnector$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Landroid/net/INetworkStackConnector$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackConnector;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 59
    if-nez p0, :cond_0

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_0
    sget-object v0, Landroid/net/INetworkStackConnector$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 63
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/INetworkStackConnector;

    if-eqz v1, :cond_1

    .line 64
    move-object v1, v0

    check-cast v1, Landroid/net/INetworkStackConnector;

    return-object v1

    .line 66
    :cond_1
    new-instance v1, Landroid/net/INetworkStackConnector$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetworkStackConnector$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/net/INetworkStackConnector;
    .locals 1

    .line 318
    sget-object v0, Landroid/net/INetworkStackConnector$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkStackConnector;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/INetworkStackConnector;)Z
    .locals 2
    .param p0, "impl"    # Landroid/net/INetworkStackConnector;

    .line 308
    sget-object v0, Landroid/net/INetworkStackConnector$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkStackConnector;

    if-nez v0, :cond_1

    .line 311
    if-eqz p0, :cond_0

    .line 312
    sput-object p0, Landroid/net/INetworkStackConnector$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkStackConnector;

    .line 313
    const/4 v0, 0x1

    return v0

    .line 315
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 309
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 70
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    sget-object v0, Landroid/net/INetworkStackConnector$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 75
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 136
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p0}, Landroid/net/INetworkStackConnector$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    return v1

    .line 143
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p0}, Landroid/net/INetworkStackConnector$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    return v1

    .line 79
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return v1

    .line 128
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/IIpMemoryStoreCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpMemoryStoreCallbacks;

    move-result-object v2

    .line 131
    .local v2, "_arg0":Landroid/net/IIpMemoryStoreCallbacks;
    invoke-virtual {p0, v2}, Landroid/net/INetworkStackConnector$Stub;->fetchIpMemoryStore(Landroid/net/IIpMemoryStoreCallbacks;)V

    .line 132
    return v1

    .line 118
    .end local v2    # "_arg0":Landroid/net/IIpMemoryStoreCallbacks;
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/ip/IIpClientCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ip/IIpClientCallbacks;

    move-result-object v3

    .line 123
    .local v3, "_arg1":Landroid/net/ip/IIpClientCallbacks;
    invoke-virtual {p0, v2, v3}, Landroid/net/INetworkStackConnector$Stub;->makeIpClient(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V

    .line 124
    return v1

    .line 101
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/net/ip/IIpClientCallbacks;
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 104
    sget-object v2, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Network;

    .local v2, "_arg0":Landroid/net/Network;
    goto :goto_0

    .line 107
    .end local v2    # "_arg0":Landroid/net/Network;
    :cond_4
    const/4 v2, 0x0

    .line 110
    .restart local v2    # "_arg0":Landroid/net/Network;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/INetworkMonitorCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkMonitorCallbacks;

    move-result-object v4

    .line 113
    .local v4, "_arg2":Landroid/net/INetworkMonitorCallbacks;
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/INetworkStackConnector$Stub;->makeNetworkMonitor(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V

    .line 114
    return v1

    .line 84
    .end local v2    # "_arg0":Landroid/net/Network;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/net/INetworkMonitorCallbacks;
    :cond_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 89
    sget-object v3, Landroid/net/dhcp/DhcpServingParamsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/dhcp/DhcpServingParamsParcel;

    .local v3, "_arg1":Landroid/net/dhcp/DhcpServingParamsParcel;
    goto :goto_1

    .line 92
    .end local v3    # "_arg1":Landroid/net/dhcp/DhcpServingParamsParcel;
    :cond_6
    const/4 v3, 0x0

    .line 95
    .restart local v3    # "_arg1":Landroid/net/dhcp/DhcpServingParamsParcel;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/dhcp/IDhcpServerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/dhcp/IDhcpServerCallbacks;

    move-result-object v4

    .line 96
    .local v4, "_arg2":Landroid/net/dhcp/IDhcpServerCallbacks;
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/INetworkStackConnector$Stub;->makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V

    .line 97
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xfffffe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
