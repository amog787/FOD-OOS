.class public Lcom/google/android/startop/iorap/TaskResult;
.super Ljava/lang/Object;
.source "TaskResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/startop/iorap/TaskResult$State;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/startop/iorap/TaskResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_BEGAN:I = 0x0

.field public static final STATE_COMPLETED:I = 0x2

.field public static final STATE_ERROR:I = 0x3

.field private static final STATE_MAX:I = 0x3

.field public static final STATE_ONGOING:I = 0x1


# instance fields
.field public final state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 119
    new-instance v0, Lcom/google/android/startop/iorap/TaskResult$1;

    invoke-direct {v0}, Lcom/google/android/startop/iorap/TaskResult$1;-><init>()V

    sput-object v0, Lcom/google/android/startop/iorap/TaskResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "state"    # I

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Lcom/google/android/startop/iorap/TaskResult;->state:I

    .line 95
    invoke-direct {p0}, Lcom/google/android/startop/iorap/TaskResult;->checkConstructorArguments()V

    .line 96
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/startop/iorap/TaskResult;->state:I

    .line 111
    invoke-direct {p0}, Lcom/google/android/startop/iorap/TaskResult;->checkConstructorArguments()V

    .line 112
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/startop/iorap/TaskResult$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/google/android/startop/iorap/TaskResult$1;

    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/startop/iorap/TaskResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private checkConstructorArguments()V
    .locals 2

    .line 99
    iget v0, p0, Lcom/google/android/startop/iorap/TaskResult;->state:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/startop/iorap/CheckHelpers;->checkStateInRange(II)V

    .line 100
    return-void
.end method

.method private equals(Lcom/google/android/startop/iorap/TaskResult;)Z
    .locals 2
    .param p1, "other"    # Lcom/google/android/startop/iorap/TaskResult;

    .line 89
    iget v0, p0, Lcom/google/android/startop/iorap/TaskResult;->state:I

    iget v1, p1, Lcom/google/android/startop/iorap/TaskResult;->state:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 80
    if-ne p0, p1, :cond_0

    .line 81
    const/4 v0, 0x1

    return v0

    .line 82
    :cond_0
    instance-of v0, p1, Lcom/google/android/startop/iorap/TaskResult;

    if-eqz v0, :cond_1

    .line 83
    move-object v0, p1

    check-cast v0, Lcom/google/android/startop/iorap/TaskResult;

    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/TaskResult;->equals(Lcom/google/android/startop/iorap/TaskResult;)Z

    move-result v0

    return v0

    .line 85
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/startop/iorap/TaskResult;->state:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "{state: %d}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 105
    iget v0, p0, Lcom/google/android/startop/iorap/TaskResult;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return-void
.end method
