.class Landroid/net/InformationElementParcelable$1;
.super Ljava/lang/Object;
.source "InformationElementParcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/InformationElementParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/InformationElementParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/InformationElementParcelable;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 14
    new-instance v0, Landroid/net/InformationElementParcelable;

    invoke-direct {v0}, Landroid/net/InformationElementParcelable;-><init>()V

    .line 15
    .local v0, "_aidl_out":Landroid/net/InformationElementParcelable;
    invoke-virtual {v0, p1}, Landroid/net/InformationElementParcelable;->readFromParcel(Landroid/os/Parcel;)V

    .line 16
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Landroid/net/InformationElementParcelable$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/InformationElementParcelable;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/InformationElementParcelable;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 20
    new-array v0, p1, [Landroid/net/InformationElementParcelable;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Landroid/net/InformationElementParcelable$1;->newArray(I)[Landroid/net/InformationElementParcelable;

    move-result-object p1

    return-object p1
.end method
