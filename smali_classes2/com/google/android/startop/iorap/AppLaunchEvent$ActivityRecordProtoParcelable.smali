.class public Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityRecordProtoParcelable;
.super Ljava/lang/Object;
.source "AppLaunchEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/AppLaunchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityRecordProtoParcelable"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/os/Parcel;)[B
    .locals 1
    .param p0, "p"    # Landroid/os/Parcel;

    .line 360
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 362
    .local v0, "data":[B
    return-object v0
.end method

.method public static write(Landroid/os/Parcel;[BI)V
    .locals 0
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "activityRecordSnapshot"    # [B
    .param p2, "flags"    # I

    .line 356
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 357
    return-void
.end method
