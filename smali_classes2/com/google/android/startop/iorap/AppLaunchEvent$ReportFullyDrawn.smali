.class public final Lcom/google/android/startop/iorap/AppLaunchEvent$ReportFullyDrawn;
.super Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;
.source "AppLaunchEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/AppLaunchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReportFullyDrawn"
.end annotation


# instance fields
.field public final timestampNs:J


# direct methods
.method public constructor <init>(J[BJ)V
    .locals 0
    .param p1, "sequenceId"    # J
    .param p3, "snapshot"    # [B
    .param p4, "timestampNs"    # J

    .line 314
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;-><init>(J[B)V

    .line 315
    iput-wide p4, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$ReportFullyDrawn;->timestampNs:J

    .line 316
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .line 339
    invoke-direct {p0, p1}, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;-><init>(Landroid/os/Parcel;)V

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$ReportFullyDrawn;->timestampNs:J

    .line 341
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 320
    instance-of v0, p1, Lcom/google/android/startop/iorap/AppLaunchEvent$ReportFullyDrawn;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 321
    iget-wide v2, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$ReportFullyDrawn;->timestampNs:J

    move-object v0, p1

    check-cast v0, Lcom/google/android/startop/iorap/AppLaunchEvent$ReportFullyDrawn;

    iget-wide v4, v0, Lcom/google/android/startop/iorap/AppLaunchEvent$ReportFullyDrawn;->timestampNs:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 322
    invoke-super {p0, p1}, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 321
    :goto_0
    return v1

    .line 324
    :cond_1
    return v1
.end method

.method protected toStringBody()Ljava/lang/String;
    .locals 3

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;->toStringBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timestampNs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$ReportFullyDrawn;->timestampNs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeToParcelImpl(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 334
    invoke-super {p0, p1, p2}, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;->writeToParcelImpl(Landroid/os/Parcel;I)V

    .line 335
    iget-wide v0, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$ReportFullyDrawn;->timestampNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 336
    return-void
.end method
