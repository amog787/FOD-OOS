.class public abstract Landroid/os/OverlayablePolicy$Stub;
.super Landroid/os/Binder;
.source "OverlayablePolicy.java"

# interfaces
.implements Landroid/os/OverlayablePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/OverlayablePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/OverlayablePolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    const-string v0, "android$os$OverlayablePolicy"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/OverlayablePolicy$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 26
    sget-object v0, Landroid/os/OverlayablePolicy$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/OverlayablePolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Landroid/os/OverlayablePolicy$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/OverlayablePolicy;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 34
    if-nez p0, :cond_0

    .line 35
    const/4 v0, 0x0

    return-object v0

    .line 37
    :cond_0
    sget-object v0, Landroid/os/OverlayablePolicy$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 38
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/OverlayablePolicy;

    if-eqz v1, :cond_1

    .line 39
    move-object v1, v0

    check-cast v1, Landroid/os/OverlayablePolicy;

    return-object v1

    .line 41
    :cond_1
    new-instance v1, Landroid/os/OverlayablePolicy$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/OverlayablePolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/os/OverlayablePolicy;
    .locals 1

    .line 94
    sget-object v0, Landroid/os/OverlayablePolicy$Stub$Proxy;->sDefaultImpl:Landroid/os/OverlayablePolicy;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/os/OverlayablePolicy;)Z
    .locals 2
    .param p0, "impl"    # Landroid/os/OverlayablePolicy;

    .line 84
    sget-object v0, Landroid/os/OverlayablePolicy$Stub$Proxy;->sDefaultImpl:Landroid/os/OverlayablePolicy;

    if-nez v0, :cond_1

    .line 87
    if-eqz p0, :cond_0

    .line 88
    sput-object p0, Landroid/os/OverlayablePolicy$Stub$Proxy;->sDefaultImpl:Landroid/os/OverlayablePolicy;

    .line 89
    const/4 v0, 0x1

    return v0

    .line 91
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 85
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 45
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    sget-object v0, Landroid/os/OverlayablePolicy$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 50
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    if-eq p1, v1, :cond_0

    .line 59
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 54
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    const/4 v1, 0x1

    return v1
.end method
