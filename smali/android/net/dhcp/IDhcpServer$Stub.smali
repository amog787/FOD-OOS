.class public abstract Landroid/net/dhcp/IDhcpServer$Stub;
.super Landroid/os/Binder;
.source "IDhcpServer.java"

# interfaces
.implements Landroid/net/dhcp/IDhcpServer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/IDhcpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/dhcp/IDhcpServer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.dhcp.IDhcpServer"

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_start:I = 0x1

.field static final TRANSACTION_stop:I = 0x3

.field static final TRANSACTION_updateParams:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    const-string v0, "android.net.dhcp.IDhcpServer"

    invoke-virtual {p0, p0, v0}, Landroid/net/dhcp/IDhcpServer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/dhcp/IDhcpServer;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 50
    if-nez p0, :cond_0

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    const-string v0, "android.net.dhcp.IDhcpServer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/dhcp/IDhcpServer;

    if-eqz v1, :cond_1

    .line 55
    move-object v1, v0

    check-cast v1, Landroid/net/dhcp/IDhcpServer;

    return-object v1

    .line 57
    :cond_1
    new-instance v1, Landroid/net/dhcp/IDhcpServer$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/dhcp/IDhcpServer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/net/dhcp/IDhcpServer;
    .locals 1

    .line 219
    sget-object v0, Landroid/net/dhcp/IDhcpServer$Stub$Proxy;->sDefaultImpl:Landroid/net/dhcp/IDhcpServer;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/dhcp/IDhcpServer;)Z
    .locals 1
    .param p0, "impl"    # Landroid/net/dhcp/IDhcpServer;

    .line 212
    sget-object v0, Landroid/net/dhcp/IDhcpServer$Stub$Proxy;->sDefaultImpl:Landroid/net/dhcp/IDhcpServer;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 213
    sput-object p0, Landroid/net/dhcp/IDhcpServer$Stub$Proxy;->sDefaultImpl:Landroid/net/dhcp/IDhcpServer;

    .line 214
    const/4 v0, 0x1

    return v0

    .line 216
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 61
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

    .line 65
    const-string v0, "android.net.dhcp.IDhcpServer"

    .line 66
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const v2, 0xffffff

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 70
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    return v1

    .line 106
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p0}, Landroid/net/dhcp/IDhcpServer$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    return v1

    .line 98
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkStackStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackStatusCallback;

    move-result-object v2

    .line 101
    .local v2, "_arg0":Landroid/net/INetworkStackStatusCallback;
    invoke-virtual {p0, v2}, Landroid/net/dhcp/IDhcpServer$Stub;->stop(Landroid/net/INetworkStackStatusCallback;)V

    .line 102
    return v1

    .line 83
    .end local v2    # "_arg0":Landroid/net/INetworkStackStatusCallback;
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 86
    sget-object v2, Landroid/net/dhcp/DhcpServingParamsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/dhcp/DhcpServingParamsParcel;

    .local v2, "_arg0":Landroid/net/dhcp/DhcpServingParamsParcel;
    goto :goto_0

    .line 89
    .end local v2    # "_arg0":Landroid/net/dhcp/DhcpServingParamsParcel;
    :cond_4
    const/4 v2, 0x0

    .line 92
    .restart local v2    # "_arg0":Landroid/net/dhcp/DhcpServingParamsParcel;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/INetworkStackStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackStatusCallback;

    move-result-object v3

    .line 93
    .local v3, "_arg1":Landroid/net/INetworkStackStatusCallback;
    invoke-virtual {p0, v2, v3}, Landroid/net/dhcp/IDhcpServer$Stub;->updateParams(Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/INetworkStackStatusCallback;)V

    .line 94
    return v1

    .line 75
    .end local v2    # "_arg0":Landroid/net/dhcp/DhcpServingParamsParcel;
    .end local v3    # "_arg1":Landroid/net/INetworkStackStatusCallback;
    :cond_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkStackStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackStatusCallback;

    move-result-object v2

    .line 78
    .local v2, "_arg0":Landroid/net/INetworkStackStatusCallback;
    invoke-virtual {p0, v2}, Landroid/net/dhcp/IDhcpServer$Stub;->start(Landroid/net/INetworkStackStatusCallback;)V

    .line 79
    return v1
.end method
