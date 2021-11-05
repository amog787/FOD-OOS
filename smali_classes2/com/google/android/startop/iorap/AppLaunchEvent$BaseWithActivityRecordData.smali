.class public abstract Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;
.super Lcom/google/android/startop/iorap/AppLaunchEvent;
.source "AppLaunchEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/AppLaunchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseWithActivityRecordData"
.end annotation


# instance fields
.field public final activityRecordSnapshot:[B


# direct methods
.method protected constructor <init>(J[B)V
    .locals 1
    .param p1, "sequenceId"    # J
    .param p3, "snapshot"    # [B

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/google/android/startop/iorap/AppLaunchEvent;-><init>(J)V

    .line 158
    iput-object p3, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;->activityRecordSnapshot:[B

    .line 160
    const-string v0, "snapshot"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 161
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .line 185
    invoke-direct {p0, p1}, Lcom/google/android/startop/iorap/AppLaunchEvent;-><init>(Landroid/os/Parcel;)V

    .line 186
    invoke-static {p1}, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityRecordProtoParcelable;->create(Landroid/os/Parcel;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;->activityRecordSnapshot:[B

    .line 187
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 165
    instance-of v0, p1, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;->activityRecordSnapshot:[B

    move-object v2, p1

    check-cast v2, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;

    iget-object v2, v2, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;->activityRecordSnapshot:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-super {p0, p1}, Lcom/google/android/startop/iorap/AppLaunchEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 166
    :goto_0
    return v1

    .line 170
    :cond_1
    return v1
.end method

.method protected toStringBody()Ljava/lang/String;
    .locals 3

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;->activityRecordSnapshot:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeToParcelImpl(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 180
    invoke-super {p0, p1, p2}, Lcom/google/android/startop/iorap/AppLaunchEvent;->writeToParcelImpl(Landroid/os/Parcel;I)V

    .line 181
    iget-object v0, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;->activityRecordSnapshot:[B

    invoke-static {p1, v0, p2}, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityRecordProtoParcelable;->write(Landroid/os/Parcel;[BI)V

    .line 182
    return-void
.end method
