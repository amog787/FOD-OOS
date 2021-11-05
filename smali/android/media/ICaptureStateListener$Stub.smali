.class public abstract Landroid/media/ICaptureStateListener$Stub;
.super Landroid/os/Binder;
.source "ICaptureStateListener.java"

# interfaces
.implements Landroid/media/ICaptureStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ICaptureStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ICaptureStateListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String;

.field static final TRANSACTION_setCaptureState:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    const-string v0, "android$media$ICaptureStateListener"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/ICaptureStateListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    sget-object v0, Landroid/media/ICaptureStateListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/media/ICaptureStateListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Landroid/media/ICaptureStateListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/ICaptureStateListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 v0, 0x0

    return-object v0

    .line 36
    :cond_0
    sget-object v0, Landroid/media/ICaptureStateListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/ICaptureStateListener;

    if-eqz v1, :cond_1

    .line 38
    move-object v1, v0

    check-cast v1, Landroid/media/ICaptureStateListener;

    return-object v1

    .line 40
    :cond_1
    new-instance v1, Landroid/media/ICaptureStateListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/ICaptureStateListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/media/ICaptureStateListener;
    .locals 1

    .line 122
    sget-object v0, Landroid/media/ICaptureStateListener$Stub$Proxy;->sDefaultImpl:Landroid/media/ICaptureStateListener;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/media/ICaptureStateListener;)Z
    .locals 2
    .param p0, "impl"    # Landroid/media/ICaptureStateListener;

    .line 112
    sget-object v0, Landroid/media/ICaptureStateListener$Stub$Proxy;->sDefaultImpl:Landroid/media/ICaptureStateListener;

    if-nez v0, :cond_1

    .line 115
    if-eqz p0, :cond_0

    .line 116
    sput-object p0, Landroid/media/ICaptureStateListener$Stub$Proxy;->sDefaultImpl:Landroid/media/ICaptureStateListener;

    .line 117
    const/4 v0, 0x1

    return v0

    .line 119
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 113
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 44
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

    .line 48
    sget-object v0, Landroid/media/ICaptureStateListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 49
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 53
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    return v1

    .line 58
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 61
    .local v2, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v2}, Landroid/media/ICaptureStateListener$Stub;->setCaptureState(Z)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    return v1
.end method
