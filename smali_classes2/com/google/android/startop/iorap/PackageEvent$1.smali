.class Lcom/google/android/startop/iorap/PackageEvent$1;
.super Ljava/lang/Object;
.source "PackageEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/PackageEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/startop/iorap/PackageEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/startop/iorap/PackageEvent;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 123
    new-instance v0, Lcom/google/android/startop/iorap/PackageEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/startop/iorap/PackageEvent;-><init>(Landroid/os/Parcel;Lcom/google/android/startop/iorap/PackageEvent$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Lcom/google/android/startop/iorap/PackageEvent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/startop/iorap/PackageEvent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/startop/iorap/PackageEvent;
    .locals 1
    .param p1, "size"    # I

    .line 127
    new-array v0, p1, [Lcom/google/android/startop/iorap/PackageEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Lcom/google/android/startop/iorap/PackageEvent$1;->newArray(I)[Lcom/google/android/startop/iorap/PackageEvent;

    move-result-object p1

    return-object p1
.end method
