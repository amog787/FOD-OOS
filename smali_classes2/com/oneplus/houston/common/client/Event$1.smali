.class Lcom/oneplus/houston/common/client/Event$1;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/houston/common/client/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oneplus/houston/common/client/Event;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/houston/common/client/Event;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 146
    new-instance v0, Lcom/oneplus/houston/common/client/Event;

    invoke-direct {v0, p1}, Lcom/oneplus/houston/common/client/Event;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lcom/oneplus/houston/common/client/Event$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/houston/common/client/Event;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/oneplus/houston/common/client/Event;
    .locals 1
    .param p1, "size"    # I

    .line 149
    new-array v0, p1, [Lcom/oneplus/houston/common/client/Event;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lcom/oneplus/houston/common/client/Event$1;->newArray(I)[Lcom/oneplus/houston/common/client/Event;

    move-result-object p1

    return-object p1
.end method
