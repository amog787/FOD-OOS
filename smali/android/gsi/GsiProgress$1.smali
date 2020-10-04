.class Landroid/gsi/GsiProgress$1;
.super Ljava/lang/Object;
.source "GsiProgress.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gsi/GsiProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/gsi/GsiProgress;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/gsi/GsiProgress;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 19
    new-instance v0, Landroid/gsi/GsiProgress;

    invoke-direct {v0}, Landroid/gsi/GsiProgress;-><init>()V

    .line 20
    .local v0, "_aidl_out":Landroid/gsi/GsiProgress;
    invoke-virtual {v0, p1}, Landroid/gsi/GsiProgress;->readFromParcel(Landroid/os/Parcel;)V

    .line 21
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Landroid/gsi/GsiProgress$1;->createFromParcel(Landroid/os/Parcel;)Landroid/gsi/GsiProgress;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/gsi/GsiProgress;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 25
    new-array v0, p1, [Landroid/gsi/GsiProgress;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Landroid/gsi/GsiProgress$1;->newArray(I)[Landroid/gsi/GsiProgress;

    move-result-object p1

    return-object p1
.end method
