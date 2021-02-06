.class public abstract Landroid/net/dhcp/IDhcpServerCallbacks$Stub;
.super Landroid/os/Binder;
.source "IDhcpServerCallbacks.java"

# interfaces
.implements Landroid/net/dhcp/IDhcpServerCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/IDhcpServerCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/dhcp/IDhcpServerCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String;

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onDhcpServerCreated:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    const-string v0, "android$net$dhcp$IDhcpServerCallbacks"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/dhcp/IDhcpServerCallbacks$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    sget-object v0, Landroid/net/dhcp/IDhcpServerCallbacks$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/net/dhcp/IDhcpServerCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Landroid/net/dhcp/IDhcpServerCallbacks$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/dhcp/IDhcpServerCallbacks;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 50
    if-nez p0, :cond_0

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    sget-object v0, Landroid/net/dhcp/IDhcpServerCallbacks$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/dhcp/IDhcpServerCallbacks;

    if-eqz v1, :cond_1

    .line 55
    move-object v1, v0

    check-cast v1, Landroid/net/dhcp/IDhcpServerCallbacks;

    return-object v1

    .line 57
    :cond_1
    new-instance v1, Landroid/net/dhcp/IDhcpServerCallbacks$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/dhcp/IDhcpServerCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/net/dhcp/IDhcpServerCallbacks;
    .locals 1

    .line 200
    sget-object v0, Landroid/net/dhcp/IDhcpServerCallbacks$Stub$Proxy;->sDefaultImpl:Landroid/net/dhcp/IDhcpServerCallbacks;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/dhcp/IDhcpServerCallbacks;)Z
    .locals 2
    .param p0, "impl"    # Landroid/net/dhcp/IDhcpServerCallbacks;

    .line 190
    sget-object v0, Landroid/net/dhcp/IDhcpServerCallbacks$Stub$Proxy;->sDefaultImpl:Landroid/net/dhcp/IDhcpServerCallbacks;

    if-nez v0, :cond_1

    .line 193
    if-eqz p0, :cond_0

    .line 194
    sput-object p0, Landroid/net/dhcp/IDhcpServerCallbacks$Stub$Proxy;->sDefaultImpl:Landroid/net/dhcp/IDhcpServerCallbacks;

    .line 195
    const/4 v0, 0x1

    return v0

    .line 197
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 191
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
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
    sget-object v0, Landroid/net/dhcp/IDhcpServerCallbacks$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 66
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 85
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p0}, Landroid/net/dhcp/IDhcpServerCallbacks$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    return v1

    .line 92
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p0}, Landroid/net/dhcp/IDhcpServerCallbacks$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return v1

    .line 70
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    return v1

    .line 75
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 79
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/dhcp/IDhcpServer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/dhcp/IDhcpServer;

    move-result-object v3

    .line 80
    .local v3, "_arg1":Landroid/net/dhcp/IDhcpServer;
    invoke-virtual {p0, v2, v3}, Landroid/net/dhcp/IDhcpServerCallbacks$Stub;->onDhcpServerCreated(ILandroid/net/dhcp/IDhcpServer;)V

    .line 81
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xfffffe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
