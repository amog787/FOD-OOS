.class public abstract Lcom/oneplus/houston/common/client/HoustonServiceNative;
.super Landroid/os/Binder;
.source "HoustonServiceNative.java"

# interfaces
.implements Lcom/oneplus/houston/common/client/IHouston;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/houston/common/client/HoustonServiceNative$HoustonServiceProxy;
    }
.end annotation


# static fields
.field public static final SERVER_NAME:Ljava/lang/String; = "houston_server"

.field private static final TAG:Ljava/lang/String; = "HoustonServiceNative"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    const-string v0, "com.oneplus.common.client.IHouston"

    invoke-virtual {p0, p0, v0}, Lcom/oneplus/houston/common/client/HoustonServiceNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oneplus/houston/common/client/IHouston;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 34
    if-nez p0, :cond_0

    .line 35
    const/4 v0, 0x0

    return-object v0

    .line 37
    :cond_0
    const-string v0, "com.oneplus.common.client.IHouston"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/oneplus/houston/common/client/IHouston;

    .line 38
    .local v0, "in":Lcom/oneplus/houston/common/client/IHouston;
    if-eqz v0, :cond_1

    .line 39
    return-object v0

    .line 41
    :cond_1
    new-instance v1, Lcom/oneplus/houston/common/client/HoustonServiceNative$HoustonServiceProxy;

    invoke-direct {v1, p0}, Lcom/oneplus/houston/common/client/HoustonServiceNative$HoustonServiceProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 46
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "event"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    const-string v0, "com.oneplus.common.client.IHouston"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    const-string v3, "HoustonServiceNative"

    if-eq p1, v2, :cond_2

    const/16 v2, 0xc

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 53
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    return v1

    .line 82
    :cond_1
    const-string v0, "ON_RESULT_TRANSACTION:"

    invoke-static {v3, v0}, Lcom/oneplus/houston/common/client/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/oneplus/houston/common/client/Event;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/houston/common/client/Event;

    .line 85
    .local v0, "e":Lcom/oneplus/houston/common/client/Event;
    invoke-virtual {p0, v0}, Lcom/oneplus/houston/common/client/HoustonServiceNative;->onResult(Lcom/oneplus/houston/common/client/Event;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    return v1

    .line 72
    .end local v0    # "e":Lcom/oneplus/houston/common/client/Event;
    :cond_2
    const-string v0, "ON_SEND_COMMAND_DATA_TRANSACTION:"

    invoke-static {v3, v0}, Lcom/oneplus/houston/common/client/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/oneplus/houston/common/client/Event;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/houston/common/client/Event;

    .line 75
    .local v0, "d":Lcom/oneplus/houston/common/client/Event;
    invoke-virtual {p0, v0}, Lcom/oneplus/houston/common/client/HoustonServiceNative;->sendCommand(Lcom/oneplus/houston/common/client/Event;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    return v1

    .line 65
    .end local v0    # "d":Lcom/oneplus/houston/common/client/Event;
    :cond_3
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 66
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/oneplus/houston/common/client/HoustonServiceNative;->sendCommand(Landroid/content/Intent;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    return v1

    .line 57
    .end local v0    # "i":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 59
    .local v0, "arg":I
    invoke-virtual {p0, v0}, Lcom/oneplus/houston/common/client/HoustonServiceNative;->sendCommand(I)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    return v1
.end method
