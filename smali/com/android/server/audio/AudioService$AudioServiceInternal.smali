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

    .line 9416
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

    .line 9443
    move-object v0, p0

    move/from16 v10, p5

    if-eqz p2, :cond_0

    .line 9444
    sget-object v7, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v8, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v2, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v11, p4

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9446
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

    .line 9444
    invoke-virtual {v7, v8}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    goto :goto_0

    .line 9443
    :cond_0
    move-object/from16 v11, p4

    .line 9448
    :goto_0
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 9449
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

    .line 9451
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

    .line 9453
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

    .line 9431
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 9432
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

    .line 9436
    .local v10, "hasModifyAudioSettings":Z
    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v11, 0x0

    move/from16 v4, p2

    move v5, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-static/range {v3 .. v11}, Lcom/android/server/audio/AudioService;->access$10700(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;IZI)V

    .line 9438
    return-void
.end method

.method public getRingerModeInternal()I
    .locals 1

    .line 9467
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    return v0
.end method

.method public setAccessibilityServiceUids(Landroid/util/IntArray;)V
    .locals 5
    .param p1, "uids"    # Landroid/util/IntArray;

    .line 9491
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$10900(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 9492
    :try_start_0
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 9493
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$11002(Lcom/android/server/audio/AudioService;[I)[I

    goto :goto_4

    .line 9495
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$11000(Lcom/android/server/audio/AudioService;)[I

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 9496
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$11000(Lcom/android/server/audio/AudioService;)[I

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

    .line 9497
    .local v1, "changed":Z
    :goto_1
    if-nez v1, :cond_4

    .line 9498
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$11000(Lcom/android/server/audio/AudioService;)[I

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 9499
    invoke-virtual {p1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$11000(Lcom/android/server/audio/AudioService;)[I

    move-result-object v4

    aget v4, v4, v2

    if-eq v3, v4, :cond_3

    .line 9500
    const/4 v1, 0x1

    .line 9501
    goto :goto_3

    .line 9498
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 9505
    .end local v2    # "i":I
    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    .line 9506
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$11002(Lcom/android/server/audio/AudioService;[I)[I

    .line 9509
    .end local v1    # "changed":Z
    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$11000(Lcom/android/server/audio/AudioService;)[I

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setA11yServicesUids([I)I

    .line 9510
    monitor-exit v0

    .line 9511
    return-void

    .line 9510
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

    .line 9518
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$11100(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 9519
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$11200(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 9520
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$11300(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setCurrentImeUid(I)I

    .line 9521
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, p1}, Lcom/android/server/audio/AudioService;->access$11202(Lcom/android/server/audio/AudioService;I)I

    .line 9523
    :cond_0
    monitor-exit v0

    .line 9524
    return-void

    .line 9523
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

    .line 9419
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService;->access$10602(Lcom/android/server/audio/AudioService;Landroid/media/AudioManagerInternal$RingerModeDelegate;)Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .line 9420
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$10600(Lcom/android/server/audio/AudioService;)Landroid/media/AudioManagerInternal$RingerModeDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9421
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 9422
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$7900(Lcom/android/server/audio/AudioService;)Z

    .line 9423
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9424
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioServiceInternal;->getRingerModeInternal()I

    move-result v0

    const-string v1, "AS.AudioService.setRingerModeDelegate"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioServiceInternal;->setRingerModeInternal(ILjava/lang/String;)V

    goto :goto_0

    .line 9423
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 9426
    :cond_0
    :goto_0
    return-void
.end method

.method public setRingerModeInternal(ILjava/lang/String;)V
    .locals 1
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .line 9472
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioService;->setRingerModeInternal(ILjava/lang/String;)V

    .line 9473
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

    .line 9458
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 9459
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

    .line 9461
    .local v8, "hasModifyAudioSettings":Z
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p4

    move v7, p5

    invoke-static/range {v1 .. v8}, Lcom/android/server/audio/AudioService;->access$10800(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;IZ)V

    .line 9463
    return-void
.end method

.method public silenceRingerModeInternal(Ljava/lang/String;)V
    .locals 1
    .param p1, "caller"    # Ljava/lang/String;

    .line 9477
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService;->silenceRingerModeInternal(Ljava/lang/String;)V

    .line 9478
    return-void
.end method

.method public updateRingerModeAffectedStreamsInternal()V
    .locals 4

    .line 9482
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 9483
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$7900(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9484
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioServiceInternal;->getRingerModeInternal()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/audio/AudioService;->access$8000(Lcom/android/server/audio/AudioService;IZ)V

    .line 9486
    :cond_0
    monitor-exit v0

    .line 9487
    return-void

    .line 9486
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
