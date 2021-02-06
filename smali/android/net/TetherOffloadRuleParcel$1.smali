.class Landroid/net/TetherOffloadRuleParcel$1;
.super Ljava/lang/Object;
.source "TetherOffloadRuleParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/TetherOffloadRuleParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/TetherOffloadRuleParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/TetherOffloadRuleParcel;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 25
    new-instance v0, Landroid/net/TetherOffloadRuleParcel;

    invoke-direct {v0}, Landroid/net/TetherOffloadRuleParcel;-><init>()V

    .line 26
    .local v0, "_aidl_out":Landroid/net/TetherOffloadRuleParcel;
    invoke-virtual {v0, p1}, Landroid/net/TetherOffloadRuleParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 27
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Landroid/net/TetherOffloadRuleParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/TetherOffloadRuleParcel;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/TetherOffloadRuleParcel;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 31
    new-array v0, p1, [Landroid/net/TetherOffloadRuleParcel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Landroid/net/TetherOffloadRuleParcel$1;->newArray(I)[Landroid/net/TetherOffloadRuleParcel;

    move-result-object p1

    return-object p1
.end method
