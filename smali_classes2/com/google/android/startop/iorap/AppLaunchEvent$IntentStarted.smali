.class public final Lcom/google/android/startop/iorap/AppLaunchEvent$IntentStarted;
.super Lcom/google/android/startop/iorap/AppLaunchEvent;
.source "AppLaunchEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/AppLaunchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntentStarted"
.end annotation


# instance fields
.field public final intent:Landroid/content/Intent;

.field public final timestampNs:J


# direct methods
.method public constructor <init>(JLandroid/content/Intent;J)V
    .locals 1
    .param p1, "sequenceId"    # J
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "timestampNs"    # J

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/google/android/startop/iorap/AppLaunchEvent;-><init>(J)V

    .line 96
    iput-object p3, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$IntentStarted;->intent:Landroid/content/Intent;

    .line 97
    iput-wide p4, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$IntentStarted;->timestampNs:J

    .line 99
    const-string v0, "intent"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .line 127
    invoke-direct {p0, p1}, Lcom/google/android/startop/iorap/AppLaunchEvent;-><init>(Landroid/os/Parcel;)V

    .line 128
    invoke-static {p1}, Lcom/google/android/startop/iorap/AppLaunchEvent$IntentProtoParcelable;->create(Landroid/os/Parcel;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$IntentStarted;->intent:Landroid/content/Intent;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$IntentStarted;->timestampNs:J

    .line 130
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 104
    instance-of v0, p1, Lcom/google/android/startop/iorap/AppLaunchEvent$IntentStarted;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$IntentStarted;->intent:Landroid/content/Intent;

    move-object v2, p1

    check-cast v2, Lcom/google/android/startop/iorap/AppLaunchEvent$IntentStarted;

    iget-object v2, v2, Lcom/google/android/startop/iorap/AppLaunchEvent$IntentStarted;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$IntentStarted;->timestampNs:J

    move-object v0, p1

    check-cast v0, Lcom/google/android/startop/iorap/AppLaunchEvent$IntentStarted;

    iget-wide v4, v0, Lcom/google/android/startop/iorap/AppLaunchEvent$IntentStarted;->timestampNs:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 107
    invoke-super {p0, p1}, Lcom/google/android/startop/iorap/AppLaunchEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 105
    :goto_0
    return v1

    .line 109
    :cond_1
    return v1
.end method

.method protected toStringBody()Ljava/lang/String;
    .locals 3

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$IntentStarted;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , timestampNs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$IntentStarted;->timestampNs:J

    .line 115
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    return-object v0
.end method

.method protected writeToParcelImpl(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 121
    invoke-super {p0, p1, p2}, Lcom/google/android/startop/iorap/AppLaunchEvent;->writeToParcelImpl(Landroid/os/Parcel;I)V

    .line 122
    iget-object v0, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$IntentStarted;->intent:Landroid/content/Intent;

    invoke-static {p1, v0, p2}, Lcom/google/android/startop/iorap/AppLaunchEvent$IntentProtoParcelable;->write(Landroid/os/Parcel;Landroid/content/Intent;I)V

    .line 123
    iget-wide v0, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$IntentStarted;->timestampNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 124
    return-void
.end method
