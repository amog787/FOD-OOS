.class public Landroid/gsi/AvbPublicKey;
.super Ljava/lang/Object;
.source "AvbPublicKey.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/gsi/AvbPublicKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bytes:[B

.field public sha1:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Landroid/gsi/AvbPublicKey$1;

    invoke-direct {v0}, Landroid/gsi/AvbPublicKey$1;-><init>()V

    sput-object v0, Landroid/gsi/AvbPublicKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 38
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 39
    .local v1, "_aidl_parcelable_size":I
    if-gez v1, :cond_0

    return-void

    .line 41
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Landroid/gsi/AvbPublicKey;->bytes:[B

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    .line 46
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 42
    return-void

    .line 43
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Landroid/gsi/AvbPublicKey;->sha1:[B

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2

    .line 46
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 44
    return-void

    .line 46
    :cond_2
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 47
    nop

    .line 48
    return-void

    .line 46
    :catchall_0
    move-exception v2

    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 47
    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 27
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget-object v1, p0, Landroid/gsi/AvbPublicKey;->bytes:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 29
    iget-object v1, p0, Landroid/gsi/AvbPublicKey;->sha1:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 31
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 32
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 34
    return-void
.end method
