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

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/google/android/startop/iorap/AppLaunchEvent;-><init>(J)V

    .line 149
    iput-object p3, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;->activityRecordSnapshot:[B

    .line 151
    const-string v0, "snapshot"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 152
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .line 176
    invoke-direct {p0, p1}, Lcom/google/android/startop/iorap/AppLaunchEvent;-><init>(Landroid/os/Parcel;)V

    .line 177
    invoke-static {p1}, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityRecordProtoParcelable;->create(Landroid/os/Parcel;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;->activityRecordSnapshot:[B

    .line 178
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 156
    instance-of v0, p1, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;->activityRecordSnapshot:[B

    move-object v2, p1

    check-cast v2, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;

    iget-object v2, v2, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;->activityRecordSnapshot:[B

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-super {p0, p1}, Lcom/google/android/startop/iorap/AppLaunchEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 157
    :goto_0
    return v1

    .line 161
    :cond_1
    return v1
.end method

.method protected toStringBody()Ljava/lang/String;
    .locals 2

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;->activityRecordSnapshot:[B

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

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

    .line 171
    invoke-super {p0, p1, p2}, Lcom/google/android/startop/iorap/AppLaunchEvent;->writeToParcelImpl(Landroid/os/Parcel;I)V

    .line 172
    iget-object v0, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;->activityRecordSnapshot:[B

    invoke-static {p1, v0, p2}, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityRecordProtoParcelable;->write(Landroid/os/Parcel;[BI)V

    .line 173
    return-void
.end method
