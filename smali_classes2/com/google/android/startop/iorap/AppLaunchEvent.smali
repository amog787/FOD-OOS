.class public abstract Lcom/google/android/startop/iorap/AppLaunchEvent;
.super Ljava/lang/Object;
.source "AppLaunchEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/startop/iorap/AppLaunchEvent$IntentProtoParcelable;,
        Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityRecordProtoParcelable;,
        Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchCancelled;,
        Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchFinished;,
        Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunched;,
        Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;,
        Lcom/google/android/startop/iorap/AppLaunchEvent$IntentFailed;,
        Lcom/google/android/startop/iorap/AppLaunchEvent$IntentStarted;,
        Lcom/google/android/startop/iorap/AppLaunchEvent$SequenceId;
    }
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/startop/iorap/AppLaunchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static sTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public final sequenceId:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 289
    new-instance v0, Lcom/google/android/startop/iorap/AppLaunchEvent$1;

    invoke-direct {v0}, Lcom/google/android/startop/iorap/AppLaunchEvent$1;-><init>()V

    sput-object v0, Lcom/google/android/startop/iorap/AppLaunchEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 345
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/google/android/startop/iorap/AppLaunchEvent$IntentStarted;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/google/android/startop/iorap/AppLaunchEvent$IntentFailed;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunched;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchFinished;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-class v1, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchCancelled;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/startop/iorap/AppLaunchEvent;->sTypes:[Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 0
    .param p1, "sequenceId"    # J

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-wide p1, p0, Lcom/google/android/startop/iorap/AppLaunchEvent;->sequenceId:J

    .line 60
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/startop/iorap/AppLaunchEvent;->sequenceId:J

    .line 325
    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # I

    .line 50
    invoke-static {p0}, Lcom/google/android/startop/iorap/AppLaunchEvent;->getClassFromTypeIndex(I)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static getClassFromTypeIndex(I)Ljava/lang/Class;
    .locals 2
    .param p0, "typeIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 337
    if-ltz p0, :cond_0

    sget-object v0, Lcom/google/android/startop/iorap/AppLaunchEvent;->sTypes:[Ljava/lang/Class;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 338
    aget-object v0, v0, p0

    return-object v0

    .line 340
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTypeIndex()I
    .locals 3

    .line 328
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/google/android/startop/iorap/AppLaunchEvent;->sTypes:[Ljava/lang/Class;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 329
    aget-object v1, v1, v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    return v0

    .line 328
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sTypes did not include this type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method protected equals(Lcom/google/android/startop/iorap/AppLaunchEvent;)Z
    .locals 4
    .param p1, "other"    # Lcom/google/android/startop/iorap/AppLaunchEvent;

    .line 71
    iget-wide v0, p0, Lcom/google/android/startop/iorap/AppLaunchEvent;->sequenceId:J

    iget-wide v2, p1, Lcom/google/android/startop/iorap/AppLaunchEvent;->sequenceId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 64
    instance-of v0, p1, Lcom/google/android/startop/iorap/AppLaunchEvent;

    if-eqz v0, :cond_0

    .line 65
    move-object v0, p1

    check-cast v0, Lcom/google/android/startop/iorap/AppLaunchEvent;

    invoke-virtual {p0, v0}, Lcom/google/android/startop/iorap/AppLaunchEvent;->equals(Lcom/google/android/startop/iorap/AppLaunchEvent;)Z

    move-result v0

    return v0

    .line 67
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{sequenceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/startop/iorap/AppLaunchEvent;->sequenceId:J

    .line 78
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p0}, Lcom/google/android/startop/iorap/AppLaunchEvent;->toStringBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    return-object v0
.end method

.method protected toStringBody()Ljava/lang/String;
    .locals 1

    .line 82
    const-string v0, ""

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 283
    invoke-direct {p0}, Lcom/google/android/startop/iorap/AppLaunchEvent;->getTypeIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    invoke-virtual {p0, p1, p2}, Lcom/google/android/startop/iorap/AppLaunchEvent;->writeToParcelImpl(Landroid/os/Parcel;I)V

    .line 286
    return-void
.end method

.method protected writeToParcelImpl(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 320
    iget-wide v0, p0, Lcom/google/android/startop/iorap/AppLaunchEvent;->sequenceId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 321
    return-void
.end method
