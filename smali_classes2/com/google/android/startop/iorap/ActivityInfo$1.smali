.class Lcom/google/android/startop/iorap/ActivityInfo$1;
.super Ljava/lang/Object;
.source "ActivityInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/ActivityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/startop/iorap/ActivityInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/startop/iorap/ActivityInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 96
    new-instance v0, Lcom/google/android/startop/iorap/ActivityInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/startop/iorap/ActivityInfo;-><init>(Landroid/os/Parcel;Lcom/google/android/startop/iorap/ActivityInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Lcom/google/android/startop/iorap/ActivityInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/startop/iorap/ActivityInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/startop/iorap/ActivityInfo;
    .locals 1
    .param p1, "size"    # I

    .line 100
    new-array v0, p1, [Lcom/google/android/startop/iorap/ActivityInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Lcom/google/android/startop/iorap/ActivityInfo$1;->newArray(I)[Lcom/google/android/startop/iorap/ActivityInfo;

    move-result-object p1

    return-object p1
.end method
