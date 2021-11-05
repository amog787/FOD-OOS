.class final Lcom/android/server/audio/AudioService$AudioServiceInternal;
.super Landroid/media/AudioManagerInternal;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AudioServiceInternal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .line 9365
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/media/AudioManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustStreamVolumeForUid(IIILjava/lang/String;II)V
    .locals 13
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "pid"    # I

    .line 9392
    move-object v0, p0

    move/from16 v10, p5

    if-eqz p2, :cond_0

    .line 9393
    sget-object v7, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v8, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v2, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v11, p4

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9395
    const-string v3, " uid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v8

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIIILjava/lang/String;)V

    .line 9393
    invoke-virtual {v7, v8}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    goto :goto_0

    .line 9392
    :cond_0
    move-object/from16 v11, p4

    .line 9397
    :goto_0
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 9398
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$600(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.MODIFY_AUDIO_SETTINGS"

    move/from16 v12, p6

    invoke-virtual {v1, v2, v12, v10}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move v8, v1

    .line 9400
    .local v8, "hasModifyAudioSettings":Z
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v9, 0x0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;IZI)V

    .line 9402
    return-void
.end method

.method public adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;II)V
    .locals 14
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "pid"    # I

    .line 9380
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 9381
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$600(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.MODIFY_AUDIO_SETTINGS"

    move/from16 v12, p5

    move/from16 v13, p6

    invoke-virtual {v1, v2, v13, v12}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v10, v1

    .line 9385
    .local v10, "hasModifyAudioSettings":Z
    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v11, 0x0

    move/from16 v4, p2

    move v5, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-static/range {v3 .. v11}, Lcom/android/server/audio/AudioService;->access$10600(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;IZI)V

    .line 9387
    return-void
.end method

.method public getRingerModeInternal()I
    .locals 1

    .line 9416
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    return v0
.end method

.method public setAccessibilityServiceUids(Landroid/util/IntArray;)V
    .locals 5
    .param p1, "uids"    # Landroid/util/IntArray;

    .line 9440
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$10800(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 9441
    :try_start_0
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 9442
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$10902(Lcom/android/server/audio/AudioService;[I)[I

    goto :goto_4

    .line 9444
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$10900(Lcom/android/server/audio/AudioService;)[I

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 9445
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$10900(Lcom/android/server/audio/AudioService;)[I

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 9446
    .local v1, "changed":Z
    :goto_1
    if-nez v1, :cond_4

    .line 9447
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$10900(Lcom/android/server/audio/AudioService;)[I

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 9448
    invoke-virtual {p1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$10900(Lcom/android/server/audio/AudioService;)[I

    move-result-object v4

    aget v4, v4, v2

    if-eq v3, v4, :cond_3

    .line 9449
    const/4 v1, 0x1

    .line 9450
    goto :goto_3

    .line 9447
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 9454
    .end local v2    # "i":I
    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    .line 9455
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$10902(Lcom/android/server/audio/AudioService;[I)[I

    .line 9458
    .end local v1    # "changed":Z
    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$10900(Lcom/android/server/audio/AudioService;)[I

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setA11yServicesUids([I)I

    .line 9459
    monitor-exit v0

    .line 9460
    return-void

    .line 9459
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setInputMethodServiceUid(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 9467
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$11000(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 9468
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$11100(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 9469
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$11200(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setCurrentImeUid(I)I

    .line 9470
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, p1}, Lcom/android/server/audio/AudioService;->access$11102(Lcom/android/server/audio/AudioService;I)I

    .line 9472
    :cond_0
    monitor-exit v0

    .line 9473
    return-void

    .line 9472
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setRingerModeDelegate(Landroid/media/AudioManagerInternal$RingerModeDelegate;)V
    .locals 2
    .param p1, "delegate"    # Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .line 9368
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService;->access$10502(Lcom/android/server/audio/AudioService;Landroid/media/AudioManagerInternal$RingerModeDelegate;)Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .line 9369
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$10500(Lcom/android/server/audio/AudioService;)Landroid/media/AudioManagerInternal$RingerModeDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9370
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 9371
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$7800(Lcom/android/server/audio/AudioService;)Z

    .line 9372
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9373
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioServiceInternal;->getRingerModeInternal()I

    move-result v0

    const-string v1, "AS.AudioService.setRingerModeDelegate"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioServiceInternal;->setRingerModeInternal(ILjava/lang/String;)V

    goto :goto_0

    .line 9372
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 9375
    :cond_0
    :goto_0
    return-void
.end method

.method public setRingerModeInternal(ILjava/lang/String;)V
    .locals 1
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .line 9421
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioService;->setRingerModeInternal(ILjava/lang/String;)V

    .line 9422
    return-void
.end method

.method public setStreamVolumeForUid(IIILjava/lang/String;II)V
    .locals 9
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "pid"    # I

    .line 9407
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 9408
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$600(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v0, v1, p6, p5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v8, v0

    .line 9410
    .local v8, "hasModifyAudioSettings":Z
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p4

    move v7, p5

    invoke-static/range {v1 .. v8}, Lcom/android/server/audio/AudioService;->access$10700(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;IZ)V

    .line 9412
    return-void
.end method

.method public silenceRingerModeInternal(Ljava/lang/String;)V
    .locals 1
    .param p1, "caller"    # Ljava/lang/String;

    .line 9426
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService;->silenceRingerModeInternal(Ljava/lang/String;)V

    .line 9427
    return-void
.end method

.method public updateRingerModeAffectedStreamsInternal()V
    .locals 4

    .line 9431
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 9432
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$7800(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9433
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioServiceInternal;->getRingerModeInternal()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/audio/AudioService;->access$7900(Lcom/android/server/audio/AudioService;IZ)V

    .line 9435
    :cond_0
    monitor-exit v0

    .line 9436
    return-void

    .line 9435
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
