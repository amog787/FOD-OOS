.class final Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeviceVolumeUpdate"
.end annotation


# static fields
.field private static final NO_NEW_INDEX:I = -0x801


# instance fields
.field final mCaller:Ljava/lang/String;

.field final mDevice:I

.field final mStreamType:I

.field private final mVssVolIndex:I


# direct methods
.method constructor <init>(IIILjava/lang/String;)V
    .locals 0
    .param p1, "streamType"    # I
    .param p2, "vssVolIndex"    # I
    .param p3, "device"    # I
    .param p4, "caller"    # Ljava/lang/String;

    .line 7353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7354
    iput p1, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mStreamType:I

    .line 7355
    iput p2, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mVssVolIndex:I

    .line 7356
    iput p3, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mDevice:I

    .line 7357
    iput-object p4, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mCaller:Ljava/lang/String;

    .line 7358
    return-void
.end method

.method constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "device"    # I
    .param p3, "caller"    # Ljava/lang/String;

    .line 7362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7363
    iput p1, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mStreamType:I

    .line 7364
    const/16 v0, -0x801

    iput v0, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mVssVolIndex:I

    .line 7365
    iput p2, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mDevice:I

    .line 7366
    iput-object p3, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mCaller:Ljava/lang/String;

    .line 7367
    return-void
.end method


# virtual methods
.method getVolumeIndex()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 7374
    iget v0, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mVssVolIndex:I

    const/16 v1, -0x801

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 7375
    iget v0, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mVssVolIndex:I

    return v0
.end method

.method hasVolumeIndex()Z
    .locals 2

    .line 7370
    iget v0, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mVssVolIndex:I

    const/16 v1, -0x801

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
