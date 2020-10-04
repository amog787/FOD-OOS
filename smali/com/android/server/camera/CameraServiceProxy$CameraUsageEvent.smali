.class Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
.super Ljava/lang/Object;
.source "CameraServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/camera/CameraServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraUsageEvent"
.end annotation


# instance fields
.field public final mAPILevel:I

.field public final mCameraFacing:I

.field public final mClientName:Ljava/lang/String;

.field private mCompleted:Z

.field private mDurationOrStartTimeMs:J


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 2
    .param p1, "facing"    # I
    .param p2, "clientName"    # Ljava/lang/String;
    .param p3, "apiLevel"    # I

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraFacing:I

    .line 125
    iput-object p2, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    .line 126
    iput p3, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAPILevel:I

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    .line 129
    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 148
    iget-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public markCompleted()V
    .locals 4

    .line 132
    iget-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    if-eqz v0, :cond_0

    .line 133
    return-void

    .line 135
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    .line 136
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    .line 142
    return-void
.end method
