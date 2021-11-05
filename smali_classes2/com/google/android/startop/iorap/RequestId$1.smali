.class Lcom/google/android/startop/iorap/RequestId$1;
.super Ljava/lang/Object;
.source "RequestId.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/RequestId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/startop/iorap/RequestId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/startop/iorap/RequestId;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 117
    new-instance v0, Lcom/google/android/startop/iorap/RequestId;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/startop/iorap/RequestId;-><init>(Landroid/os/Parcel;Lcom/google/android/startop/iorap/RequestId$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Lcom/google/android/startop/iorap/RequestId$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/startop/iorap/RequestId;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/startop/iorap/RequestId;
    .locals 1
    .param p1, "size"    # I

    .line 121
    new-array v0, p1, [Lcom/google/android/startop/iorap/RequestId;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Lcom/google/android/startop/iorap/RequestId$1;->newArray(I)[Lcom/google/android/startop/iorap/RequestId;

    move-result-object p1

    return-object p1
.end method
