.class public Lcom/oneplus/houston/common/client/parcel/InitArg;
.super Ljava/lang/Object;
.source "InitArg.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/houston/common/client/parcel/InitArg$P;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oneplus/houston/common/client/parcel/InitArg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mExtra:Landroid/os/Bundle;

.field public mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lcom/oneplus/houston/common/client/parcel/InitArg$1;

    invoke-direct {v0}, Lcom/oneplus/houston/common/client/parcel/InitArg$1;-><init>()V

    sput-object v0, Lcom/oneplus/houston/common/client/parcel/InitArg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p0, p1}, Lcom/oneplus/houston/common/client/parcel/InitArg;->readFromParcel(Landroid/os/Parcel;)V

    .line 66
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    iput-object v0, p0, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    .line 40
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 41
    new-instance v2, Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    invoke-direct {v2}, Lcom/oneplus/houston/common/client/parcel/InitArg$P;-><init>()V

    aput-object v2, v1, v0

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    .end local v0    # "i":I
    :cond_0
    array-length v0, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    .line 44
    .local v3, "p":Lcom/oneplus/houston/common/client/parcel/InitArg$P;
    invoke-virtual {v3, p1}, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->readFromParcel(Landroid/os/Parcel;)V

    .line 43
    .end local v3    # "p":Lcom/oneplus/houston/common/client/parcel/InitArg$P;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 46
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/parcel/InitArg;->mExtra:Landroid/os/Bundle;

    .line 47
    iget-object v0, p0, Lcom/oneplus/houston/common/client/parcel/InitArg;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 48
    return-void
.end method

.method public recycle()V
    .locals 1

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 132
    iget-object v0, p0, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    array-length v0, v0

    .line 133
    .local v0, "size":I
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 134
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 135
    iget-object v3, p0, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 31
    iget-object v0, p0, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget-object v0, p0, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 33
    .local v4, "p":Lcom/oneplus/houston/common/client/parcel/InitArg$P;
    invoke-virtual {v4, p1}, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->writeToParcel(Landroid/os/Parcel;)V

    .line 32
    .end local v4    # "p":Lcom/oneplus/houston/common/client/parcel/InitArg$P;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/parcel/InitArg;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 36
    return-void
.end method
