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
.field private static final DESCRIPTOR:Ljava/lang/String;

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_start:I = 0x1

.field static final TRANSACTION_startWithCallbacks:I = 0x4

.field static final TRANSACTION_stop:I = 0x3

.field static final TRANSACTION_updateParams:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    const-string v0, "android$net$dhcp$IDhcpServer"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/dhcp/IDhcpServer$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 51
    sget-object v0, Landroid/net/dhcp/IDhcpServer$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/net/dhcp/IDhcpServer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Landroid/net/dhcp/IDhcpServer$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/dhcp/IDhcpServer;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 59
    if-nez p0, :cond_0

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_0
    sget-object v0, Landroid/net/dhcp/IDhcpServer$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 63
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/dhcp/IDhcpServer;

    if-eqz v1, :cond_1

    .line 64
    move-object v1, v0

    check-cast v1, Landroid/net/dhcp/IDhcpServer;

    return-object v1

    .line 66
    :cond_1
    new-instance v1, Landroid/net/dhcp/IDhcpServer$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/dhcp/IDhcpServer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/net/dhcp/IDhcpServer;
    .locals 1

    .line 298
    sget-object v0, Landroid/net/dhcp/IDhcpServer$Stub$Proxy;->sDefaultImpl:Landroid/net/dhcp/IDhcpServer;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/dhcp/IDhcpServer;)Z
    .locals 2
    .param p0, "impl"    # Landroid/net/dhcp/IDhcpServer;

    .line 288
    sget-object v0, Landroid/net/dhcp/IDhcpServer$Stub$Proxy;->sDefaultImpl:Landroid/net/dhcp/IDhcpServer;

    if-nez v0, :cond_1

    .line 291
    if-eqz p0, :cond_0

    .line 292
    sput-object p0, Landroid/net/dhcp/IDhcpServer$Stub$Proxy;->sDefaultImpl:Landroid/net/dhcp/IDhcpServer;

    .line 293
    const/4 v0, 0x1

    return v0

    .line 295
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 289
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

    .line 74
    sget-object v0, Landroid/net/dhcp/IDhcpServer$Stub;->DESCRIPTOR:Ljava/lang/String;

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

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 125
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p0}, Landroid/net/dhcp/IDhcpServer$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    return v1

    .line 132
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p0}, Landroid/net/dhcp/IDhcpServer$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    return v1

    .line 79
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return v1

    .line 92
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkStackStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackStatusCallback;

    move-result-object v2

    .line 96
    .local v2, "_arg0":Landroid/net/INetworkStackStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/dhcp/IDhcpEventCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/dhcp/IDhcpEventCallbacks;

    move-result-object v3

    .line 97
    .local v3, "_arg1":Landroid/net/dhcp/IDhcpEventCallbacks;
    invoke-virtual {p0, v2, v3}, Landroid/net/dhcp/IDhcpServer$Stub;->startWithCallbacks(Landroid/net/INetworkStackStatusCallback;Landroid/net/dhcp/IDhcpEventCallbacks;)V

    .line 98
    return v1

    .line 117
    .end local v2    # "_arg0":Landroid/net/INetworkStackStatusCallback;
    .end local v3    # "_arg1":Landroid/net/dhcp/IDhcpEventCallbacks;
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkStackStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackStatusCallback;

    move-result-object v2

    .line 120
    .restart local v2    # "_arg0":Landroid/net/INetworkStackStatusCallback;
    invoke-virtual {p0, v2}, Landroid/net/dhcp/IDhcpServer$Stub;->stop(Landroid/net/INetworkStackStatusCallback;)V

    .line 121
    return v1

    .line 102
    .end local v2    # "_arg0":Landroid/net/INetworkStackStatusCallback;
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 105
    sget-object v2, Landroid/net/dhcp/DhcpServingParamsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/dhcp/DhcpServingParamsParcel;

    .local v2, "_arg0":Landroid/net/dhcp/DhcpServingParamsParcel;
    goto :goto_0

    .line 108
    .end local v2    # "_arg0":Landroid/net/dhcp/DhcpServingParamsParcel;
    :cond_4
    const/4 v2, 0x0

    .line 111
    .restart local v2    # "_arg0":Landroid/net/dhcp/DhcpServingParamsParcel;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/INetworkStackStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackStatusCallback;

    move-result-object v3

    .line 112
    .local v3, "_arg1":Landroid/net/INetworkStackStatusCallback;
    invoke-virtual {p0, v2, v3}, Landroid/net/dhcp/IDhcpServer$Stub;->updateParams(Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/INetworkStackStatusCallback;)V

    .line 113
    return v1

    .line 84
    .end local v2    # "_arg0":Landroid/net/dhcp/DhcpServingParamsParcel;
    .end local v3    # "_arg1":Landroid/net/INetworkStackStatusCallback;
    :cond_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkStackStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackStatusCallback;

    move-result-object v2

    .line 87
    .local v2, "_arg0":Landroid/net/INetworkStackStatusCallback;
    invoke-virtual {p0, v2}, Landroid/net/dhcp/IDhcpServer$Stub;->start(Landroid/net/INetworkStackStatusCallback;)V

    .line 88
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xfffffe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
