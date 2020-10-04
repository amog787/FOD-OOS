.class public abstract Landroid/net/INetworkMonitorCallbacks$Stub;
.super Landroid/os/Binder;
.source "INetworkMonitorCallbacks.java"

# interfaces
.implements Landroid/net/INetworkMonitorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkMonitorCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkMonitorCallbacks"

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_hideProvisioningNotification:I = 0x5

.field static final TRANSACTION_notifyNetworkTested:I = 0x2

.field static final TRANSACTION_notifyPrivateDnsConfigResolved:I = 0x3

.field static final TRANSACTION_onNetworkMonitorCreated:I = 0x1

.field static final TRANSACTION_showProvisioningNotification:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    const-string v0, "android.net.INetworkMonitorCallbacks"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkMonitorCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkMonitorCallbacks;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 56
    if-nez p0, :cond_0

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_0
    const-string v0, "android.net.INetworkMonitorCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/INetworkMonitorCallbacks;

    if-eqz v1, :cond_1

    .line 61
    move-object v1, v0

    check-cast v1, Landroid/net/INetworkMonitorCallbacks;

    return-object v1

    .line 63
    :cond_1
    new-instance v1, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;
    .locals 1

    .line 275
    sget-object v0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkMonitorCallbacks;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/INetworkMonitorCallbacks;)Z
    .locals 1
    .param p0, "impl"    # Landroid/net/INetworkMonitorCallbacks;

    .line 268
    sget-object v0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkMonitorCallbacks;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 269
    sput-object p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkMonitorCallbacks;

    .line 270
    const/4 v0, 0x1

    return v0

    .line 272
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 67
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

    .line 71
    const-string v0, "android.net.INetworkMonitorCallbacks"

    .line 72
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_7

    const/4 v2, 0x2

    if-eq p1, v2, :cond_6

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    const v2, 0xffffff

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 76
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    return v1

    .line 128
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p0}, Landroid/net/INetworkMonitorCallbacks$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    return v1

    .line 122
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Landroid/net/INetworkMonitorCallbacks$Stub;->hideProvisioningNotification()V

    .line 124
    return v1

    .line 112
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/net/INetworkMonitorCallbacks$Stub;->showProvisioningNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return v1

    .line 99
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 102
    sget-object v2, Landroid/net/PrivateDnsConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/PrivateDnsConfigParcel;

    .local v2, "_arg0":Landroid/net/PrivateDnsConfigParcel;
    goto :goto_0

    .line 105
    .end local v2    # "_arg0":Landroid/net/PrivateDnsConfigParcel;
    :cond_5
    const/4 v2, 0x0

    .line 107
    .restart local v2    # "_arg0":Landroid/net/PrivateDnsConfigParcel;
    :goto_0
    invoke-virtual {p0, v2}, Landroid/net/INetworkMonitorCallbacks$Stub;->notifyPrivateDnsConfigResolved(Landroid/net/PrivateDnsConfigParcel;)V

    .line 108
    return v1

    .line 89
    .end local v2    # "_arg0":Landroid/net/PrivateDnsConfigParcel;
    :cond_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 93
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 94
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/net/INetworkMonitorCallbacks$Stub;->notifyNetworkTested(ILjava/lang/String;)V

    .line 95
    return v1

    .line 81
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :cond_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkMonitor;

    move-result-object v2

    .line 84
    .local v2, "_arg0":Landroid/net/INetworkMonitor;
    invoke-virtual {p0, v2}, Landroid/net/INetworkMonitorCallbacks$Stub;->onNetworkMonitorCreated(Landroid/net/INetworkMonitor;)V

    .line 85
    return v1
.end method
