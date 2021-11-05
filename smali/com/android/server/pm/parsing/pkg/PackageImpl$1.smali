.class Lcom/android/server/pm/parsing/pkg/PackageImpl$1;
.super Ljava/lang/Object;
.source "PackageImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/parsing/pkg/PackageImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/server/pm/parsing/pkg/PackageImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 532
    new-instance v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;

    invoke-direct {v0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 529
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1
    .param p1, "size"    # I

    .line 537
    new-array v0, p1, [Lcom/android/server/pm/parsing/pkg/PackageImpl;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 529
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl$1;->newArray(I)[Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method
