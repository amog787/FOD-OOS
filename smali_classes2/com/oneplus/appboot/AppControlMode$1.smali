.class Lcom/oneplus/appboot/AppControlMode$1;
.super Ljava/lang/Object;
.source "AppControlMode.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/appboot/AppControlMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oneplus/appboot/AppControlMode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/appboot/AppControlMode;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 64
    new-instance v0, Lcom/oneplus/appboot/AppControlMode;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oneplus/appboot/AppControlMode;-><init>(Landroid/os/Parcel;Lcom/oneplus/appboot/AppControlMode$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/oneplus/appboot/AppControlMode$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/appboot/AppControlMode;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/oneplus/appboot/AppControlMode;
    .locals 1
    .param p1, "size"    # I

    .line 69
    new-array v0, p1, [Lcom/oneplus/appboot/AppControlMode;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/oneplus/appboot/AppControlMode$1;->newArray(I)[Lcom/oneplus/appboot/AppControlMode;

    move-result-object p1

    return-object p1
.end method
