.class public abstract Landroid/net/ipmemorystore/IOnL2KeyResponseListener$Stub;
.super Landroid/os/Binder;
.source "IOnL2KeyResponseListener.java"

# interfaces
.implements Landroid/net/ipmemorystore/IOnL2KeyResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipmemorystore/IOnL2KeyResponseListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ipmemorystore/IOnL2KeyResponseListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.ipmemorystore.IOnL2KeyResponseListener"

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onL2KeyResponse:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "android.net.ipmemorystore.IOnL2KeyResponseListener"

    invoke-virtual {p0, p0, v0}, Landroid/net/ipmemorystore/IOnL2KeyResponseListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnL2KeyResponseListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 44
    if-nez p0, :cond_0

    .line 45
    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_0
    const-string v0, "android.net.ipmemorystore.IOnL2KeyResponseListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 48
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/ipmemorystore/IOnL2KeyResponseListener;

    if-eqz v1, :cond_1

    .line 49
    move-object v1, v0

    check-cast v1, Landroid/net/ipmemorystore/IOnL2KeyResponseListener;

    return-object v1

    .line 51
    :cond_1
    new-instance v1, Landroid/net/ipmemorystore/IOnL2KeyResponseListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/ipmemorystore/IOnL2KeyResponseListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/net/ipmemorystore/IOnL2KeyResponseListener;
    .locals 1

    .line 163
    sget-object v0, Landroid/net/ipmemorystore/IOnL2KeyResponseListener$Stub$Proxy;->sDefaultImpl:Landroid/net/ipmemorystore/IOnL2KeyResponseListener;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/ipmemorystore/IOnL2KeyResponseListener;)Z
    .locals 1
    .param p0, "impl"    # Landroid/net/ipmemorystore/IOnL2KeyResponseListener;

    .line 156
    sget-object v0, Landroid/net/ipmemorystore/IOnL2KeyResponseListener$Stub$Proxy;->sDefaultImpl:Landroid/net/ipmemorystore/IOnL2KeyResponseListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 157
    sput-object p0, Landroid/net/ipmemorystore/IOnL2KeyResponseListener$Stub$Proxy;->sDefaultImpl:Landroid/net/ipmemorystore/IOnL2KeyResponseListener;

    .line 158
    const/4 v0, 0x1

    return v0

    .line 160
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 55
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

    .line 59
    const-string v0, "android.net.ipmemorystore.IOnL2KeyResponseListener"

    .line 60
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const v2, 0xffffff

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 64
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return v1

    .line 84
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p0}, Landroid/net/ipmemorystore/IOnL2KeyResponseListener$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    return v1

    .line 69
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 72
    sget-object v2, Landroid/net/ipmemorystore/StatusParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ipmemorystore/StatusParcelable;

    .local v2, "_arg0":Landroid/net/ipmemorystore/StatusParcelable;
    goto :goto_0

    .line 75
    .end local v2    # "_arg0":Landroid/net/ipmemorystore/StatusParcelable;
    :cond_3
    const/4 v2, 0x0

    .line 78
    .restart local v2    # "_arg0":Landroid/net/ipmemorystore/StatusParcelable;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/net/ipmemorystore/IOnL2KeyResponseListener$Stub;->onL2KeyResponse(Landroid/net/ipmemorystore/StatusParcelable;Ljava/lang/String;)V

    .line 80
    return v1
.end method
