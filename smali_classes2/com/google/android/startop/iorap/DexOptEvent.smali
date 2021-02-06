.class public Lcom/google/android/startop/iorap/DexOptEvent;
.super Ljava/lang/Object;
.source "DexOptEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/startop/iorap/DexOptEvent$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/startop/iorap/DexOptEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_MAX:I

.field public static final TYPE_PACKAGE_UPDATE:I


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    new-instance v0, Lcom/google/android/startop/iorap/DexOptEvent$1;

    invoke-direct {v0}, Lcom/google/android/startop/iorap/DexOptEvent$1;-><init>()V

    sput-object v0, Lcom/google/android/startop/iorap/DexOptEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/google/android/startop/iorap/DexOptEvent;->type:I

    .line 55
    iput-object p2, p0, Lcom/google/android/startop/iorap/DexOptEvent;->packageName:Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Lcom/google/android/startop/iorap/DexOptEvent;->checkConstructorArguments()V

    .line 58
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/startop/iorap/DexOptEvent;->type:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/startop/iorap/DexOptEvent;->packageName:Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Lcom/google/android/startop/iorap/DexOptEvent;->checkConstructorArguments()V

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/startop/iorap/DexOptEvent$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/google/android/startop/iorap/DexOptEvent$1;

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/startop/iorap/DexOptEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private checkConstructorArguments()V
    .locals 2

    .line 61
    iget v0, p0, Lcom/google/android/startop/iorap/DexOptEvent;->type:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/startop/iorap/CheckHelpers;->checkTypeInRange(II)V

    .line 62
    iget-object v0, p0, Lcom/google/android/startop/iorap/DexOptEvent;->packageName:Ljava/lang/String;

    const-string v1, "packageName"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public static createPackageUpdate(Ljava/lang/String;)Lcom/google/android/startop/iorap/DexOptEvent;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/google/android/startop/iorap/DexOptEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/google/android/startop/iorap/DexOptEvent;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private equals(Lcom/google/android/startop/iorap/DexOptEvent;)Z
    .locals 2
    .param p1, "other"    # Lcom/google/android/startop/iorap/DexOptEvent;

    .line 81
    iget-object v0, p0, Lcom/google/android/startop/iorap/DexOptEvent;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/startop/iorap/DexOptEvent;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 72
    if-ne p0, p1, :cond_0

    .line 73
    const/4 v0, 0x1

    return v0

    .line 74
    :cond_0
    instance-of v0, p1, Lcom/google/android/startop/iorap/DexOptEvent;

    if-eqz v0, :cond_1

    .line 75
    move-object v0, p1

    check-cast v0, Lcom/google/android/startop/iorap/DexOptEvent;

    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/DexOptEvent;->equals(Lcom/google/android/startop/iorap/DexOptEvent;)Z

    move-result v0

    return v0

    .line 77
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/DexOptEvent;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "{DexOptEvent: packageName: %s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 87
    iget v0, p0, Lcom/google/android/startop/iorap/DexOptEvent;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-object v0, p0, Lcom/google/android/startop/iorap/DexOptEvent;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    return-void
.end method
