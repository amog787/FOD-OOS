.class Landroid/gsi/GsiInstallParams$1;
.super Ljava/lang/Object;
.source "GsiInstallParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gsi/GsiInstallParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/gsi/GsiInstallParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/gsi/GsiInstallParams;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 27
    new-instance v0, Landroid/gsi/GsiInstallParams;

    invoke-direct {v0}, Landroid/gsi/GsiInstallParams;-><init>()V

    .line 28
    .local v0, "_aidl_out":Landroid/gsi/GsiInstallParams;
    invoke-virtual {v0, p1}, Landroid/gsi/GsiInstallParams;->readFromParcel(Landroid/os/Parcel;)V

    .line 29
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Landroid/gsi/GsiInstallParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/gsi/GsiInstallParams;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/gsi/GsiInstallParams;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 33
    new-array v0, p1, [Landroid/gsi/GsiInstallParams;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Landroid/gsi/GsiInstallParams$1;->newArray(I)[Landroid/gsi/GsiInstallParams;

    move-result-object p1

    return-object p1
.end method
