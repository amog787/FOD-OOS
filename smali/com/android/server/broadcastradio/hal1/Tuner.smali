.class Lcom/android/server/broadcastradio/hal1/Tuner;
.super Landroid/hardware/radio/ITuner$Stub;
.source "Tuner.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BroadcastRadioService.Tuner"


# instance fields
.field private final mClientCallback:Landroid/hardware/radio/ITunerCallback;

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mIsClosed:Z

.field private mIsMuted:Z

.field private final mLock:Ljava/lang/Object;

.field private final mNativeContext:J

.field private mRegion:I

.field private final mTunerCallback:Lcom/android/server/broadcastradio/hal1/TunerCallback;

.field private final mWithAudio:Z


# direct methods
.method constructor <init>(Landroid/hardware/radio/ITunerCallback;IIZI)V
    .locals 3
    .param p1, "clientCallback"    # Landroid/hardware/radio/ITunerCallback;
    .param p2, "halRev"    # I
    .param p3, "region"    # I
    .param p4, "withAudio"    # Z
    .param p5, "band"    # I

    .line 55
    invoke-direct {p0}, Landroid/hardware/radio/ITuner$Stub;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsClosed:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsMuted:Z

    .line 56
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    .line 57
    new-instance v1, Lcom/android/server/broadcastradio/hal1/TunerCallback;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/broadcastradio/hal1/TunerCallback;-><init>(Lcom/android/server/broadcastradio/hal1/Tuner;Landroid/hardware/radio/ITunerCallback;I)V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mTunerCallback:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    .line 58
    iput p3, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mRegion:I

    .line 59
    iput-boolean p4, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mWithAudio:Z

    .line 60
    invoke-direct {p0, p2, p4, p5}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeInit(IZI)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    .line 61
    new-instance v1, Lcom/android/server/broadcastradio/hal1/-$$Lambda$-XcW_oxw3YwSco8d8bZQoqwUTnM;

    invoke-direct {v1, p0}, Lcom/android/server/broadcastradio/hal1/-$$Lambda$-XcW_oxw3YwSco8d8bZQoqwUTnM;-><init>(Lcom/android/server/broadcastradio/hal1/Tuner;)V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v1}, Landroid/hardware/radio/ITunerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->close()V

    .line 67
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private checkConfiguredLocked()Z
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mTunerCallback:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->isInitialConfigurationDone()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 123
    :cond_0
    const-string v0, "BroadcastRadioService.Tuner"

    const-string v1, "Initial configuration is still pending, skipping the operation"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method private checkNotClosedLocked()V
    .locals 2

    .line 116
    iget-boolean v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsClosed:Z

    if-nez v0, :cond_0

    .line 119
    return-void

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tuner is closed, no further operations are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native nativeCancel(J)V
.end method

.method private native nativeCancelAnnouncement(J)V
.end method

.method private native nativeClose(J)V
.end method

.method private native nativeFinalize(J)V
.end method

.method private native nativeGetConfiguration(JI)Landroid/hardware/radio/RadioManager$BandConfig;
.end method

.method private native nativeGetImage(JI)[B
.end method

.method private native nativeGetProgramList(JLjava/util/Map;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeInit(IZI)J
.end method

.method private native nativeIsAnalogForced(J)Z
.end method

.method private native nativeScan(JZZ)V
.end method

.method private native nativeSetAnalogForced(JZ)V
.end method

.method private native nativeSetConfiguration(JLandroid/hardware/radio/RadioManager$BandConfig;)V
.end method

.method private native nativeStartBackgroundScan(J)Z
.end method

.method private native nativeStep(JZZ)V
.end method

.method private native nativeTune(JLandroid/hardware/radio/ProgramSelector;)V
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 207
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v1, v2}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeCancel(J)V

    .line 208
    monitor-exit v0

    .line 209
    return-void

    .line 208
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public cancelAnnouncement()V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 215
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v1, v2}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeCancelAnnouncement(J)V

    .line 216
    monitor-exit v0

    .line 217
    return-void

    .line 216
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsClosed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 103
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsClosed:Z

    .line 104
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mTunerCallback:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    invoke-virtual {v1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->detach()V

    .line 105
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v1}, Landroid/hardware/radio/ITunerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 106
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v1, v2}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeClose(J)V

    .line 107
    monitor-exit v0

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 71
    iget-wide v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeFinalize(J)V

    .line 72
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 73
    return-void
.end method

.method public getConfiguration()Landroid/hardware/radio/RadioManager$BandConfig;
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 143
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    iget v3, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mRegion:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeGetConfiguration(JI)Landroid/hardware/radio/RadioManager$BandConfig;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getImage(I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "id"    # I

    .line 221
    if-eqz p1, :cond_2

    .line 226
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeGetImage(JI)[B

    move-result-object v1

    .line 228
    .local v1, "rawImage":[B
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    if-eqz v1, :cond_1

    array-length v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    const/4 v0, 0x0

    array-length v2, v1

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 230
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 228
    .end local v1    # "rawImage":[B
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 222
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image ID is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getParameters(Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map;"
        }
    .end annotation

    .line 301
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported by HAL 1.x"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getProgramList(Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .param p1, "vendorFilter"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation

    .line 245
    move-object v0, p1

    .line 246
    .local v0, "sFilter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 247
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 248
    iget-wide v2, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeGetProgramList(JLjava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 249
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    if-eqz v2, :cond_0

    .line 252
    monitor-exit v1

    return-object v2

    .line 250
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Program list is not ready"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "sFilter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/server/broadcastradio/hal1/Tuner;
    .end local p1    # "vendorFilter":Ljava/util/Map;
    throw v3

    .line 253
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    .restart local v0    # "sFilter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/android/server/broadcastradio/hal1/Tuner;
    .restart local p1    # "vendorFilter":Ljava/util/Map;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isClosed()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsClosed:Z

    return v0
.end method

.method public isConfigFlagSet(I)Z
    .locals 3
    .param p1, "flag"    # I

    .line 273
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 276
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v1, v2}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeIsAnalogForced(J)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 277
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 279
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported by HAL 1.x"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isConfigFlagSupported(I)Z
    .locals 1
    .param p1, "flag"    # I

    .line 268
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMuted()Z
    .locals 2

    .line 162
    iget-boolean v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mWithAudio:Z

    if-nez v0, :cond_0

    .line 163
    const-string v0, "BroadcastRadioService.Tuner"

    const-string v1, "Tuner did not request audio, pretending it was muted"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v0, 0x1

    return v0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 168
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsMuted:Z

    monitor-exit v0

    return v1

    .line 169
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public scan(ZZ)V
    .locals 3
    .param p1, "directionDown"    # Z
    .param p2, "skipSubChannel"    # Z

    .line 183
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 185
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkConfiguredLocked()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 186
    :cond_0
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeScan(JZZ)V

    .line 187
    monitor-exit v0

    .line 188
    return-void

    .line 187
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setConfigFlag(IZ)V
    .locals 3
    .param p1, "flag"    # I
    .param p2, "value"    # Z

    .line 284
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 287
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v1, v2, p2}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeSetAnalogForced(JZ)V

    .line 288
    monitor-exit v0

    return-void

    .line 289
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 291
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported by HAL 1.x"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 3
    .param p1, "config"    # Landroid/hardware/radio/RadioManager$BandConfig;

    .line 129
    if-eqz p1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 134
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeSetConfiguration(JLandroid/hardware/radio/RadioManager$BandConfig;)V

    .line 135
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandConfig;->getRegion()I

    move-result v1

    iput v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mRegion:I

    .line 136
    monitor-exit v0

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The argument must not be a null pointer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMuted(Z)V
    .locals 3
    .param p1, "mute"    # Z

    .line 149
    iget-boolean v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mWithAudio:Z

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 154
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsMuted:Z

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    .line 155
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsMuted:Z

    .line 156
    const-string v1, "BroadcastRadioService.Tuner"

    const-string v2, "Mute via RadioService is not implemented - please handle it via app"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    monitor-exit v0

    .line 158
    return-void

    .line 157
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 150
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t operate on mute - no audio requested"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setParameters(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .param p1, "parameters"    # Ljava/util/Map;

    .line 296
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported by HAL 1.x"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startBackgroundScan()Z
    .locals 3

    .line 238
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 240
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v1, v2}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeStartBackgroundScan(J)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 241
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startProgramListUpdates(Landroid/hardware/radio/ProgramList$Filter;)V
    .locals 1
    .param p1, "filter"    # Landroid/hardware/radio/ProgramList$Filter;

    .line 258
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mTunerCallback:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    invoke-virtual {v0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->startProgramListUpdates(Landroid/hardware/radio/ProgramList$Filter;)V

    .line 259
    return-void
.end method

.method public step(ZZ)V
    .locals 3
    .param p1, "directionDown"    # Z
    .param p2, "skipSubChannel"    # Z

    .line 174
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 176
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkConfiguredLocked()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 177
    :cond_0
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeStep(JZZ)V

    .line 178
    monitor-exit v0

    .line 179
    return-void

    .line 178
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopProgramListUpdates()V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mTunerCallback:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->stopProgramListUpdates()V

    .line 264
    return-void
.end method

.method public tune(Landroid/hardware/radio/ProgramSelector;)V
    .locals 3
    .param p1, "selector"    # Landroid/hardware/radio/ProgramSelector;

    .line 192
    if-eqz p1, :cond_1

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tuning to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastRadioService.Tuner"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 198
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkConfiguredLocked()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 199
    :cond_0
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeTune(JLandroid/hardware/radio/ProgramSelector;)V

    .line 200
    monitor-exit v0

    .line 201
    return-void

    .line 200
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 193
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The argument must not be a null pointer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
