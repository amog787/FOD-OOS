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

    .line 7482
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/audio/AudioService;
    .param p2, "x1"    # Lcom/android/server/audio/AudioService$1;

    .line 7482
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method

.method private onNotifyVolumeEvent(Landroid/media/audiopolicy/IAudioPolicyCallback;I)V
    .locals 1
    .param p1, "apc"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p2, "direction"    # I

    .line 7530
    :try_start_0
    invoke-interface {p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyVolumeAdjust(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7533
    goto :goto_0

    .line 7531
    :catch_0
    move-exception v0

    .line 7534
    :goto_0
    return-void
.end method

.method private onPersistSafeVolumeState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 7522
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "audio_safe_volume_state"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7525
    return-void
.end method

.method private persistRingerMode(I)V
    .locals 2
    .param p1, "ringerMode"    # I

    .line 7515
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7516
    return-void

    .line 7518
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_ringer"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7519
    return-void
.end method

.method private persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .locals 4
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "device"    # I

    .line 7500
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7501
    return-void

    .line 7503
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 7504
    return-void

    .line 7506
    :cond_1
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$4800(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7507
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 7508
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v1

    .line 7509
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    const/4 v3, -0x2

    .line 7507
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 7512
    :cond_2
    return-void
.end method

.method private setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V
    .locals 4
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 7487
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 7490
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 7491
    .local v0, "numStreamTypes":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "streamType":I
    :goto_0
    if-ltz v1, :cond_1

    .line 7492
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v1

    .line 7493
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 7494
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 7491
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 7497
    .end local v1    # "streamType":I
    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .line 7538
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2c

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2b

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2a

    const/4 v5, 0x3

    if-eq v0, v5, :cond_29

    const/4 v6, 0x4

    if-eq v0, v6, :cond_28

    const/4 v6, 0x5

    if-eq v0, v6, :cond_27

    const/4 v7, 0x7

    const/4 v8, 0x0

    if-eq v0, v7, :cond_24

    const/16 v7, 0x8

    if-eq v0, v7, :cond_22

    const/16 v7, 0x64

    if-eq v0, v7, :cond_20

    packed-switch v0, :pswitch_data_0

    const/16 v7, 0xa

    packed-switch v0, :pswitch_data_1

    const/16 v6, 0x35

    const/16 v7, 0xf

    const/16 v9, 0x36

    const/16 v10, 0xe

    const/4 v11, -0x1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_b

    .line 7834
    :pswitch_0
    new-array v0, v3, [I

    const/16 v4, 0x144

    aput v4, v0, v8

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 7836
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v12, "send_widevine_level_mdm"

    invoke-static {v4, v12, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/server/audio/AudioService;->access$6902(Lcom/android/server/audio/AudioService;I)I

    .line 7838
    const-string/jumbo v0, "ro.boot.hw_version"

    invoke-static {v0, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 7839
    .local v0, "hWVersionNext":I
    const-string/jumbo v4, "ro.boot.vbmeta.device_state"

    const-string v8, "default"

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7840
    .local v4, "oemLockStatusNext":Ljava/lang/String;
    const-string/jumbo v8, "ro.product.board"

    const-string v11, "default"

    invoke-static {v8, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 7842
    .local v8, "boardInfoNext":Ljava/lang/String;
    if-eq v0, v10, :cond_0

    if-ne v0, v9, :cond_1

    :cond_0
    const-string/jumbo v9, "lito"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    :cond_1
    if-eq v0, v7, :cond_2

    if-ne v0, v6, :cond_5

    :cond_2
    const-string/jumbo v6, "kona"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 7843
    :cond_3
    const-string/jumbo v6, "locked"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 7844
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$6900(Lcom/android/server/audio/AudioService;)I

    move-result v6

    if-eq v3, v6, :cond_4

    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$6900(Lcom/android/server/audio/AudioService;)I

    move-result v3

    if-ne v5, v3, :cond_5

    .line 7845
    :cond_4
    const-string v3, "AS.AudioService"

    const-string v5, "Try to do keybox provsion through OTA"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7846
    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$7000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/OpAudioMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/audio/OpAudioMonitor;->otaInstallWidevineKeybox()V

    .line 7848
    .end local v0    # "hWVersionNext":I
    .end local v4    # "oemLockStatusNext":Ljava/lang/String;
    .end local v8    # "boardInfoNext":Ljava/lang/String;
    :cond_5
    goto/16 :goto_b

    .line 7768
    :pswitch_1
    new-array v0, v3, [I

    const/16 v12, 0xb2

    aput v12, v0, v8

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 7770
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "send_widevine_level_mdm"

    invoke-static {v12, v13, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v0, v8}, Lcom/android/server/audio/AudioService;->access$6902(Lcom/android/server/audio/AudioService;I)I

    .line 7771
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6900(Lcom/android/server/audio/AudioService;)I

    move-result v0

    if-eq v5, v0, :cond_e

    .line 7772
    const/4 v8, 0x0

    .line 7774
    .local v8, "DrmService":Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey;
    :try_start_0
    invoke-static {}, Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey;->getService()Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey;

    move-result-object v0

    move-object v8, v0

    .line 7775
    const-string v0, "AS.AudioService"

    const-string v12, "MDM: get DrmService success!"

    invoke-static {v0, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7779
    goto :goto_0

    .line 7776
    :catchall_0
    move-exception v0

    .line 7777
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7778
    const-string v12, "AS.AudioService"

    const-string v13, "MDM: get DrmService ERROR!"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7780
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    if-eqz v8, :cond_d

    .line 7781
    const/4 v12, 0x0

    .line 7783
    .local v12, "IsL1keylevel":I
    :try_start_1
    invoke-interface {v8}, Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey;->verifyKeybox()I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 7788
    .end local v12    # "IsL1keylevel":I
    .local v0, "IsL1keylevel":I
    goto :goto_1

    .line 7784
    .end local v0    # "IsL1keylevel":I
    .restart local v12    # "IsL1keylevel":I
    :catch_0
    move-exception v0

    move-object v13, v0

    move-object v0, v13

    .line 7785
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 7786
    const-string v13, "AS.AudioService"

    const-string v14, "can not verifyKeybox"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7787
    const/16 v12, -0x64

    move v0, v12

    .line 7789
    .end local v12    # "IsL1keylevel":I
    .local v0, "IsL1keylevel":I
    :goto_1
    const-string/jumbo v12, "ro.boot.hw_version"

    invoke-static {v12, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 7790
    .local v12, "hWVersion":I
    const-string/jumbo v13, "ro.boot.vbmeta.device_state"

    const-string v14, "default"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 7791
    .local v13, "oemLockStatus":Ljava/lang/String;
    const-string/jumbo v14, "ro.product.board"

    const-string v15, "default"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 7797
    .local v14, "boardInfo":Ljava/lang/String;
    if-eq v12, v10, :cond_6

    if-ne v12, v9, :cond_7

    :cond_6
    const-string/jumbo v9, "lito"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    :cond_7
    if-eq v12, v7, :cond_8

    if-ne v12, v6, :cond_d

    :cond_8
    const-string/jumbo v6, "kona"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 7798
    :cond_9
    const-string/jumbo v6, "locked"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 7799
    iget-object v6, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$6900(Lcom/android/server/audio/AudioService;)I

    move-result v6

    if-eqz v6, :cond_c

    if-eq v6, v3, :cond_b

    if-eq v6, v4, :cond_a

    .line 7820
    const-string v3, "AS.AudioService"

    const-string v4, "MDM: unknow widevine key level status or lost again"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 7813
    :cond_a
    if-ne v11, v0, :cond_d

    .line 7814
    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "send_widevine_level_mdm"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7815
    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$7000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/OpAudioMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/audio/OpAudioMonitor;->sendWideVineKeyLostAgain()V

    .line 7816
    const-string v3, "AS.AudioService"

    const-string v4, "MDM:Widevine Key Lost Again"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 7808
    :cond_b
    if-nez v0, :cond_d

    .line 7809
    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "send_widevine_level_mdm"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 7801
    :cond_c
    if-ne v11, v0, :cond_d

    .line 7802
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "send_widevine_level_mdm"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7803
    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$7000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/OpAudioMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/audio/OpAudioMonitor;->sendWideVineKeyLost()V

    .line 7804
    const-string v3, "AS.AudioService"

    const-string v4, "MDM: Widevine Key Lost"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7825
    .end local v0    # "IsL1keylevel":I
    .end local v8    # "DrmService":Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey;
    .end local v12    # "hWVersion":I
    .end local v13    # "oemLockStatus":Ljava/lang/String;
    .end local v14    # "boardInfo":Ljava/lang/String;
    :cond_d
    :goto_2
    goto/16 :goto_b

    .line 7826
    :cond_e
    const-string v0, "AS.AudioService"

    const-string v3, "MDM: WV key Lost Again"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 7686
    :pswitch_2
    new-array v0, v3, [I

    const/16 v3, 0x112

    aput v3, v0, v8

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 7687
    const-string v0, "WhitelistGameDolbyConfig=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_b

    .line 7677
    :pswitch_3
    new-array v0, v3, [I

    const/16 v3, 0x8c

    aput v3, v0, v8

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 7678
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/server/audio/AudioService;->access$6200(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 7695
    :pswitch_4
    new-array v0, v3, [I

    const/16 v6, 0x8e

    aput v6, v0, v8

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 7696
    const/4 v0, 0x0

    .line 7697
    .local v0, "device":I
    iget v6, v2, Landroid/os/Message;->arg1:I

    if-eq v6, v3, :cond_f

    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$6300(Lcom/android/server/audio/AudioService;)I

    move-result v3

    if-eq v3, v4, :cond_f

    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$6300(Lcom/android/server/audio/AudioService;)I

    move-result v3

    if-ne v3, v5, :cond_12

    .line 7698
    :cond_f
    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$6300(Lcom/android/server/audio/AudioService;)I

    move-result v3

    if-eq v3, v4, :cond_10

    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$6300(Lcom/android/server/audio/AudioService;)I

    move-result v3

    if-ne v3, v5, :cond_11

    .line 7699
    :cond_10
    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v3, v8}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 7701
    :cond_11
    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "audio_call_device"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7702
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set audio_call_device to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS.AudioService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7704
    .end local v0    # "device":I
    :cond_12
    goto/16 :goto_b

    .line 7737
    :pswitch_5
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4000(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 7738
    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, v5

    .line 7739
    .local v0, "streamTypeAlias":I
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$6700(Lcom/android/server/audio/AudioService;)I

    move-result v9

    mul-int/2addr v9, v7

    invoke-static {v4, v9, v5, v0}, Lcom/android/server/audio/AudioService;->access$4300(Lcom/android/server/audio/AudioService;III)I

    move-result v4

    .line 7740
    .local v4, "index":I
    const/16 v9, 0xbb8

    .line 7741
    .local v9, "autoPlayGradient":I
    const/16 v17, 0x0

    .line 7742
    .local v17, "steps":I
    iget v10, v2, Landroid/os/Message;->arg1:I

    if-gt v4, v10, :cond_14

    if-eqz v4, :cond_14

    iget v10, v2, Landroid/os/Message;->arg1:I

    if-eqz v10, :cond_14

    .line 7743
    move v12, v4

    .line 7744
    .local v12, "indexVol":I
    sget-object v10, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    iget v11, v2, Landroid/os/Message;->arg2:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    iget-object v10, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/audio/AudioDeviceBroker;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 7746
    const/16 v9, 0x7d0

    .line 7747
    mul-int/lit16 v10, v4, 0x12c

    iget v11, v2, Landroid/os/Message;->arg1:I

    div-int/2addr v10, v11

    add-int/2addr v10, v6

    div-int/2addr v10, v7

    .line 7748
    .end local v12    # "indexVol":I
    .local v10, "indexVol":I
    iget v11, v2, Landroid/os/Message;->arg2:I

    invoke-static {v5, v10, v11}, Landroid/media/AudioSystem;->setStreamVolumeIndexAS(III)I

    goto :goto_3

    .line 7750
    .end local v10    # "indexVol":I
    .restart local v12    # "indexVol":I
    :cond_13
    iget-object v10, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v11, 0x3

    iget v13, v2, Landroid/os/Message;->arg2:I

    const/4 v14, 0x0

    const/16 v16, 0x1

    const-string v15, "GradientingMusicVol"

    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->access$6800(Lcom/android/server/audio/AudioService;IIIZLjava/lang/String;Z)V

    .line 7753
    .end local v12    # "indexVol":I
    :cond_14
    :goto_3
    iget v5, v2, Landroid/os/Message;->arg1:I

    add-int/2addr v5, v6

    div-int/2addr v5, v7

    div-int v5, v9, v5

    .line 7754
    .end local v17    # "steps":I
    .local v5, "steps":I
    iget-object v6, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$6700(Lcom/android/server/audio/AudioService;)I

    move-result v7

    add-int/2addr v7, v3

    invoke-static {v6, v7}, Lcom/android/server/audio/AudioService;->access$6702(Lcom/android/server/audio/AudioService;I)I

    .line 7755
    iget v3, v2, Landroid/os/Message;->arg1:I

    if-ne v4, v3, :cond_15

    .line 7756
    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3, v8}, Lcom/android/server/audio/AudioService;->access$4002(Lcom/android/server/audio/AudioService;Z)Z

    goto :goto_4

    .line 7758
    :cond_15
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

    .line 7760
    .end local v0    # "streamTypeAlias":I
    .end local v4    # "index":I
    .end local v5    # "steps":I
    .end local v9    # "autoPlayGradient":I
    :goto_4
    goto/16 :goto_b

    .line 7711
    :pswitch_6
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6400(Lcom/android/server/audio/AudioService;)I

    move-result v0

    if-ne v0, v3, :cond_2d

    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6300(Lcom/android/server/audio/AudioService;)I

    move-result v0

    if-nez v0, :cond_2d

    const/16 v0, 0xc

    .line 7712
    invoke-static {v0, v8}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_2d

    const/16 v0, 0xb

    .line 7713
    invoke-static {v0}, Landroid/media/AudioSystem;->isSourceActive(I)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 7714
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, v5}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;I)I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/server/audio/AudioService;->access$6502(Lcom/android/server/audio/AudioService;I)I

    .line 7715
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

    .line 7716
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v0

    .line 7717
    .local v0, "avrcpAbsVolSupported":Z
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$6600(Lcom/android/server/audio/AudioService;)I

    move-result v4

    if-le v4, v7, :cond_19

    sget-object v4, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    iget-object v6, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 7718
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$6500(Lcom/android/server/audio/AudioService;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    if-nez v0, :cond_17

    :cond_16
    sget-object v4, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    iget-object v6, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 7719
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$6500(Lcom/android/server/audio/AudioService;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 7720
    :cond_17
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, v8}, Lcom/android/server/audio/AudioService;->access$6702(Lcom/android/server/audio/AudioService;I)I

    .line 7721
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, v3}, Lcom/android/server/audio/AudioService;->access$4002(Lcom/android/server/audio/AudioService;Z)Z

    .line 7722
    sget-object v4, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    iget-object v6, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$6500(Lcom/android/server/audio/AudioService;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    if-eqz v0, :cond_18

    .line 7723
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$6500(Lcom/android/server/audio/AudioService;)I

    move-result v4

    invoke-static {v5, v8, v4}, Landroid/media/AudioSystem;->setStreamVolumeIndexAS(III)I

    goto :goto_5

    .line 7725
    :cond_18
    iget-object v9, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-static {v9}, Lcom/android/server/audio/AudioService;->access$6500(Lcom/android/server/audio/AudioService;)I

    move-result v12

    const/4 v13, 0x0

    const/4 v15, 0x1

    const-string v14, "GradientingMusicVol"

    invoke-static/range {v9 .. v15}, Lcom/android/server/audio/AudioService;->access$6800(Lcom/android/server/audio/AudioService;IIIZLjava/lang/String;Z)V

    .line 7727
    :goto_5
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

    .line 7729
    :cond_19
    new-instance v4, Landroid/view/KeyEvent;

    const/16 v5, 0x7e

    invoke-direct {v4, v8, v5}, Landroid/view/KeyEvent;-><init>(II)V

    .line 7730
    .local v4, "KeyDownEvent":Landroid/view/KeyEvent;
    new-instance v6, Landroid/view/KeyEvent;

    invoke-direct {v6, v3, v5}, Landroid/view/KeyEvent;-><init>(II)V

    move-object v3, v6

    .line 7731
    .local v3, "KeyUpEvent":Landroid/view/KeyEvent;
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$600(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v5

    .line 7732
    .local v5, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    invoke-virtual {v5, v4, v8}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 7733
    invoke-virtual {v5, v3, v8}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 7734
    .end local v0    # "avrcpAbsVolSupported":Z
    .end local v3    # "KeyUpEvent":Landroid/view/KeyEvent;
    .end local v4    # "KeyDownEvent":Landroid/view/KeyEvent;
    .end local v5    # "helper":Landroid/media/session/MediaSessionLegacyHelper;
    goto/16 :goto_b

    .line 7903
    :pswitch_7
    new-array v0, v3, [I

    const/16 v3, 0x8a

    aput v3, v0, v8

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 7904
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 7905
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$4200(Lcom/android/server/audio/AudioService;)I

    move-result v3

    .line 7904
    const-string/jumbo v4, "per_speaker_music_volume"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_b

    .line 7873
    :pswitch_8
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    iget-object v3, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 7874
    :try_start_2
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1a

    .line 7875
    monitor-exit v3

    goto/16 :goto_b

    .line 7880
    :cond_1a
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 7881
    .local v0, "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v4, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1b

    .line 7882
    monitor-exit v3

    goto/16 :goto_b

    .line 7884
    :cond_1b
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/RecordingActivityMonitor;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/audio/RecordingActivityMonitor;->isRecordingActiveForUid(I)Z

    move-result v4

    if-nez v4, :cond_1d

    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 7885
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$5300(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/PlaybackActivityMonitor;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/audio/PlaybackActivityMonitor;->isPlaybackActiveForUid(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_6

    .line 7897
    :cond_1c
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$7500(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioEventLogger;

    move-result-object v4

    new-instance v5, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 7898
    .end local v0    # "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    monitor-exit v3

    .line 7899
    goto/16 :goto_b

    .line 7886
    .restart local v0    # "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    :cond_1d
    :goto_6
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

    .line 7893
    monitor-exit v3

    goto/16 :goto_b

    .line 7898
    .end local v0    # "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 7869
    :pswitch_9
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SystemServerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/SystemServerAdapter;->sendMicrophoneMuteChangedIntent()V

    .line 7870
    goto/16 :goto_b

    .line 7865
    :pswitch_a
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-static {v0, v3}, Lcom/android/server/audio/AudioService;->access$7400(Lcom/android/server/audio/AudioService;Ljava/util/List;)V

    .line 7866
    goto/16 :goto_b

    .line 7861
    :pswitch_b
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, v2, Landroid/os/Message;->arg1:I

    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/android/server/audio/AudioService;->access$7300(Lcom/android/server/audio/AudioService;ILjava/lang/String;)V

    .line 7862
    goto/16 :goto_b

    .line 7857
    :pswitch_c
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$7200(Lcom/android/server/audio/AudioService;)V

    .line 7858
    goto/16 :goto_b

    .line 7853
    :pswitch_d
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;

    invoke-static {v0, v3}, Lcom/android/server/audio/AudioService;->access$7100(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;)V

    .line 7854
    goto/16 :goto_b

    .line 7671
    :pswitch_e
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6100(Lcom/android/server/audio/AudioService;)V

    .line 7672
    goto/16 :goto_b

    .line 7667
    :pswitch_f
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lcom/android/server/audio/AudioService;->access$6000(Lcom/android/server/audio/AudioService;Ljava/util/ArrayList;)V

    .line 7668
    goto/16 :goto_b

    .line 7568
    :pswitch_10
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v4, v2, Landroid/os/Message;->arg1:I

    if-ne v4, v3, :cond_1e

    goto :goto_7

    :cond_1e
    move v3, v8

    :goto_7
    invoke-static {v0, v3}, Lcom/android/server/audio/AudioService;->access$5000(Lcom/android/server/audio/AudioService;Z)V

    .line 7569
    goto/16 :goto_b

    .line 7663
    :pswitch_11
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiopolicy/IAudioPolicyCallback;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-direct {v1, v0, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->onNotifyVolumeEvent(Landroid/media/audiopolicy/IAudioPolicyCallback;I)V

    .line 7664
    goto/16 :goto_b

    .line 7644
    :pswitch_12
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-static {v0, v3}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;I)V

    .line 7645
    goto/16 :goto_b

    .line 7640
    :pswitch_13
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    .line 7641
    goto/16 :goto_b

    .line 7659
    :pswitch_14
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-static {v0, v3, v4}, Lcom/android/server/audio/AudioService;->access$5900(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    .line 7660
    goto/16 :goto_b

    .line 7655
    :pswitch_15
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, v2, Landroid/os/Message;->arg1:I

    iget v4, v2, Landroid/os/Message;->arg2:I

    invoke-static {v0, v3, v4}, Lcom/android/server/audio/AudioService;->access$5800(Lcom/android/server/audio/AudioService;II)V

    .line 7656
    goto/16 :goto_b

    .line 7648
    :pswitch_16
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 7649
    .local v0, "musicActiveMs":I
    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, -0x2

    const-string/jumbo v5, "unsafe_volume_music_active_ms"

    invoke-static {v3, v5, v0, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 7652
    goto/16 :goto_b

    .line 7636
    .end local v0    # "musicActiveMs":I
    :pswitch_17
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onSystemReady()V

    .line 7637
    goto/16 :goto_b

    .line 7572
    :pswitch_18
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SoundEffectsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/SoundEffectsHelper;->unloadSoundEffects()V

    .line 7573
    goto/16 :goto_b

    .line 7632
    :pswitch_19
    iget v0, v2, Landroid/os/Message;->arg1:I

    invoke-direct {v1, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->onPersistSafeVolumeState(I)V

    .line 7633
    goto/16 :goto_b

    .line 7628
    :pswitch_1a
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v4, v2, Landroid/os/Message;->what:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_1f

    goto :goto_8

    :cond_1f
    move v3, v8

    :goto_8
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/android/server/audio/AudioService;->access$5600(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V

    .line 7630
    goto/16 :goto_b

    .line 7623
    :pswitch_1b
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/server/audio/AudioService;->access$5500(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    .line 7624
    goto/16 :goto_b

    .line 7545
    :pswitch_1c
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    invoke-direct {v1, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V

    .line 7546
    goto/16 :goto_b

    .line 7617
    :cond_20
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5300(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/PlaybackActivityMonitor;

    move-result-object v0

    iget v4, v2, Landroid/os/Message;->arg1:I

    if-ne v4, v3, :cond_21

    goto :goto_9

    :cond_21
    move v3, v8

    :goto_9
    iget v4, v2, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/audio/PlaybackActivityMonitor;->disableAudioForUid(ZI)V

    .line 7619
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5400(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 7620
    goto/16 :goto_b

    .line 7595
    :cond_22
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 7596
    .local v0, "eventSource":Ljava/lang/String;
    iget v4, v2, Landroid/os/Message;->arg1:I

    .line 7597
    .local v4, "useCase":I
    iget v5, v2, Landroid/os/Message;->arg2:I

    .line 7598
    .local v5, "config":I
    if-ne v4, v3, :cond_23

    .line 7599
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid force use FOR_MEDIA in AudioService from "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "AS.AudioService"

    invoke-static {v6, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 7601
    goto/16 :goto_b

    .line 7603
    :cond_23
    new-instance v3, Landroid/media/MediaMetrics$Item;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "audio.forceUse."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7604
    invoke-static {v4}, Landroid/media/AudioSystem;->forceUseUsageToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 7605
    const-string/jumbo v7, "setForceUse"

    invoke-virtual {v3, v6, v7}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    sget-object v6, Landroid/media/MediaMetrics$Property;->FORCE_USE_DUE_TO:Landroid/media/MediaMetrics$Key;

    .line 7606
    invoke-virtual {v3, v6, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    sget-object v6, Landroid/media/MediaMetrics$Property;->FORCE_USE_MODE:Landroid/media/MediaMetrics$Key;

    .line 7608
    invoke-static {v5}, Landroid/media/AudioSystem;->forceUseConfigToString(I)Ljava/lang/String;

    move-result-object v7

    .line 7607
    invoke-virtual {v3, v6, v7}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    .line 7609
    invoke-virtual {v3}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 7610
    sget-object v3, Lcom/android/server/audio/AudioService;->sForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v6, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    invoke-direct {v6, v4, v5, v0}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 7612
    invoke-static {v4, v5}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 7614
    .end local v0    # "eventSource":Ljava/lang/String;
    .end local v4    # "useCase":I
    .end local v5    # "config":I
    goto :goto_b

    .line 7577
    :cond_24
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    .line 7578
    .local v0, "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$5200(Lcom/android/server/audio/AudioService;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 7579
    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$5100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SoundEffectsHelper;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/audio/SoundEffectsHelper;->loadSoundEffects(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V

    goto :goto_a

    .line 7581
    :cond_25
    const-string v3, "AS.AudioService"

    const-string v4, "[schedule]loadSoundEffects() called before boot complete"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7582
    if-eqz v0, :cond_26

    .line 7583
    invoke-virtual {v0, v8}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->run(Z)V

    .line 7587
    .end local v0    # "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    :cond_26
    :goto_a
    goto :goto_b

    .line 7590
    :cond_27
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SoundEffectsHelper;

    move-result-object v0

    iget v3, v2, Landroid/os/Message;->arg1:I

    iget v4, v2, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/audio/SoundEffectsHelper;->playSoundEffect(II)V

    .line 7591
    goto :goto_b

    .line 7564
    :cond_28
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onAudioServerDied()V

    .line 7565
    goto :goto_b

    .line 7560
    :cond_29
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->persistRingerMode(I)V

    .line 7561
    goto :goto_b

    .line 7553
    :cond_2a
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeGroupState;

    .line 7554
    .local v0, "vgs":Lcom/android/server/audio/AudioService$VolumeGroupState;
    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-static {v0, v3}, Lcom/android/server/audio/AudioService$VolumeGroupState;->access$4900(Lcom/android/server/audio/AudioService$VolumeGroupState;I)V

    .line 7555
    goto :goto_b

    .line 7549
    .end local v0    # "vgs":Lcom/android/server/audio/AudioService$VolumeGroupState;
    :cond_2b
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-direct {v1, v0, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    .line 7550
    goto :goto_b

    .line 7541
    :cond_2c
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/audio/AudioService;->setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    .line 7542
    nop

    .line 7910
    :cond_2d
    :goto_b
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x22
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x26
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
