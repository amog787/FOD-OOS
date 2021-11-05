.class public abstract Lcom/android/internal/net/IOemNetdUnsolicitedEventListener$Stub;
.super Landroid/os/Binder;
.source "IOemNetdUnsolicitedEventListener.java"

# interfaces
.implements Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/IOemNetdUnsolicitedEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String;

.field static final TRANSACTION_onRegistered:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    const-string v0, "com$android$internal$net$IOemNetdUnsolicitedEventListener"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    sget-object v0, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 41
    if-nez p0, :cond_0

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_0
    sget-object v0, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;

    if-eqz v1, :cond_1

    .line 46
    move-object v1, v0

    check-cast v1, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;

    return-object v1

    .line 48
    :cond_1
    new-instance v1, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;
    .locals 1

    .line 128
    sget-object v0, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;)Z
    .locals 2
    .param p0, "impl"    # Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;

    .line 118
    sget-object v0, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;

    if-nez v0, :cond_1

    .line 121
    if-eqz p0, :cond_0

    .line 122
    sput-object p0, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;

    .line 123
    const/4 v0, 0x1

    return v0

    .line 125
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 119
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 52
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    sget-object v0, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 57
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 61
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    return v1

    .line 66
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener$Stub;->onRegistered()V

    .line 68
    return v1
.end method
