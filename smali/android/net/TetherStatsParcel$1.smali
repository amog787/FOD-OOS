.class Landroid/net/TetherStatsParcel$1;
.super Ljava/lang/Object;
.source "TetherStatsParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/TetherStatsParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/TetherStatsParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/TetherStatsParcel;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 23
    new-instance v0, Landroid/net/TetherStatsParcel;

    invoke-direct {v0}, Landroid/net/TetherStatsParcel;-><init>()V

    .line 24
    .local v0, "_aidl_out":Landroid/net/TetherStatsParcel;
    invoke-virtual {v0, p1}, Landroid/net/TetherStatsParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 25
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Landroid/net/TetherStatsParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/TetherStatsParcel;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/TetherStatsParcel;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 29
    new-array v0, p1, [Landroid/net/TetherStatsParcel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Landroid/net/TetherStatsParcel$1;->newArray(I)[Landroid/net/TetherStatsParcel;

    move-result-object p1

    return-object p1
.end method
