.class public abstract Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;
.super Landroid/os/Binder;
.source "IOIMCRemoteAction.java"

# interfaces
.implements Lcom/oneplus/core/oimc/IOIMCRemoteAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/core/oimc/IOIMCRemoteAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oneplus.core.oimc.IOIMCRemoteAction"

.field static final TRANSACTION_onConfig:I = 0x3

.field static final TRANSACTION_onStart:I = 0x1

.field static final TRANSACTION_onStop:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "com.oneplus.core.oimc.IOIMCRemoteAction"

    invoke-virtual {p0, p0, v0}, Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oneplus/core/oimc/IOIMCRemoteAction;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_0

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_0
    const-string v0, "com.oneplus.core.oimc.IOIMCRemoteAction"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oneplus/core/oimc/IOIMCRemoteAction;

    if-eqz v1, :cond_1

    .line 47
    move-object v1, v0

    check-cast v1, Lcom/oneplus/core/oimc/IOIMCRemoteAction;

    return-object v1

    .line 49
    :cond_1
    new-instance v1, Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/oneplus/core/oimc/IOIMCRemoteAction;
    .locals 1

    .line 192
    sget-object v0, Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub$Proxy;->sDefaultImpl:Lcom/oneplus/core/oimc/IOIMCRemoteAction;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/oneplus/core/oimc/IOIMCRemoteAction;)Z
    .locals 1
    .param p0, "impl"    # Lcom/oneplus/core/oimc/IOIMCRemoteAction;

    .line 185
    sget-object v0, Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub$Proxy;->sDefaultImpl:Lcom/oneplus/core/oimc/IOIMCRemoteAction;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 186
    sput-object p0, Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub$Proxy;->sDefaultImpl:Lcom/oneplus/core/oimc/IOIMCRemoteAction;

    .line 187
    const/4 v0, 0x1

    return v0

    .line 189
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 53
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

    .line 57
    const-string v0, "com.oneplus.core.oimc.IOIMCRemoteAction"

    .line 58
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 62
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    return v1

    .line 87
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;->onConfig(Ljava/lang/String;)I

    move-result v3

    .line 91
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    return v1

    .line 77
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;->onStop([Ljava/lang/String;)I

    move-result v3

    .line 81
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    return v1

    .line 67
    .end local v2    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_result":I
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 70
    .restart local v2    # "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;->onStart([Ljava/lang/String;)I

    move-result v3

    .line 71
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    return v1
.end method
