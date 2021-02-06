.class Landroid/net/ResolverParamsParcel$1;
.super Ljava/lang/Object;
.source "ResolverParamsParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ResolverParamsParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/ResolverParamsParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/ResolverParamsParcel;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 43
    new-instance v0, Landroid/net/ResolverParamsParcel;

    invoke-direct {v0}, Landroid/net/ResolverParamsParcel;-><init>()V

    .line 44
    .local v0, "_aidl_out":Landroid/net/ResolverParamsParcel;
    invoke-virtual {v0, p1}, Landroid/net/ResolverParamsParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 45
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Landroid/net/ResolverParamsParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/ResolverParamsParcel;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/ResolverParamsParcel;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 49
    new-array v0, p1, [Landroid/net/ResolverParamsParcel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Landroid/net/ResolverParamsParcel$1;->newArray(I)[Landroid/net/ResolverParamsParcel;

    move-result-object p1

    return-object p1
.end method
