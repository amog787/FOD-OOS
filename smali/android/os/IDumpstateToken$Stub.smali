.class public abstract Landroid/os/IDumpstateToken$Stub;
.super Landroid/os/Binder;
.source "IDumpstateToken.java"

# interfaces
.implements Landroid/os/IDumpstateToken;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDumpstateToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDumpstateToken$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IDumpstateToken"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 26
    const-string v0, "android.os.IDumpstateToken"

    invoke-virtual {p0, p0, v0}, Landroid/os/IDumpstateToken$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstateToken;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 34
    if-nez p0, :cond_0

    .line 35
    const/4 v0, 0x0

    return-object v0

    .line 37
    :cond_0
    const-string v0, "android.os.IDumpstateToken"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 38
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IDumpstateToken;

    if-eqz v1, :cond_1

    .line 39
    move-object v1, v0

    check-cast v1, Landroid/os/IDumpstateToken;

    return-object v1

    .line 41
    :cond_1
    new-instance v1, Landroid/os/IDumpstateToken$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IDumpstateToken$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/os/IDumpstateToken;
    .locals 1

    .line 88
    sget-object v0, Landroid/os/IDumpstateToken$Stub$Proxy;->sDefaultImpl:Landroid/os/IDumpstateToken;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/os/IDumpstateToken;)Z
    .locals 1
    .param p0, "impl"    # Landroid/os/IDumpstateToken;

    .line 81
    sget-object v0, Landroid/os/IDumpstateToken$Stub$Proxy;->sDefaultImpl:Landroid/os/IDumpstateToken;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 82
    sput-object p0, Landroid/os/IDumpstateToken$Stub$Proxy;->sDefaultImpl:Landroid/os/IDumpstateToken;

    .line 83
    const/4 v0, 0x1

    return v0

    .line 85
    :cond_0
    const/4 v0, 0x0

    return v0
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
    const-string v0, "android.os.IDumpstateToken"

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
