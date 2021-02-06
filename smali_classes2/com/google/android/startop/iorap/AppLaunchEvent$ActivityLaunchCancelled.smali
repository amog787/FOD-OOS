.class public Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchCancelled;
.super Lcom/google/android/startop/iorap/AppLaunchEvent;
.source "AppLaunchEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/AppLaunchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityLaunchCancelled"
.end annotation


# instance fields
.field public final activityRecordSnapshot:[B


# direct methods
.method public constructor <init>(J[B)V
    .locals 0
    .param p1, "sequenceId"    # J
    .param p3, "snapshot"    # [B

    .line 268
    invoke-direct {p0, p1, p2}, Lcom/google/android/startop/iorap/AppLaunchEvent;-><init>(J)V

    .line 269
    iput-object p3, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchCancelled;->activityRecordSnapshot:[B

    .line 270
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .line 299
    invoke-direct {p0, p1}, Lcom/google/android/startop/iorap/AppLaunchEvent;-><init>(Landroid/os/Parcel;)V

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-static {p1}, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityRecordProtoParcelable;->create(Landroid/os/Parcel;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchCancelled;->activityRecordSnapshot:[B

    goto :goto_0

    .line 303
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchCancelled;->activityRecordSnapshot:[B

    .line 305
    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 274
    instance-of v0, p1, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchCancelled;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchCancelled;->activityRecordSnapshot:[B

    move-object v2, p1

    check-cast v2, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchCancelled;

    iget-object v2, v2, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchCancelled;->activityRecordSnapshot:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    invoke-super {p0, p1}, Lcom/google/android/startop/iorap/AppLaunchEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 275
    :goto_0
    return v1

    .line 279
    :cond_1
    return v1
.end method

.method protected toStringBody()Ljava/lang/String;
    .locals 3

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/startop/iorap/AppLaunchEvent;->toStringBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchCancelled;->activityRecordSnapshot:[B

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

    .line 289
    invoke-super {p0, p1, p2}, Lcom/google/android/startop/iorap/AppLaunchEvent;->writeToParcelImpl(Landroid/os/Parcel;I)V

    .line 290
    iget-object v0, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchCancelled;->activityRecordSnapshot:[B

    if-eqz v0, :cond_0

    .line 291
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 292
    iget-object v0, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchCancelled;->activityRecordSnapshot:[B

    invoke-static {p1, v0, p2}, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityRecordProtoParcelable;->write(Landroid/os/Parcel;[BI)V

    goto :goto_0

    .line 294
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 296
    :goto_0
    return-void
.end method
