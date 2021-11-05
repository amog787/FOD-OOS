.class Lcom/android/server/audio/AudioService$AudioHandler;
.super Landroid/os/Handler;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .line 7471
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/audio/AudioService;
    .param p2, "x1"    # Lcom/android/server/audio/AudioService$1;

    .line 7471
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method

.method private onNotifyVolumeEvent(Landroid/media/audiopolicy/IAudioPolicyCallback;I)V
    .locals 1
    .param p1, "apc"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p2, "direction"    # I

    .line 7519
    :try_start_0
    invoke-interface {p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyVolumeAdjust(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7522
    goto :goto_0

    .line 7520
    :catch_0
    move-exception v0

    .line 7523
    :goto_0
    return-void
.end method

.method private onPersistSafeVolumeState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 7511
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "audio_safe_volume_state"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7514
    return-void
.end method

.method private persistRingerMode(I)V
    .locals 2
    .param p1, "ringerMode"    # I

    .line 7504
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7505
    return-void

    .line 7507
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_ringer"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7508
    return-void
.end method

.method private persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .locals 4
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "device"    # I

    .line 7489
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7490
    return-void

    .line 7492
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 7493
    return-void

    .line 7495
    :cond_1
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$4800(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7496
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 7497
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v1

    .line 7498
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    const/4 v3, -0x2

    .line 7496
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 7501
    :cond_2
    return-void
.end method

.method private setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V
    .locals 4
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 7476
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 7479
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 7480
    .local v0, "numStreamTypes":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "streamType":I
    :goto_0
    if-ltz v1, :cond_1

    .line 7481
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v1

    .line 7482
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 7483
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 7480
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 7486
    .end local v1    # "streamType":I
    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .line 7527
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2a

    const/4 v3, 0x1

    if-eq v0, v3, :cond_29

    const/4 v4, 0x2

    if-eq v0, v4, :cond_28

    const/4 v5, 0x3

    if-eq v0, v5, :cond_27

    const/4 v6, 0x4

    if-eq v0, v6, :cond_26

    const/4 v6, 0x5

    if-eq v0, v6, :cond_25

    const/4 v7, 0x7

    const/4 v8, 0x0

    if-eq v0, v7, :cond_22

    const/16 v7, 0x8

    if-eq v0, v7, :cond_20

    const/16 v7, 0x26

    if-eq v0, v7, :cond_1f

    const/16 v7, 0x27

    if-eq v0, v7, :cond_1e

    const/16 v7, 0x29

    const/4 v9, -0x2

    if-eq v0, v7, :cond_13

    const/16 v7, 0x64

    if-eq v0, v7, :cond_11

    packed-switch v0, :pswitch_data_0

    const/16 v7, 0xa

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_a

    .line 7684
    :pswitch_0
    new-array v0, v3, [I

    const/16 v6, 0x8e

    aput v6, v0, v8

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 7685
    const/4 v0, 0x0

    .line 7686
    .local v0, "device":I
    iget v6, v2, Landroid/os/Message;->arg1:I

    if-eq v6, v3, :cond_0

    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$6300(Lcom/android/server/audio/AudioService;)I

    move-result v3

    if-eq v3, v4, :cond_0

    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$6300(Lcom/android/server/audio/AudioService;)I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 7687
    :cond_0
    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$6300(Lcom/android/server/audio/AudioService;)I

    move-result v3

    if-eq v3, v4, :cond_1

    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$6300(Lcom/android/server/audio/AudioService;)I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 7688
    :cond_1
    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v3, v8}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 7690
    :cond_2
    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "audio_call_device"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7691
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set audio_call_device to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS.AudioService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7693
    .end local v0    # "device":I
    :cond_3
    goto/16 :goto_a

    .line 7730
    :pswitch_1
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4000(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 7731
    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, v5

    .line 7732
    .local v0, "streamTypeAlias":I
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$6700(Lcom/android/server/audio/AudioService;)I

    move-result v9

    mul-int/2addr v9, v7

    invoke-static {v4, v9, v5, v0}, Lcom/android/server/audio/AudioService;->access$4300(Lcom/android/server/audio/AudioService;III)I

    move-result v4

    .line 7733
    .local v4, "index":I
    const/16 v9, 0xbb8

    .line 7734
    .local v9, "autoPlayGradient":I
    const/16 v17, 0x0

    .line 7735
    .local v17, "steps":I
    iget v10, v2, Landroid/os/Message;->arg1:I

    if-gt v4, v10, :cond_5

    if-eqz v4, :cond_5

    iget v10, v2, Landroid/os/Message;->arg1:I

    if-eqz v10, :cond_5

    .line 7736
    move v12, v4

    .line 7737
    .local v12, "indexVol":I
    sget-object v10, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    iget v11, v2, Landroid/os/Message;->arg2:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/audio/AudioDeviceBroker;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 7739
    const/16 v9, 0x7d0

    .line 7740
    mul-int/lit16 v10, v4, 0x12c

    iget v11, v2, Landroid/os/Message;->arg1:I

    div-int/2addr v10, v11

    add-int/2addr v10, v6

    div-int/2addr v10, v7

    .line 7741
    .end local v12    # "indexVol":I
    .local v10, "indexVol":I
    iget v11, v2, Landroid/os/Message;->arg2:I

    invoke-static {v5, v10, v11}, Landroid/media/AudioSystem;->setStreamVolumeIndexAS(III)I

    goto :goto_0

    .line 7743
    .end local v10    # "indexVol":I
    .restart local v12    # "indexVol":I
    :cond_4
    iget-object v10, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v11, 0x3

    iget v13, v2, Landroid/os/Message;->arg2:I

    const/4 v14, 0x0

    const/16 v16, 0x1

    const-string v15, "GradientingMusicVol"

    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->access$6800(Lcom/android/server/audio/AudioService;IIIZLjava/lang/String;Z)V

    .line 7746
    .end local v12    # "indexVol":I
    :cond_5
    :goto_0
    iget v5, v2, Landroid/os/Message;->arg1:I

    add-int/2addr v5, v6

    div-int/2addr v5, v7

    div-int v5, v9, v5

    .line 7747
    .end local v17    # "steps":I
    .local v5, "steps":I
    iget-object v6, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$6700(Lcom/android/server/audio/AudioService;)I

    move-result v7

    add-int/2addr v7, v3

    invoke-static {v6, v7}, Lcom/android/server/audio/AudioService;->access$6702(Lcom/android/server/audio/AudioService;I)I

    .line 7748
    iget v3, v2, Landroid/os/Message;->arg1:I

    if-ne v4, v3, :cond_6

    .line 7749
    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3, v8}, Lcom/android/server/audio/AudioService;->access$4002(Lcom/android/server/audio/AudioService;Z)Z

    goto :goto_1

    .line 7751
    :cond_6
    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v10

    const/16 v11, 0x23

    const/4 v12, 0x0

    iget v13, v2, Landroid/os/Message;->arg1:I

    iget v14, v2, Landroid/os/Message;->arg2:I

    const/4 v15, 0x0

    move/from16 v16, v5

    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7753
    .end local v0    # "streamTypeAlias":I
    .end local v4    # "index":I
    .end local v5    # "steps":I
    .end local v9    # "autoPlayGradient":I
    :goto_1
    goto/16 :goto_a

    .line 7700
    :pswitch_2
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6400(Lcom/android/server/audio/AudioService;)I

    move-result v0

    if-ne v0, v3, :cond_2b

    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6300(Lcom/android/server/audio/AudioService;)I

    move-result v0

    if-nez v0, :cond_2b

    const/16 v0, 0xc

    .line 7701
    invoke-static {v0, v8}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_2b

    const/16 v0, 0xb

    .line 7702
    invoke-static {v0}, Landroid/media/AudioSystem;->isSourceActive(I)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 7703
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, v5}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;I)I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/server/audio/AudioService;->access$6502(Lcom/android/server/audio/AudioService;I)I

    .line 7704
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v4

    aget-object v4, v4, v5

    iget-object v6, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$6500(Lcom/android/server/audio/AudioService;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/server/audio/AudioService;->access$6602(Lcom/android/server/audio/AudioService;I)I

    .line 7705
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v0

    .line 7708
    .local v0, "avrcpAbsVolSupported":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HeadsetHook, device:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$6500(Lcom/android/server/audio/AudioService;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " volume:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$6600(Lcom/android/server/audio/AudioService;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " avrcpAbsVolSupported:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "AS.AudioService"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7710
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$6600(Lcom/android/server/audio/AudioService;)I

    move-result v4

    if-le v4, v7, :cond_a

    sget-object v4, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    iget-object v6, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 7711
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$6500(Lcom/android/server/audio/AudioService;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez v0, :cond_8

    :cond_7
    sget-object v4, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    iget-object v6, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 7712
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$6500(Lcom/android/server/audio/AudioService;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 7713
    :cond_8
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, v8}, Lcom/android/server/audio/AudioService;->access$6702(Lcom/android/server/audio/AudioService;I)I

    .line 7714
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, v3}, Lcom/android/server/audio/AudioService;->access$4002(Lcom/android/server/audio/AudioService;Z)Z

    .line 7715
    sget-object v4, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    iget-object v6, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$6500(Lcom/android/server/audio/AudioService;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz v0, :cond_9

    .line 7716
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$6500(Lcom/android/server/audio/AudioService;)I

    move-result v4

    invoke-static {v5, v8, v4}, Landroid/media/AudioSystem;->setStreamVolumeIndexAS(III)I

    goto :goto_2

    .line 7718
    :cond_9
    iget-object v9, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-static {v9}, Lcom/android/server/audio/AudioService;->access$6500(Lcom/android/server/audio/AudioService;)I

    move-result v12

    const/4 v13, 0x0

    const/4 v15, 0x1

    const-string v14, "GradientingMusicVol"

    invoke-static/range {v9 .. v15}, Lcom/android/server/audio/AudioService;->access$6800(Lcom/android/server/audio/AudioService;IIIZLjava/lang/String;Z)V

    .line 7720
    :goto_2
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v9

    const/16 v10, 0x23

    const/4 v11, 0x0

    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$6600(Lcom/android/server/audio/AudioService;)I

    move-result v12

    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$6500(Lcom/android/server/audio/AudioService;)I

    move-result v13

    const/4 v14, 0x0

    const/16 v15, 0xa

    invoke-static/range {v9 .. v15}, Lcom/android/server/audio/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7722
    :cond_a
    new-instance v4, Landroid/view/KeyEvent;

    const/16 v5, 0x7e

    invoke-direct {v4, v8, v5}, Landroid/view/KeyEvent;-><init>(II)V

    .line 7723
    .local v4, "KeyDownEvent":Landroid/view/KeyEvent;
    new-instance v6, Landroid/view/KeyEvent;

    invoke-direct {v6, v3, v5}, Landroid/view/KeyEvent;-><init>(II)V

    move-object v3, v6

    .line 7724
    .local v3, "KeyUpEvent":Landroid/view/KeyEvent;
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$600(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v5

    .line 7725
    .local v5, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    invoke-virtual {v5, v4, v8}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 7726
    invoke-virtual {v5, v3, v8}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 7727
    .end local v0    # "avrcpAbsVolSupported":Z
    .end local v3    # "KeyUpEvent":Landroid/view/KeyEvent;
    .end local v4    # "KeyDownEvent":Landroid/view/KeyEvent;
    .end local v5    # "helper":Landroid/media/session/MediaSessionLegacyHelper;
    goto/16 :goto_a

    .line 7868
    :pswitch_3
    new-array v0, v3, [I

    const/16 v3, 0x8a

    aput v3, v0, v8

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 7869
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 7870
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$4200(Lcom/android/server/audio/AudioService;)I

    move-result v3

    .line 7869
    const-string/jumbo v4, "per_speaker_music_volume"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_a

    .line 7838
    :pswitch_4
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    iget-object v3, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 7839
    :try_start_0
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_b

    .line 7840
    monitor-exit v3

    goto/16 :goto_a

    .line 7845
    :cond_b
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 7846
    .local v0, "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v4, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_c

    .line 7847
    monitor-exit v3

    goto/16 :goto_a

    .line 7849
    :cond_c
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/RecordingActivityMonitor;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/audio/RecordingActivityMonitor;->isRecordingActiveForUid(I)Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 7850
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$5300(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/PlaybackActivityMonitor;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/audio/PlaybackActivityMonitor;->isPlaybackActiveForUid(I)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_3

    .line 7862
    :cond_d
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$7400(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioEventLogger;

    move-result-object v4

    new-instance v5, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 7863
    .end local v0    # "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    monitor-exit v3

    .line 7864
    goto/16 :goto_a

    .line 7851
    .restart local v0    # "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    :cond_e
    :goto_3
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v4

    const/16 v5, 0x1f

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v10, 0xbb8

    move-object v9, v0

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7858
    monitor-exit v3

    goto/16 :goto_a

    .line 7863
    .end local v0    # "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 7834
    :pswitch_5
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SystemServerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/SystemServerAdapter;->sendMicrophoneMuteChangedIntent()V

    .line 7835
    goto/16 :goto_a

    .line 7830
    :pswitch_6
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-static {v0, v3}, Lcom/android/server/audio/AudioService;->access$7300(Lcom/android/server/audio/AudioService;Ljava/util/List;)V

    .line 7831
    goto/16 :goto_a

    .line 7826
    :pswitch_7
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, v2, Landroid/os/Message;->arg1:I

    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/android/server/audio/AudioService;->access$7200(Lcom/android/server/audio/AudioService;ILjava/lang/String;)V

    .line 7827
    goto/16 :goto_a

    .line 7822
    :pswitch_8
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$7100(Lcom/android/server/audio/AudioService;)V

    .line 7823
    goto/16 :goto_a

    .line 7818
    :pswitch_9
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;

    invoke-static {v0, v3}, Lcom/android/server/audio/AudioService;->access$7000(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;)V

    .line 7819
    goto/16 :goto_a

    .line 7660
    :pswitch_a
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6100(Lcom/android/server/audio/AudioService;)V

    .line 7661
    goto/16 :goto_a

    .line 7656
    :pswitch_b
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lcom/android/server/audio/AudioService;->access$6000(Lcom/android/server/audio/AudioService;Ljava/util/ArrayList;)V

    .line 7657
    goto/16 :goto_a

    .line 7557
    :pswitch_c
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v4, v2, Landroid/os/Message;->arg1:I

    if-ne v4, v3, :cond_f

    goto :goto_4

    :cond_f
    move v3, v8

    :goto_4
    invoke-static {v0, v3}, Lcom/android/server/audio/AudioService;->access$5000(Lcom/android/server/audio/AudioService;Z)V

    .line 7558
    goto/16 :goto_a

    .line 7652
    :pswitch_d
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiopolicy/IAudioPolicyCallback;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-direct {v1, v0, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->onNotifyVolumeEvent(Landroid/media/audiopolicy/IAudioPolicyCallback;I)V

    .line 7653
    goto/16 :goto_a

    .line 7633
    :pswitch_e
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-static {v0, v3}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;I)V

    .line 7634
    goto/16 :goto_a

    .line 7629
    :pswitch_f
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    .line 7630
    goto/16 :goto_a

    .line 7648
    :pswitch_10
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-static {v0, v3, v4}, Lcom/android/server/audio/AudioService;->access$5900(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    .line 7649
    goto/16 :goto_a

    .line 7644
    :pswitch_11
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, v2, Landroid/os/Message;->arg1:I

    iget v4, v2, Landroid/os/Message;->arg2:I

    invoke-static {v0, v3, v4}, Lcom/android/server/audio/AudioService;->access$5800(Lcom/android/server/audio/AudioService;II)V

    .line 7645
    goto/16 :goto_a

    .line 7637
    :pswitch_12
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 7638
    .local v0, "musicActiveMs":I
    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "unsafe_volume_music_active_ms"

    invoke-static {v3, v4, v0, v9}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 7641
    goto/16 :goto_a

    .line 7625
    .end local v0    # "musicActiveMs":I
    :pswitch_13
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onSystemReady()V

    .line 7626
    goto/16 :goto_a

    .line 7561
    :pswitch_14
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SoundEffectsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/SoundEffectsHelper;->unloadSoundEffects()V

    .line 7562
    goto/16 :goto_a

    .line 7621
    :pswitch_15
    iget v0, v2, Landroid/os/Message;->arg1:I

    invoke-direct {v1, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->onPersistSafeVolumeState(I)V

    .line 7622
    goto/16 :goto_a

    .line 7617
    :pswitch_16
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v4, v2, Landroid/os/Message;->what:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_10

    goto :goto_5

    :cond_10
    move v3, v8

    :goto_5
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/android/server/audio/AudioService;->access$5600(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V

    .line 7619
    goto/16 :goto_a

    .line 7612
    :pswitch_17
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/server/audio/AudioService;->access$5500(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    .line 7613
    goto/16 :goto_a

    .line 7534
    :pswitch_18
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    invoke-direct {v1, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V

    .line 7535
    goto/16 :goto_a

    .line 7606
    :cond_11
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5300(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/PlaybackActivityMonitor;

    move-result-object v0

    iget v4, v2, Landroid/os/Message;->arg1:I

    if-ne v4, v3, :cond_12

    goto :goto_6

    :cond_12
    move v3, v8

    :goto_6
    iget v4, v2, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/audio/PlaybackActivityMonitor;->disableAudioForUid(ZI)V

    .line 7608
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5400(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 7609
    goto/16 :goto_a

    .line 7760
    :cond_13
    new-array v0, v3, [I

    const/16 v4, 0xb2

    aput v4, v0, v8

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 7761
    const/4 v0, -0x1

    const-string/jumbo v4, "ro.boot.hw_version"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 7762
    .local v4, "hWVersion":I
    const-string/jumbo v0, "ro.boot.vbmeta.device_state"

    const-string v5, "default"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 7763
    .local v5, "oemLockStatus":Ljava/lang/String;
    const-string/jumbo v0, "ro.product.board"

    const-string v6, "default"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7765
    .local v6, "boardInfo":Ljava/lang/String;
    const/4 v7, 0x0

    .line 7766
    .local v7, "IsL1KeyLost":Z
    const/16 v0, 0xe

    if-eq v4, v0, :cond_14

    const/16 v0, 0x36

    if-ne v4, v0, :cond_15

    :cond_14
    const-string/jumbo v0, "lito"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 7767
    :cond_15
    const-string/jumbo v0, "msmnile"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const/16 v0, 0xf

    if-eq v4, v0, :cond_16

    const/16 v0, 0x35

    if-ne v4, v0, :cond_17

    .line 7768
    :cond_16
    const-string/jumbo v0, "kona"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    :cond_17
    const/16 v0, 0x15

    if-eq v4, v0, :cond_18

    const/16 v0, 0x16

    if-ne v4, v0, :cond_1d

    .line 7769
    :cond_18
    const-string/jumbo v0, "lahaina"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_19
    nop

    .line 7770
    const-string/jumbo v0, "locked"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 7785
    const/4 v10, 0x0

    .line 7787
    .local v10, "DrmService":Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey;
    :try_start_1
    invoke-static {}, Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey;->getService()Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v10, v0

    .line 7790
    goto :goto_7

    .line 7788
    :catchall_1
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    .line 7789
    .local v0, "t":Ljava/lang/Throwable;
    const-string v11, "AS.AudioService"

    const-string v12, "MDM: get DrmService ERROR!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7791
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_7
    if-eqz v10, :cond_1b

    .line 7793
    :try_start_2
    invoke-interface {v10}, Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey;->verifyKeybox()I

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 7794
    .local v0, "status":I
    if-ne v0, v9, :cond_1a

    .line 7795
    const/4 v7, 0x1

    .line 7799
    .end local v0    # "status":I
    :cond_1a
    goto :goto_8

    .line 7797
    :catch_0
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 7798
    .local v0, "e":Landroid/os/RemoteException;
    const-string v9, "AS.AudioService"

    const-string v11, "can not verifyKeybox"

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7802
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    :goto_8
    if-eqz v7, :cond_1d

    .line 7803
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v9, "send_widevine_level_mdm"

    invoke-static {v0, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1c

    .line 7804
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/OpAudioMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/OpAudioMonitor;->sendWideVineKeyLost()V

    .line 7805
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v9, "send_widevine_level_mdm"

    invoke-static {v0, v9, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7807
    :cond_1c
    new-array v0, v3, [I

    const/16 v3, 0x145

    aput v3, v0, v8

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 7808
    const-string v0, "AS.AudioService"

    const-string v3, "Try to do keybox provsion through OTA"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7809
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/OpAudioMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/OpAudioMonitor;->otaInstallWidevineKeybox()V

    .line 7813
    .end local v4    # "hWVersion":I
    .end local v5    # "oemLockStatus":Ljava/lang/String;
    .end local v6    # "boardInfo":Ljava/lang/String;
    .end local v7    # "IsL1KeyLost":Z
    .end local v10    # "DrmService":Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey;
    :cond_1d
    goto/16 :goto_a

    .line 7675
    :cond_1e
    new-array v0, v3, [I

    const/16 v3, 0x112

    aput v3, v0, v8

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 7676
    const-string v0, "WhitelistGameDolbyConfig=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_a

    .line 7666
    :cond_1f
    new-array v0, v3, [I

    const/16 v3, 0x8c

    aput v3, v0, v8

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 7667
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/server/audio/AudioService;->access$6200(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 7584
    :cond_20
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 7585
    .local v0, "eventSource":Ljava/lang/String;
    iget v4, v2, Landroid/os/Message;->arg1:I

    .line 7586
    .local v4, "useCase":I
    iget v5, v2, Landroid/os/Message;->arg2:I

    .line 7587
    .local v5, "config":I
    if-ne v4, v3, :cond_21

    .line 7588
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid force use FOR_MEDIA in AudioService from "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "AS.AudioService"

    invoke-static {v6, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 7590
    goto/16 :goto_a

    .line 7592
    :cond_21
    new-instance v3, Landroid/media/MediaMetrics$Item;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "audio.forceUse."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7593
    invoke-static {v4}, Landroid/media/AudioSystem;->forceUseUsageToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 7594
    const-string/jumbo v7, "setForceUse"

    invoke-virtual {v3, v6, v7}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    sget-object v6, Landroid/media/MediaMetrics$Property;->FORCE_USE_DUE_TO:Landroid/media/MediaMetrics$Key;

    .line 7595
    invoke-virtual {v3, v6, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    sget-object v6, Landroid/media/MediaMetrics$Property;->FORCE_USE_MODE:Landroid/media/MediaMetrics$Key;

    .line 7597
    invoke-static {v5}, Landroid/media/AudioSystem;->forceUseConfigToString(I)Ljava/lang/String;

    move-result-object v7

    .line 7596
    invoke-virtual {v3, v6, v7}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    .line 7598
    invoke-virtual {v3}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 7599
    sget-object v3, Lcom/android/server/audio/AudioService;->sForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v6, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    invoke-direct {v6, v4, v5, v0}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 7601
    invoke-static {v4, v5}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 7603
    .end local v0    # "eventSource":Ljava/lang/String;
    .end local v4    # "useCase":I
    .end local v5    # "config":I
    goto :goto_a

    .line 7566
    :cond_22
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    .line 7567
    .local v0, "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$5200(Lcom/android/server/audio/AudioService;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 7568
    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$5100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SoundEffectsHelper;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/audio/SoundEffectsHelper;->loadSoundEffects(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V

    goto :goto_9

    .line 7570
    :cond_23
    const-string v3, "AS.AudioService"

    const-string v4, "[schedule]loadSoundEffects() called before boot complete"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7571
    if-eqz v0, :cond_24

    .line 7572
    invoke-virtual {v0, v8}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->run(Z)V

    .line 7576
    .end local v0    # "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    :cond_24
    :goto_9
    goto :goto_a

    .line 7579
    :cond_25
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SoundEffectsHelper;

    move-result-object v0

    iget v3, v2, Landroid/os/Message;->arg1:I

    iget v4, v2, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/audio/SoundEffectsHelper;->playSoundEffect(II)V

    .line 7580
    goto :goto_a

    .line 7553
    :cond_26
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onAudioServerDied()V

    .line 7554
    goto :goto_a

    .line 7549
    :cond_27
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->persistRingerMode(I)V

    .line 7550
    goto :goto_a

    .line 7542
    :cond_28
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeGroupState;

    .line 7543
    .local v0, "vgs":Lcom/android/server/audio/AudioService$VolumeGroupState;
    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-static {v0, v3}, Lcom/android/server/audio/AudioService$VolumeGroupState;->access$4900(Lcom/android/server/audio/AudioService$VolumeGroupState;I)V

    .line 7544
    goto :goto_a

    .line 7538
    .end local v0    # "vgs":Lcom/android/server/audio/AudioService$VolumeGroupState;
    :cond_29
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-direct {v1, v0, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    .line 7539
    goto :goto_a

    .line 7530
    :cond_2a
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/audio/AudioService;->setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    .line 7531
    nop

    .line 7875
    :cond_2b
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x22
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
