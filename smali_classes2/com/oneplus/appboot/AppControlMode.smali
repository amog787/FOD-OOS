.class public Lcom/oneplus/appboot/AppControlMode;
.super Ljava/lang/Object;
.source "AppControlMode.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final APP_CONTROL_MODE_APPBOOT:I = 0x1

.field public static final APP_CONTROL_MODE_CGROUP:I = 0x2

.field public static final APP_CONTROL_MODE_DEFAULT:I = 0x0

.field public static final APP_CONTROL_MODE_DOZE:I = 0x3

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oneplus/appboot/AppControlMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mode:I

.field public packageName:Ljava/lang/String;

.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/oneplus/appboot/AppControlMode$1;

    invoke-direct {v0}, Lcom/oneplus/appboot/AppControlMode$1;-><init>()V

    sput-object v0, Lcom/oneplus/appboot/AppControlMode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p0, p1}, Lcom/oneplus/appboot/AppControlMode;->readFromParcel(Landroid/os/Parcel;)V

    .line 81
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oneplus/appboot/AppControlMode$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/oneplus/appboot/AppControlMode$1;

    .line 31
    invoke-direct {p0, p1}, Lcom/oneplus/appboot/AppControlMode;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "value"    # I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/oneplus/appboot/AppControlMode;->packageName:Ljava/lang/String;

    .line 75
    iput p2, p0, Lcom/oneplus/appboot/AppControlMode;->mode:I

    .line 76
    iput p3, p0, Lcom/oneplus/appboot/AppControlMode;->value:I

    .line 77
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/appboot/AppControlMode;->packageName:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/appboot/AppControlMode;->mode:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/appboot/AppControlMode;->value:I

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 98
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/oneplus/appboot/AppControlMode;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, " packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lcom/oneplus/appboot/AppControlMode;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, " mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget v1, p0, Lcom/oneplus/appboot/AppControlMode;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget v1, p0, Lcom/oneplus/appboot/AppControlMode;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 50
    iget-object v0, p0, Lcom/oneplus/appboot/AppControlMode;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget v0, p0, Lcom/oneplus/appboot/AppControlMode;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v0, p0, Lcom/oneplus/appboot/AppControlMode;->value:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    return-void
.end method
