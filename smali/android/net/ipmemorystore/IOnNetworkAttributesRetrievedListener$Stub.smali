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
.field private static final DESCRIPTOR:Ljava/lang/String;

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onNetworkAttributesRetrieved:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    const-string v0, "android$net$ipmemorystore$IOnNetworkAttributesRetrievedListener"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    sget-object v0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 50
    if-nez p0, :cond_0

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    sget-object v0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;

    if-eqz v1, :cond_1

    .line 55
    move-object v1, v0

    check-cast v1, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;

    return-object v1

    .line 57
    :cond_1
    new-instance v1, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;
    .locals 1

    .line 225
    sget-object v0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;->sDefaultImpl:Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;)Z
    .locals 2
    .param p0, "impl"    # Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;

    .line 215
    sget-object v0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;->sDefaultImpl:Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;

    if-nez v0, :cond_1

    .line 218
    if-eqz p0, :cond_0

    .line 219
    sput-object p0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;->sDefaultImpl:Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;

    .line 220
    const/4 v0, 0x1

    return v0

    .line 222
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 216
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

    .line 65
    sget-object v0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 66
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 97
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p0}, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    return v1

    .line 104
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p0}, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
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

    if-eqz v2, :cond_2

    .line 78
    sget-object v2, Landroid/net/ipmemorystore/StatusParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ipmemorystore/StatusParcelable;

    .local v2, "_arg0":Landroid/net/ipmemorystore/StatusParcelable;
    goto :goto_0

    .line 81
    .end local v2    # "_arg0":Landroid/net/ipmemorystore/StatusParcelable;
    :cond_2
    const/4 v2, 0x0

    .line 84
    .restart local v2    # "_arg0":Landroid/net/ipmemorystore/StatusParcelable;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 87
    sget-object v4, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ipmemorystore/NetworkAttributesParcelable;

    .local v4, "_arg2":Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    goto :goto_1

    .line 90
    .end local v4    # "_arg2":Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    :cond_3
    const/4 v4, 0x0

    .line 92
    .restart local v4    # "_arg2":Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    :goto_1
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub;->onNetworkAttributesRetrieved(Landroid/net/ipmemorystore/StatusParcelable;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributesParcelable;)V

    .line 93
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xfffffe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
