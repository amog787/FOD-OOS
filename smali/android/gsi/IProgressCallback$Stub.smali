.class public abstract Landroid/gsi/IProgressCallback$Stub;
.super Landroid/os/Binder;
.source "IProgressCallback.java"

# interfaces
.implements Landroid/gsi/IProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gsi/IProgressCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gsi/IProgressCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.gsi.IProgressCallback"

.field static final TRANSACTION_onProgress:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "android.gsi.IProgressCallback"

    invoke-virtual {p0, p0, v0}, Landroid/gsi/IProgressCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/gsi/IProgressCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 46
    if-nez p0, :cond_0

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_0
    const-string v0, "android.gsi.IProgressCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/gsi/IProgressCallback;

    if-eqz v1, :cond_1

    .line 51
    move-object v1, v0

    check-cast v1, Landroid/gsi/IProgressCallback;

    return-object v1

    .line 53
    :cond_1
    new-instance v1, Landroid/gsi/IProgressCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/gsi/IProgressCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/gsi/IProgressCallback;
    .locals 1

    .line 150
    sget-object v0, Landroid/gsi/IProgressCallback$Stub$Proxy;->sDefaultImpl:Landroid/gsi/IProgressCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/gsi/IProgressCallback;)Z
    .locals 2
    .param p0, "impl"    # Landroid/gsi/IProgressCallback;

    .line 140
    sget-object v0, Landroid/gsi/IProgressCallback$Stub$Proxy;->sDefaultImpl:Landroid/gsi/IProgressCallback;

    if-nez v0, :cond_1

    .line 143
    if-eqz p0, :cond_0

    .line 144
    sput-object p0, Landroid/gsi/IProgressCallback$Stub$Proxy;->sDefaultImpl:Landroid/gsi/IProgressCallback;

    .line 145
    const/4 v0, 0x1

    return v0

    .line 147
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 141
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 57
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

    .line 61
    const-string v0, "android.gsi.IProgressCallback"

    .line 62
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 66
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    return v1

    .line 71
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 75
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 76
    .local v4, "_arg1":J
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/gsi/IProgressCallback$Stub;->onProgress(JJ)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    return v1
.end method
