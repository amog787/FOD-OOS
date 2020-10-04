.class public abstract Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub;
.super Landroid/os/Binder;
.source "IOnNetworkAttributesRetrievedListener.java"

# interfaces
.implements Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.ipmemorystore.IOnNetworkAttributesRetrievedListener"

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onNetworkAttributesRetrieved:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "android.net.ipmemorystore.IOnNetworkAttributesRetrievedListener"

    invoke-virtual {p0, p0, v0}, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 44
    if-nez p0, :cond_0

    .line 45
    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_0
    const-string v0, "android.net.ipmemorystore.IOnNetworkAttributesRetrievedListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 48
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;

    if-eqz v1, :cond_1

    .line 49
    move-object v1, v0

    check-cast v1, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;

    return-object v1

    .line 51
    :cond_1
    new-instance v1, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;
    .locals 1

    .line 177
    sget-object v0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;->sDefaultImpl:Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;)Z
    .locals 1
    .param p0, "impl"    # Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;

    .line 170
    sget-object v0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;->sDefaultImpl:Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 171
    sput-object p0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;->sDefaultImpl:Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;

    .line 172
    const/4 v0, 0x1

    return v0

    .line 174
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

    .line 59
    const-string v0, "android.net.ipmemorystore.IOnNetworkAttributesRetrievedListener"

    .line 60
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const v2, 0xffffff

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 64
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return v1

    .line 91
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p0}, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
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

    .line 80
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 81
    sget-object v4, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ipmemorystore/NetworkAttributesParcelable;

    .local v4, "_arg2":Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    goto :goto_1

    .line 84
    .end local v4    # "_arg2":Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    :cond_4
    const/4 v4, 0x0

    .line 86
    .restart local v4    # "_arg2":Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    :goto_1
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub;->onNetworkAttributesRetrieved(Landroid/net/ipmemorystore/StatusParcelable;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributesParcelable;)V

    .line 87
    return v1
.end method
