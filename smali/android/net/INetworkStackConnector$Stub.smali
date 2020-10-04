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
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkStackConnector"

.field static final TRANSACTION_fetchIpMemoryStore:I = 0x4

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_makeDhcpServer:I = 0x1

.field static final TRANSACTION_makeIpClient:I = 0x3

.field static final TRANSACTION_makeNetworkMonitor:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    const-string v0, "android.net.INetworkStackConnector"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkStackConnector$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackConnector;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 53
    if-nez p0, :cond_0

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_0
    const-string v0, "android.net.INetworkStackConnector"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/INetworkStackConnector;

    if-eqz v1, :cond_1

    .line 58
    move-object v1, v0

    check-cast v1, Landroid/net/INetworkStackConnector;

    return-object v1

    .line 60
    :cond_1
    new-instance v1, Landroid/net/INetworkStackConnector$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetworkStackConnector$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/net/INetworkStackConnector;
    .locals 1

    .line 270
    sget-object v0, Landroid/net/INetworkStackConnector$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkStackConnector;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/INetworkStackConnector;)Z
    .locals 1
    .param p0, "impl"    # Landroid/net/INetworkStackConnector;

    .line 263
    sget-object v0, Landroid/net/INetworkStackConnector$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkStackConnector;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 264
    sput-object p0, Landroid/net/INetworkStackConnector$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkStackConnector;

    .line 265
    const/4 v0, 0x1

    return v0

    .line 267
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 64
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

    .line 68
    const-string v0, "android.net.INetworkStackConnector"

    .line 69
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const v2, 0xffffff

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 73
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    return v1

    .line 130
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p0}, Landroid/net/INetworkStackConnector$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    return v1

    .line 122
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/IIpMemoryStoreCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpMemoryStoreCallbacks;

    move-result-object v2

    .line 125
    .local v2, "_arg0":Landroid/net/IIpMemoryStoreCallbacks;
    invoke-virtual {p0, v2}, Landroid/net/INetworkStackConnector$Stub;->fetchIpMemoryStore(Landroid/net/IIpMemoryStoreCallbacks;)V

    .line 126
    return v1

    .line 112
    .end local v2    # "_arg0":Landroid/net/IIpMemoryStoreCallbacks;
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/ip/IIpClientCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ip/IIpClientCallbacks;

    move-result-object v3

    .line 117
    .local v3, "_arg1":Landroid/net/ip/IIpClientCallbacks;
    invoke-virtual {p0, v2, v3}, Landroid/net/INetworkStackConnector$Stub;->makeIpClient(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V

    .line 118
    return v1

    .line 95
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/net/ip/IIpClientCallbacks;
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 98
    sget-object v2, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Network;

    .local v2, "_arg0":Landroid/net/Network;
    goto :goto_0

    .line 101
    .end local v2    # "_arg0":Landroid/net/Network;
    :cond_5
    const/4 v2, 0x0

    .line 104
    .restart local v2    # "_arg0":Landroid/net/Network;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/INetworkMonitorCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkMonitorCallbacks;

    move-result-object v4

    .line 107
    .local v4, "_arg2":Landroid/net/INetworkMonitorCallbacks;
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/INetworkStackConnector$Stub;->makeNetworkMonitor(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V

    .line 108
    return v1

    .line 78
    .end local v2    # "_arg0":Landroid/net/Network;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/net/INetworkMonitorCallbacks;
    :cond_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    .line 83
    sget-object v3, Landroid/net/dhcp/DhcpServingParamsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/dhcp/DhcpServingParamsParcel;

    .local v3, "_arg1":Landroid/net/dhcp/DhcpServingParamsParcel;
    goto :goto_1

    .line 86
    .end local v3    # "_arg1":Landroid/net/dhcp/DhcpServingParamsParcel;
    :cond_7
    const/4 v3, 0x0

    .line 89
    .restart local v3    # "_arg1":Landroid/net/dhcp/DhcpServingParamsParcel;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/dhcp/IDhcpServerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/dhcp/IDhcpServerCallbacks;

    move-result-object v4

    .line 90
    .local v4, "_arg2":Landroid/net/dhcp/IDhcpServerCallbacks;
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/INetworkStackConnector$Stub;->makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V

    .line 91
    return v1
.end method
