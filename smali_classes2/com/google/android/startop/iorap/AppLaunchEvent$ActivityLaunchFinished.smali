.class public final Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchFinished;
.super Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;
.source "AppLaunchEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/AppLaunchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityLaunchFinished"
.end annotation


# direct methods
.method public constructor <init>(J[B)V
    .locals 0
    .param p1, "sequenceId"    # J
    .param p3, "snapshot"    # [B

    .line 221
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;-><init>(J[B)V

    .line 222
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 226
    instance-of v0, p1, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunched;

    if-eqz v0, :cond_0

    .line 227
    invoke-super {p0, p1}, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 229
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
