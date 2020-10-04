.class public Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;
.super Ljava/lang/Object;
.source "BroadcastRadioService.java"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mNativeContext:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->mNativeContext:J

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private native nativeFinalize(J)V
.end method

.method private native nativeInit()J
.end method

.method private native nativeLoadModules(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeOpenTuner(JILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Lcom/android/server/broadcastradio/hal1/Tuner;
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 44
    iget-wide v0, p0, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->nativeFinalize(J)V

    .line 45
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 46
    return-void
.end method

.method public loadModules()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->mNativeContext:J

    invoke-direct {p0, v1, v2}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->nativeLoadModules(J)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 57
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public openTuner(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;
    .locals 8
    .param p1, "moduleId"    # I
    .param p2, "bandConfig"    # Landroid/hardware/radio/RadioManager$BandConfig;
    .param p3, "withAudio"    # Z
    .param p4, "callback"    # Landroid/hardware/radio/ITunerCallback;

    .line 62
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->mNativeContext:J

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->nativeOpenTuner(JILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Lcom/android/server/broadcastradio/hal1/Tuner;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 64
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
