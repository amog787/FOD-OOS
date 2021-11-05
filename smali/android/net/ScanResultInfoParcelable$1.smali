.class Landroid/net/ScanResultInfoParcelable$1;
.super Ljava/lang/Object;
.source "ScanResultInfoParcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ScanResultInfoParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/ScanResultInfoParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/ScanResultInfoParcelable;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 16
    new-instance v0, Landroid/net/ScanResultInfoParcelable;

    invoke-direct {v0}, Landroid/net/ScanResultInfoParcelable;-><init>()V

    .line 17
    .local v0, "_aidl_out":Landroid/net/ScanResultInfoParcelable;
    invoke-virtual {v0, p1}, Landroid/net/ScanResultInfoParcelable;->readFromParcel(Landroid/os/Parcel;)V

    .line 18
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Landroid/net/ScanResultInfoParcelable$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/ScanResultInfoParcelable;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/ScanResultInfoParcelable;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 22
    new-array v0, p1, [Landroid/net/ScanResultInfoParcelable;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Landroid/net/ScanResultInfoParcelable$1;->newArray(I)[Landroid/net/ScanResultInfoParcelable;

    move-result-object p1

    return-object p1
.end method
