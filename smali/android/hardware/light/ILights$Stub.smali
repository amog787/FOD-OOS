.class public abstract Landroid/hardware/light/ILights$Stub;
.super Landroid/os/Binder;
.source "ILights.java"

# interfaces
.implements Landroid/hardware/light/ILights;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/light/ILights;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/light/ILights$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String;

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getLights:I = 0x2

.field static final TRANSACTION_setLightState:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    const-string v0, "android$hardware$light$ILights"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/light/ILights$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    invoke-virtual {p0}, Landroid/hardware/light/ILights$Stub;->markVintfStability()V

    .line 46
    sget-object v0, Landroid/hardware/light/ILights$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/light/ILights$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Landroid/hardware/light/ILights$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/light/ILights;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 54
    if-nez p0, :cond_0

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_0
    sget-object v0, Landroid/hardware/light/ILights$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/light/ILights;

    if-eqz v1, :cond_1

    .line 59
    move-object v1, v0

    check-cast v1, Landroid/hardware/light/ILights;

    return-object v1

    .line 61
    :cond_1
    new-instance v1, Landroid/hardware/light/ILights$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/light/ILights$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/hardware/light/ILights;
    .locals 1

    .line 248
    sget-object v0, Landroid/hardware/light/ILights$Stub$Proxy;->sDefaultImpl:Landroid/hardware/light/ILights;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/hardware/light/ILights;)Z
    .locals 2
    .param p0, "impl"    # Landroid/hardware/light/ILights;

    .line 238
    sget-object v0, Landroid/hardware/light/ILights$Stub$Proxy;->sDefaultImpl:Landroid/hardware/light/ILights;

    if-nez v0, :cond_1

    .line 241
    if-eqz p0, :cond_0

    .line 242
    sput-object p0, Landroid/hardware/light/ILights$Stub$Proxy;->sDefaultImpl:Landroid/hardware/light/ILights;

    .line 243
    const/4 v0, 0x1

    return v0

    .line 245
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 239
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 65
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

    .line 69
    sget-object v0, Landroid/hardware/light/ILights$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 70
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 103
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p0}, Landroid/hardware/light/ILights$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return v1

    .line 110
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p0}, Landroid/hardware/light/ILights$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    return v1

    .line 74
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    return v1

    .line 95
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Landroid/hardware/light/ILights$Stub;->getLights()[Landroid/hardware/light/HwLight;

    move-result-object v2

    .line 97
    .local v2, "_result":[Landroid/hardware/light/HwLight;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 99
    return v1

    .line 79
    .end local v2    # "_result":[Landroid/hardware/light/HwLight;
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 83
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 84
    sget-object v3, Landroid/hardware/light/HwLightState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/light/HwLightState;

    .local v3, "_arg1":Landroid/hardware/light/HwLightState;
    goto :goto_0

    .line 87
    .end local v3    # "_arg1":Landroid/hardware/light/HwLightState;
    :cond_3
    const/4 v3, 0x0

    .line 89
    .restart local v3    # "_arg1":Landroid/hardware/light/HwLightState;
    :goto_0
    invoke-virtual {p0, v2, v3}, Landroid/hardware/light/ILights$Stub;->setLightState(ILandroid/hardware/light/HwLightState;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xfffffe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
