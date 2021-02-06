.class public abstract Landroid/net/dhcp/IDhcpEventCallbacks$Stub;
.super Landroid/os/Binder;
.source "IDhcpEventCallbacks.java"

# interfaces
.implements Landroid/net/dhcp/IDhcpEventCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/IDhcpEventCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/dhcp/IDhcpEventCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String;

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onLeasesChanged:I = 0x1

.field static final TRANSACTION_onNewPrefixRequest:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    const-string v0, "android$net$dhcp$IDhcpEventCallbacks"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/dhcp/IDhcpEventCallbacks$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    sget-object v0, Landroid/net/dhcp/IDhcpEventCallbacks$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/net/dhcp/IDhcpEventCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Landroid/net/dhcp/IDhcpEventCallbacks$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/dhcp/IDhcpEventCallbacks;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_0
    sget-object v0, Landroid/net/dhcp/IDhcpEventCallbacks$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/dhcp/IDhcpEventCallbacks;

    if-eqz v1, :cond_1

    .line 57
    move-object v1, v0

    check-cast v1, Landroid/net/dhcp/IDhcpEventCallbacks;

    return-object v1

    .line 59
    :cond_1
    new-instance v1, Landroid/net/dhcp/IDhcpEventCallbacks$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/dhcp/IDhcpEventCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/net/dhcp/IDhcpEventCallbacks;
    .locals 1

    .line 235
    sget-object v0, Landroid/net/dhcp/IDhcpEventCallbacks$Stub$Proxy;->sDefaultImpl:Landroid/net/dhcp/IDhcpEventCallbacks;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/dhcp/IDhcpEventCallbacks;)Z
    .locals 2
    .param p0, "impl"    # Landroid/net/dhcp/IDhcpEventCallbacks;

    .line 225
    sget-object v0, Landroid/net/dhcp/IDhcpEventCallbacks$Stub$Proxy;->sDefaultImpl:Landroid/net/dhcp/IDhcpEventCallbacks;

    if-nez v0, :cond_1

    .line 228
    if-eqz p0, :cond_0

    .line 229
    sput-object p0, Landroid/net/dhcp/IDhcpEventCallbacks$Stub$Proxy;->sDefaultImpl:Landroid/net/dhcp/IDhcpEventCallbacks;

    .line 230
    const/4 v0, 0x1

    return v0

    .line 232
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 226
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 63
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    sget-object v0, Landroid/net/dhcp/IDhcpEventCallbacks$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 68
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 98
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p0}, Landroid/net/dhcp/IDhcpEventCallbacks$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    return v1

    .line 105
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p0}, Landroid/net/dhcp/IDhcpEventCallbacks$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    return v1

    .line 72
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    return v1

    .line 85
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    sget-object v2, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpPrefix;

    .local v2, "_arg0":Landroid/net/IpPrefix;
    goto :goto_0

    .line 91
    .end local v2    # "_arg0":Landroid/net/IpPrefix;
    :cond_2
    const/4 v2, 0x0

    .line 93
    .restart local v2    # "_arg0":Landroid/net/IpPrefix;
    :goto_0
    invoke-virtual {p0, v2}, Landroid/net/dhcp/IDhcpEventCallbacks$Stub;->onNewPrefixRequest(Landroid/net/IpPrefix;)V

    .line 94
    return v1

    .line 77
    .end local v2    # "_arg0":Landroid/net/IpPrefix;
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    sget-object v2, Landroid/net/dhcp/DhcpLeaseParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 80
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/dhcp/DhcpLeaseParcelable;>;"
    invoke-virtual {p0, v2}, Landroid/net/dhcp/IDhcpEventCallbacks$Stub;->onLeasesChanged(Ljava/util/List;)V

    .line 81
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xfffffe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
