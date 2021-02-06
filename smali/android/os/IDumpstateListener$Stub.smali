.class public abstract Landroid/os/IDumpstateListener$Stub;
.super Landroid/os/Binder;
.source "IDumpstateListener.java"

# interfaces
.implements Landroid/os/IDumpstateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDumpstateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDumpstateListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IDumpstateListener"

.field static final TRANSACTION_onError:I = 0x2

.field static final TRANSACTION_onFinished:I = 0x3

.field static final TRANSACTION_onProgress:I = 0x1

.field static final TRANSACTION_onScreenshotTaken:I = 0x4

.field static final TRANSACTION_onUiIntensiveBugreportDumpsFinished:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 66
    const-string v0, "android.os.IDumpstateListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/IDumpstateListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstateListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 74
    if-nez p0, :cond_0

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_0
    const-string v0, "android.os.IDumpstateListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 78
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IDumpstateListener;

    if-eqz v1, :cond_1

    .line 79
    move-object v1, v0

    check-cast v1, Landroid/os/IDumpstateListener;

    return-object v1

    .line 81
    :cond_1
    new-instance v1, Landroid/os/IDumpstateListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IDumpstateListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/os/IDumpstateListener;
    .locals 1

    .line 279
    sget-object v0, Landroid/os/IDumpstateListener$Stub$Proxy;->sDefaultImpl:Landroid/os/IDumpstateListener;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/os/IDumpstateListener;)Z
    .locals 2
    .param p0, "impl"    # Landroid/os/IDumpstateListener;

    .line 269
    sget-object v0, Landroid/os/IDumpstateListener$Stub$Proxy;->sDefaultImpl:Landroid/os/IDumpstateListener;

    if-nez v0, :cond_1

    .line 272
    if-eqz p0, :cond_0

    .line 273
    sput-object p0, Landroid/os/IDumpstateListener$Stub$Proxy;->sDefaultImpl:Landroid/os/IDumpstateListener;

    .line 274
    const/4 v0, 0x1

    return v0

    .line 276
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 270
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 85
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

    .line 89
    const-string v0, "android.os.IDumpstateListener"

    .line 90
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 94
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return v1

    .line 130
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/IDumpstateListener$Stub;->onUiIntensiveBugreportDumpsFinished(Ljava/lang/String;)V

    .line 134
    return v1

    .line 122
    .end local v2    # "_arg0":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 125
    .local v2, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v2}, Landroid/os/IDumpstateListener$Stub;->onScreenshotTaken(Z)V

    .line 126
    return v1

    .line 116
    .end local v2    # "_arg0":Z
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Landroid/os/IDumpstateListener$Stub;->onFinished()V

    .line 118
    return v1

    .line 107
    :cond_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 110
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/os/IDumpstateListener$Stub;->onError(I)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    return v1

    .line 99
    .end local v2    # "_arg0":I
    :cond_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 102
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/os/IDumpstateListener$Stub;->onProgress(I)V

    .line 103
    return v1
.end method
