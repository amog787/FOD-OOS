.class public abstract Lcom/google/android/startop/iorap/ITaskListener$Stub;
.super Landroid/os/Binder;
.source "ITaskListener.java"

# interfaces
.implements Lcom/google/android/startop/iorap/ITaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/ITaskListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/startop/iorap/ITaskListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.startop.iorap.ITaskListener"

.field static final TRANSACTION_onComplete:I = 0x2

.field static final TRANSACTION_onProgress:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "com.google.android.startop.iorap.ITaskListener"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/startop/iorap/ITaskListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/startop/iorap/ITaskListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_0

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_0
    const-string v0, "com.google.android.startop.iorap.ITaskListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/startop/iorap/ITaskListener;

    if-eqz v1, :cond_1

    .line 47
    move-object v1, v0

    check-cast v1, Lcom/google/android/startop/iorap/ITaskListener;

    return-object v1

    .line 49
    :cond_1
    new-instance v1, Lcom/google/android/startop/iorap/ITaskListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/google/android/startop/iorap/ITaskListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/google/android/startop/iorap/ITaskListener;
    .locals 1

    .line 196
    sget-object v0, Lcom/google/android/startop/iorap/ITaskListener$Stub$Proxy;->sDefaultImpl:Lcom/google/android/startop/iorap/ITaskListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/google/android/startop/iorap/ITaskListener;)Z
    .locals 1
    .param p0, "impl"    # Lcom/google/android/startop/iorap/ITaskListener;

    .line 189
    sget-object v0, Lcom/google/android/startop/iorap/ITaskListener$Stub$Proxy;->sDefaultImpl:Lcom/google/android/startop/iorap/ITaskListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 190
    sput-object p0, Lcom/google/android/startop/iorap/ITaskListener$Stub$Proxy;->sDefaultImpl:Lcom/google/android/startop/iorap/ITaskListener;

    .line 191
    const/4 v0, 0x1

    return v0

    .line 193
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
    const-string v0, "com.google.android.startop.iorap.ITaskListener"

    .line 58
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 107
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    sget-object v2, Lcom/google/android/startop/iorap/RequestId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/startop/iorap/RequestId;

    .local v2, "_arg0":Lcom/google/android/startop/iorap/RequestId;
    goto :goto_0

    .line 93
    .end local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    :cond_2
    const/4 v2, 0x0

    .line 96
    .restart local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 97
    sget-object v3, Lcom/google/android/startop/iorap/TaskResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/startop/iorap/TaskResult;

    .local v3, "_arg1":Lcom/google/android/startop/iorap/TaskResult;
    goto :goto_1

    .line 100
    .end local v3    # "_arg1":Lcom/google/android/startop/iorap/TaskResult;
    :cond_3
    const/4 v3, 0x0

    .line 102
    .restart local v3    # "_arg1":Lcom/google/android/startop/iorap/TaskResult;
    :goto_1
    invoke-virtual {p0, v2, v3}, Lcom/google/android/startop/iorap/ITaskListener$Stub;->onComplete(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/TaskResult;)V

    .line 103
    return v1

    .line 67
    .end local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    .end local v3    # "_arg1":Lcom/google/android/startop/iorap/TaskResult;
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 70
    sget-object v2, Lcom/google/android/startop/iorap/RequestId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/startop/iorap/RequestId;

    .restart local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    goto :goto_2

    .line 73
    .end local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    :cond_5
    const/4 v2, 0x0

    .line 76
    .restart local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 77
    sget-object v3, Lcom/google/android/startop/iorap/TaskResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/startop/iorap/TaskResult;

    .restart local v3    # "_arg1":Lcom/google/android/startop/iorap/TaskResult;
    goto :goto_3

    .line 80
    .end local v3    # "_arg1":Lcom/google/android/startop/iorap/TaskResult;
    :cond_6
    const/4 v3, 0x0

    .line 82
    .restart local v3    # "_arg1":Lcom/google/android/startop/iorap/TaskResult;
    :goto_3
    invoke-virtual {p0, v2, v3}, Lcom/google/android/startop/iorap/ITaskListener$Stub;->onProgress(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/TaskResult;)V

    .line 83
    return v1
.end method
