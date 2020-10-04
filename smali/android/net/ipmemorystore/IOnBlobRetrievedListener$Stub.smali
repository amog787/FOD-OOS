.class public abstract Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub;
.super Landroid/os/Binder;
.source "IOnBlobRetrievedListener.java"

# interfaces
.implements Landroid/net/ipmemorystore/IOnBlobRetrievedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipmemorystore/IOnBlobRetrievedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.ipmemorystore.IOnBlobRetrievedListener"

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onBlobRetrieved:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "android.net.ipmemorystore.IOnBlobRetrievedListener"

    invoke-virtual {p0, p0, v0}, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnBlobRetrievedListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 44
    if-nez p0, :cond_0

    .line 45
    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_0
    const-string v0, "android.net.ipmemorystore.IOnBlobRetrievedListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 48
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/ipmemorystore/IOnBlobRetrievedListener;

    if-eqz v1, :cond_1

    .line 49
    move-object v1, v0

    check-cast v1, Landroid/net/ipmemorystore/IOnBlobRetrievedListener;

    return-object v1

    .line 51
    :cond_1
    new-instance v1, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/net/ipmemorystore/IOnBlobRetrievedListener;
    .locals 1

    .line 180
    sget-object v0, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;->sDefaultImpl:Landroid/net/ipmemorystore/IOnBlobRetrievedListener;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/ipmemorystore/IOnBlobRetrievedListener;)Z
    .locals 1
    .param p0, "impl"    # Landroid/net/ipmemorystore/IOnBlobRetrievedListener;

    .line 173
    sget-object v0, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;->sDefaultImpl:Landroid/net/ipmemorystore/IOnBlobRetrievedListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 174
    sput-object p0, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;->sDefaultImpl:Landroid/net/ipmemorystore/IOnBlobRetrievedListener;

    .line 175
    const/4 v0, 0x1

    return v0

    .line 177
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
    .locals 6
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
    const-string v0, "android.net.ipmemorystore.IOnBlobRetrievedListener"

    .line 60
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const v2, 0xffffff

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 64
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return v1

    .line 93
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p0}, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 83
    sget-object v5, Landroid/net/ipmemorystore/Blob;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ipmemorystore/Blob;

    .local v5, "_arg3":Landroid/net/ipmemorystore/Blob;
    goto :goto_1

    .line 86
    .end local v5    # "_arg3":Landroid/net/ipmemorystore/Blob;
    :cond_4
    const/4 v5, 0x0

    .line 88
    .restart local v5    # "_arg3":Landroid/net/ipmemorystore/Blob;
    :goto_1
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub;->onBlobRetrieved(Landroid/net/ipmemorystore/StatusParcelable;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;)V

    .line 89
    return v1
.end method
