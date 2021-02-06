.class public Lcom/android/server/audio/AudioService$VolumeController;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VolumeController"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VolumeController"


# instance fields
.field private mController:Landroid/media/IVolumeController;

.field private mLongPressTimeout:I

.field private mNextLongPress:J

.field private mVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;
    .locals 1
    .param p0, "controller"    # Landroid/media/IVolumeController;

    .line 9338
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/media/IVolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 9334
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-static {v0}, Lcom/android/server/audio/AudioService$VolumeController;->binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public isSameBinder(Landroid/media/IVolumeController;)Z
    .locals 2
    .param p1, "controller"    # Landroid/media/IVolumeController;

    .line 9330
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeController;->binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadSettings(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .line 9267
    const-string/jumbo v0, "long_press_timeout"

    const/16 v1, 0x1f4

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mLongPressTimeout:I

    .line 9269
    return-void
.end method

.method public postDismiss()V
    .locals 3

    .line 9392
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_0

    .line 9393
    return-void

    .line 9395
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/media/IVolumeController;->dismiss()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9398
    goto :goto_0

    .line 9396
    :catch_0
    move-exception v0

    .line 9397
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling dismiss"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9399
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public postDisplaySafeVolumeWarning(I)V
    .locals 3
    .param p1, "flags"    # I

    .line 9347
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_0

    .line 9348
    return-void

    .line 9352
    :cond_0
    and-int/lit16 v0, p1, 0x400

    if-nez v0, :cond_1

    .line 9353
    or-int/lit16 p1, p1, 0x400

    .line 9355
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-interface {v0, p1}, Landroid/media/IVolumeController;->displaySafeVolumeWarning(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9358
    goto :goto_0

    .line 9356
    :catch_0
    move-exception v0

    .line 9357
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling displaySafeVolumeWarning"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9359
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public postMasterMuteChanged(I)V
    .locals 3
    .param p1, "flags"    # I

    .line 9372
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_0

    .line 9373
    return-void

    .line 9375
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IVolumeController;->masterMuteChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9378
    goto :goto_0

    .line 9376
    :catch_0
    move-exception v0

    .line 9377
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling masterMuteChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9379
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public postVolumeChanged(II)V
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .line 9362
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_0

    .line 9363
    return-void

    .line 9365
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/media/IVolumeController;->volumeChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9368
    goto :goto_0

    .line 9366
    :catch_0
    move-exception v0

    .line 9367
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling volumeChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9369
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setA11yMode(I)V
    .locals 3
    .param p1, "a11yMode"    # I

    .line 9402
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_0

    .line 9403
    return-void

    .line 9405
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IVolumeController;->setA11yMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9408
    goto :goto_0

    .line 9406
    :catch_0
    move-exception v0

    .line 9407
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling setA11Mode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9409
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setController(Landroid/media/IVolumeController;)V
    .locals 1
    .param p1, "controller"    # Landroid/media/IVolumeController;

    .line 9262
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    .line 9263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    .line 9264
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 3
    .param p1, "layoutDirection"    # I

    .line 9382
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_0

    .line 9383
    return-void

    .line 9385
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IVolumeController;->setLayoutDirection(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9388
    goto :goto_0

    .line 9386
    :catch_0
    move-exception v0

    .line 9387
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling setLayoutDirection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9389
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 9326
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    .line 9327
    return-void
.end method

.method public suppressAdjustment(IIZ)Z
    .locals 8
    .param p1, "resolvedStream"    # I
    .param p2, "flags"    # I
    .param p3, "isMute"    # Z

    .line 9272
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 9273
    return v0

    .line 9275
    :cond_0
    const/4 v1, 0x0

    .line 9290
    .local v1, "suppress":Z
    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-eqz v3, :cond_5

    .line 9292
    if-ne p1, v2, :cond_1

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeController;->mLongPressTimeout:I

    .line 9293
    invoke-static {v2, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9296
    return v0

    .line 9299
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 9300
    .local v2, "now":J
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    if-nez v0, :cond_3

    .line 9302
    iget-wide v4, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    cmp-long v0, v4, v2

    if-gez v0, :cond_2

    .line 9303
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mLongPressTimeout:I

    int-to-long v4, v0

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    .line 9308
    :cond_2
    and-int/lit8 p2, p2, -0x5

    .line 9309
    and-int/lit8 p2, p2, -0x11

    .line 9310
    const/4 v1, 0x0

    goto :goto_0

    .line 9312
    :cond_3
    iget-wide v4, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_5

    .line 9313
    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 9315
    iput-wide v6, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    goto :goto_0

    .line 9318
    :cond_4
    const/4 v1, 0x1

    .line 9322
    .end local v2    # "now":J
    :cond_5
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 9343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolumeController("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
