.class Landroid/net/ProvisioningConfigurationParcelable$1;
.super Ljava/lang/Object;
.source "ProvisioningConfigurationParcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ProvisioningConfigurationParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/ProvisioningConfigurationParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/ProvisioningConfigurationParcelable;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 40
    new-instance v0, Landroid/net/ProvisioningConfigurationParcelable;

    invoke-direct {v0}, Landroid/net/ProvisioningConfigurationParcelable;-><init>()V

    .line 41
    .local v0, "_aidl_out":Landroid/net/ProvisioningConfigurationParcelable;
    invoke-virtual {v0, p1}, Landroid/net/ProvisioningConfigurationParcelable;->readFromParcel(Landroid/os/Parcel;)V

    .line 42
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Landroid/net/ProvisioningConfigurationParcelable$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/ProvisioningConfigurationParcelable;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/ProvisioningConfigurationParcelable;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 46
    new-array v0, p1, [Landroid/net/ProvisioningConfigurationParcelable;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Landroid/net/ProvisioningConfigurationParcelable$1;->newArray(I)[Landroid/net/ProvisioningConfigurationParcelable;

    move-result-object p1

    return-object p1
.end method
