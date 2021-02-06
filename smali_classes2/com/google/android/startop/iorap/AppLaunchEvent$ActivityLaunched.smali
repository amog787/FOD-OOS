.class public final Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunched;
.super Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;
.source "AppLaunchEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/AppLaunchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityLaunched"
.end annotation


# instance fields
.field public final temperature:I


# direct methods
.method public constructor <init>(J[BI)V
    .locals 0
    .param p1, "sequenceId"    # J
    .param p3, "snapshot"    # [B
    .param p4, "temperature"    # I

    .line 197
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;-><init>(J[B)V

    .line 198
    iput p4, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunched;->temperature:I

    .line 199
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .line 222
    invoke-direct {p0, p1}, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;-><init>(Landroid/os/Parcel;)V

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunched;->temperature:I

    .line 224
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 203
    instance-of v0, p1, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunched;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 204
    iget v0, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunched;->temperature:I

    move-object v2, p1

    check-cast v2, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunched;

    iget v2, v2, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunched;->temperature:I

    if-ne v0, v2, :cond_0

    .line 205
    invoke-super {p0, p1}, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 204
    :goto_0
    return v1

    .line 207
    :cond_1
    return v1
.end method

.method protected toStringBody()Ljava/lang/String;
    .locals 2

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;->toStringBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", temperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunched;->temperature:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeToParcelImpl(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 217
    invoke-super {p0, p1, p2}, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;->writeToParcelImpl(Landroid/os/Parcel;I)V

    .line 218
    iget v0, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunched;->temperature:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    return-void
.end method
