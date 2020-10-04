.class public Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;
.super Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;
.source "HdmiCecLocalDeviceAudioSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;
    }
.end annotation


# static fields
.field private static final SHORT_AUDIO_DESCRIPTOR_CONFIG_PATH:Ljava/lang/String; = "/vendor/etc/sadConfig.xml"

.field private static final TAG:Ljava/lang/String; = "HdmiCecLocalDeviceAudioSystem"


# instance fields
.field private mArcEstablished:Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private mArcIntentUsed:Z

.field private final mDeviceInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPortIdToTvInputs:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSafeAllDeviceInfos:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemAudioControlFeatureEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

.field private final mTvInputsToDeviceInfo:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTvSystemAudioModeSupport:Ljava/lang/Boolean;


# direct methods
.method protected constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/hdmi/HdmiControlService;

    .line 114
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvSystemAudioModeSupport:Ljava/lang/Boolean;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcEstablished:Z

    .line 93
    nop

    .line 94
    const-string/jumbo v1, "ro.hdmi.property_sytem_audio_device_arc_port"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tvinput"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcIntentUsed:Z

    .line 98
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    .line 102
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputsToDeviceInfo:Ljava/util/HashMap;

    .line 106
    nop

    .line 107
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mSafeAllDeviceInfos:Ljava/util/List;

    .line 111
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mDeviceInfos:Landroid/util/SparseArray;

    .line 123
    new-instance v1, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$1;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;)V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    .line 115
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 116
    const-string v2, "hdmi_cec_switch_enabled"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mRoutingControlFeatureEnabled:Z

    .line 117
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 118
    const-string v1, "hdmi_system_audio_control_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mSystemAudioControlFeatureEnabled:Z

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;
    .param p1, "x1"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->addOrUpdateTvInput(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;
    .param p1, "x1"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->removeTvInput(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;
    .param p1, "x1"    # Z

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setSystemAudioMode(Z)V

    return-void
.end method

.method private addOrUpdateTvInput(Ljava/lang/String;)V
    .locals 5
    .param p1, "inputId"    # Ljava/lang/String;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 142
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 143
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getTvInputManager()Landroid/media/tv/TvInputManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputManager;->getTvInputInfo(Ljava/lang/String;)Landroid/media/tv/TvInputInfo;

    move-result-object v1

    .line 145
    .local v1, "tvInfo":Landroid/media/tv/TvInputInfo;
    if-nez v1, :cond_0

    .line 146
    monitor-exit v0

    return-void

    .line 148
    :cond_0
    invoke-virtual {v1}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v2

    .line 149
    .local v2, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v2, :cond_1

    .line 150
    monitor-exit v0

    return-void

    .line 152
    :cond_1
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputsToDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    nop

    .end local v1    # "tvInfo":Landroid/media/tv/TvInputInfo;
    .end local v2    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    monitor-exit v0

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearDeviceInfoList()V
    .locals 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1269
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 1270
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1271
    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1272
    goto :goto_0

    .line 1274
    :cond_0
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 1275
    .end local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    goto :goto_0

    .line 1276
    :cond_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1277
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->updateSafeDeviceInfoList()V

    .line 1278
    return-void
.end method

.method private enableAudioReturnChannel(Z)V
    .locals 3
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 824
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 825
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 826
    const-string/jumbo v1, "ro.hdmi.property_sytem_audio_device_arc_port"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 825
    invoke-virtual {v0, v1, p1}, Lcom/android/server/hdmi/HdmiControlService;->enableAudioReturnChannel(IZ)V

    .line 828
    return-void
.end method

.method private getLpcmShortAudioDescriptor(Landroid/media/AudioDeviceInfo;)[B
    .locals 1
    .param p1, "deviceInfo"    # Landroid/media/AudioDeviceInfo;

    .line 715
    const/4 v0, 0x0

    return-object v0
.end method

.method private getShortAudioDescriptorBytes(Ljava/util/ArrayList;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;)[B"
        }
    .end annotation

    .line 669
    .local p1, "sads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    .line 670
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .line 671
    .local v2, "index":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 672
    .local v4, "sad":[B
    const/4 v5, 0x0

    invoke-static {v4, v5, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 673
    nop

    .end local v4    # "sad":[B
    add-int/lit8 v2, v2, 0x3

    .line 674
    goto :goto_0

    .line 675
    :cond_0
    return-object v0
.end method

.method private getSupportedShortAudioDescriptor(Landroid/media/AudioDeviceInfo;I)[B
    .locals 2
    .param p1, "deviceInfo"    # Landroid/media/AudioDeviceInfo;
    .param p2, "audioFormatCode"    # I

    .line 685
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    .line 707
    return-object v0

    .line 690
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getLpcmShortAudioDescriptor(Landroid/media/AudioDeviceInfo;)[B

    move-result-object v0

    return-object v0

    .line 687
    :cond_1
    return-object v0
.end method

.method private getSupportedShortAudioDescriptors(Landroid/media/AudioDeviceInfo;[I)[B
    .locals 9
    .param p1, "deviceInfo"    # Landroid/media/AudioDeviceInfo;
    .param p2, "audioFormatCodes"    # [I

    .line 618
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 619
    .local v0, "sads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget v4, p2, v3

    .line 620
    .local v4, "audioFormatCode":I
    invoke-direct {p0, p1, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getSupportedShortAudioDescriptor(Landroid/media/AudioDeviceInfo;I)[B

    move-result-object v5

    .line 621
    .local v5, "sad":[B
    if-eqz v5, :cond_1

    .line 622
    array-length v6, v5

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 624
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 626
    :cond_0
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    array-length v7, v5

    .line 628
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 626
    const-string v7, "Dropping Short Audio Descriptor with length %d for requested codec %x"

    invoke-static {v7, v6}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 619
    .end local v4    # "audioFormatCode":I
    .end local v5    # "sad":[B
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 632
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getShortAudioDescriptorBytes(Ljava/util/ArrayList;)[B

    move-result-object v1

    return-object v1
.end method

.method private getSupportedShortAudioDescriptorsFromConfig(Ljava/util/List;[I)[B
    .locals 7
    .param p2, "audioFormatCodes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;",
            ">;[I)[B"
        }
    .end annotation

    .line 637
    .local p1, "deviceConfig":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;>;"
    const/4 v0, 0x0

    .line 638
    .local v0, "deviceConfigToUse":Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;

    .line 640
    .local v2, "device":Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;
    iget-object v3, v2, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;->name:Ljava/lang/String;

    const-string v4, "VX_AUDIO_DEVICE_IN_HDMI_ARC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 641
    move-object v0, v2

    .line 642
    goto :goto_1

    .line 644
    .end local v2    # "device":Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;
    :cond_0
    goto :goto_0

    .line 645
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 647
    const-string v1, "HdmiCecLocalDeviceAudioSystem"

    const-string/jumbo v2, "sadConfig.xml does not have required device info for VX_AUDIO_DEVICE_IN_HDMI_ARC"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const/4 v1, 0x0

    new-array v1, v1, [B

    return-object v1

    .line 651
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 652
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[B>;"
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 653
    .local v2, "sads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v3, v0, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;->supportedCodecs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/hdmi/HdmiUtils$CodecSad;

    .line 654
    .local v4, "codecSad":Lcom/android/server/hdmi/HdmiUtils$CodecSad;
    iget v5, v4, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->audioCodec:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v4, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->sad:[B

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    .end local v4    # "codecSad":Lcom/android/server/hdmi/HdmiUtils$CodecSad;
    goto :goto_2

    .line 656
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    array-length v4, p2

    if-ge v3, v4, :cond_5

    .line 657
    aget v4, p2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 658
    aget v4, p2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 659
    .local v4, "sad":[B
    if-eqz v4, :cond_4

    array-length v5, v4

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    .line 660
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    .end local v4    # "sad":[B
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 664
    .end local v3    # "i":I
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getShortAudioDescriptorBytes(Ljava/util/ArrayList;)[B

    move-result-object v3

    return-object v3
.end method

.method private getSystemAudioDeviceInfo()Landroid/media/AudioDeviceInfo;
    .locals 11

    .line 720
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 721
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 722
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Error getting system audio device because AudioManager not available."

    invoke-static {v3, v2}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 724
    return-object v1

    .line 726
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v4

    .line 727
    .local v4, "devices":[Landroid/media/AudioDeviceInfo;
    new-array v5, v3, [Ljava/lang/Object;

    array-length v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "Found %d audio input devices"

    invoke-static {v6, v5}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 728
    array-length v5, v4

    move v6, v2

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 729
    .local v7, "device":Landroid/media/AudioDeviceInfo;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    move-result-object v9

    aput-object v9, v8, v3

    const-string v9, "%s at port %s"

    invoke-static {v9, v8}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 730
    new-array v8, v3, [Ljava/lang/Object;

    .line 731
    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getEncodings()[I

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v9

    sget-object v10, Lcom/android/server/hdmi/-$$Lambda$Q3K33XXIADNcvSncyQ2-wHWHi4c;->INSTANCE:Lcom/android/server/hdmi/-$$Lambda$Q3K33XXIADNcvSncyQ2-wHWHi4c;

    invoke-interface {v9, v10}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v9

    .line 733
    const-string v10, ", "

    invoke-static {v10}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v2

    .line 730
    const-string v9, "Supported encodings are %s"

    invoke-static {v9, v8}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 735
    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_1

    .line 736
    return-object v7

    .line 728
    .end local v7    # "device":Landroid/media/AudioDeviceInfo;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 739
    :cond_2
    return-object v1
.end method

.method private handleRoutingChangeAndInformationForSwitch(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 1207
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getRoutingPort()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1208
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->routeToInputFromPortId(I)V

    .line 1209
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 1210
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v2

    .line 1209
    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->setAndBroadcastActiveSourceFromOneDeviceType(II)V

    .line 1211
    return-void

    .line 1214
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getRoutingPort()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result v0

    .line 1216
    .local v0, "routingInformationPath":I
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 1217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current device can\'t assign valid physical addressto devices under it any more. It\'s physical address is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1221
    return-void

    .line 1224
    :cond_1
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mAddress:I

    invoke-static {v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRoutingInformation(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1226
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getRoutingPort()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->routeToInputFromPortId(I)V

    .line 1227
    return-void
.end method

.method private handleRoutingChangeAndInformationForSystemAudio()V
    .locals 1

    .line 1202
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->routeToInputFromPortId(I)V

    .line 1203
    return-void
.end method

.method private invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .param p2, "status"    # I

    .line 295
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeDeviceEventListeners(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 296
    return-void
.end method

.method private launchDeviceDiscovery()V
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1249
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 1250
    const-class v0, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->hasAction(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1251
    const-string v0, "HdmiCecLocalDeviceAudioSystem"

    const-string v1, "Device Discovery Action is in progress. Restarting."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    const-class v0, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->removeAction(Ljava/lang/Class;)V

    .line 1254
    :cond_0
    new-instance v0, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$3;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$3;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;)V

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;)V

    .line 1263
    .local v0, "action":Lcom/android/server/hdmi/DeviceDiscoveryAction;
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 1264
    return-void
.end method

.method private notifyArcStatusToAudioService(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 832
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 833
    const-string v1, ""

    const v2, -0x7fffffe0

    invoke-virtual {v0, v2, p1, v1, v1}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 834
    return-void
.end method

.method private parseAudioFormatCodes([B)[I
    .locals 4
    .param p1, "params"    # [B

    .line 744
    array-length v0, p1

    new-array v0, v0, [I

    .line 745
    .local v0, "audioFormatCodes":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 746
    aget-byte v2, p1, v1

    .line 747
    .local v2, "val":B
    nop

    .line 748
    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    const/16 v3, 0xf

    if-gt v2, v3, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    aput v3, v0, v1

    .line 745
    .end local v2    # "val":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 750
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private removeDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 2
    .param p1, "id"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 254
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 255
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 256
    .local v0, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v0, :cond_0

    .line 257
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 259
    :cond_0
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->updateSafeDeviceInfoList()V

    .line 260
    return-object v0
.end method

.method private removeTvInput(Ljava/lang/String;)V
    .locals 4
    .param p1, "inputId"    # Ljava/lang/String;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 159
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 160
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputsToDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 162
    monitor-exit v0

    return-void

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputsToDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v1

    .line 165
    .local v1, "portId":I
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputsToDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    nop

    .end local v1    # "portId":I
    monitor-exit v0

    .line 168
    return-void

    .line 167
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setSystemAudioMode(Z)V
    .locals 8
    .param p1, "newSystemAudioMode"    # Z

    .line 888
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    iget v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    .line 889
    .local v0, "targetPhysicalAddress":I
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v1

    .line 890
    .local v1, "port":I
    if-eqz p1, :cond_0

    if-ltz v1, :cond_0

    .line 891
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->switchToAudioInput()V

    .line 895
    :cond_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 896
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v2

    .line 897
    .local v2, "currentMuteStatus":Z
    const/4 v4, 0x1

    if-ne v2, p1, :cond_3

    .line 898
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const-string/jumbo v6, "ro.hdmi.property_system_audio_mode_muting_enable"

    invoke-virtual {v5, v6, v4}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz p1, :cond_3

    .line 901
    :cond_1
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v5}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v5

    .line 904
    if-eqz p1, :cond_2

    .line 905
    const/16 v6, 0x64

    goto :goto_0

    .line 906
    :cond_2
    const/16 v6, -0x64

    :goto_0
    const/4 v7, 0x0

    .line 902
    invoke-virtual {v5, v3, v6, v7}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 910
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->updateAudioManagerForSystemAudio(Z)V

    .line 911
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 912
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioActivated()Z

    move-result v5

    if-eq v5, p1, :cond_4

    .line 913
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v5, p1}, Lcom/android/server/hdmi/HdmiControlService;->setSystemAudioActivated(Z)V

    .line 914
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v5, p1}, Lcom/android/server/hdmi/HdmiControlService;->announceSystemAudioModeChange(Z)V

    .line 916
    :cond_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 920
    const-string/jumbo v3, "persist.sys.hdmi.property_arc_support"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 921
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isDirectConnectToTv()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 922
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isArcEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 923
    const-class v3, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;

    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->removeAction(Ljava/lang/Class;)V

    .line 924
    new-instance v3, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;

    invoke-direct {v3, p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_1

    .line 925
    :cond_5
    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isArcEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 926
    const-class v3, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;

    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->removeAction(Ljava/lang/Class;)V

    .line 927
    new-instance v3, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;

    invoke-direct {v3, p0}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 930
    :cond_6
    :goto_1
    return-void

    .line 916
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private switchToHomeTvInput()V
    .locals 3

    .line 1167
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 1168
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x34010000

    .line 1169
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 1173
    .local v0, "activityIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1176
    .end local v0    # "activityIntent":Landroid/content/Intent;
    goto :goto_0

    .line 1174
    :catch_0
    move-exception v0

    .line 1175
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "HdmiCecLocalDeviceAudioSystem"

    const-string v2, "Can\'t find activity to switch to HOME"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1177
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method

.method private switchToTvInput(Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .line 1156
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 1157
    invoke-static {p1}, Landroid/media/tv/TvContract;->buildChannelUriForPassthroughInput(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    .line 1158
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 1156
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1161
    goto :goto_0

    .line 1159
    :catch_0
    move-exception v0

    .line 1160
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find activity to switch to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HdmiCecLocalDeviceAudioSystem"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1162
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method

.method private updateAudioManagerForSystemAudio(Z)V
    .locals 4
    .param p1, "on"    # Z

    .line 942
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setHdmiSystemAudioSupported(Z)I

    move-result v0

    .line 943
    .local v0, "device":I
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "[A]UpdateSystemAudio mode[on=%b] output=[%X]"

    invoke-static {v2, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 944
    return-void
.end method

.method private updateSafeDeviceInfoList()V
    .locals 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 278
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 279
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v0

    .line 280
    .local v0, "copiedDevices":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 281
    :try_start_0
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mSafeAllDeviceInfos:Ljava/util/List;

    .line 282
    monitor-exit v1

    .line 283
    return-void

    .line 282
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method final addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 178
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->addDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 180
    .local v0, "old":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 183
    return-void

    .line 185
    :cond_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 186
    invoke-direct {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 188
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 189
    invoke-direct {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 191
    :cond_2
    :goto_0
    return-void
.end method

.method protected addDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 3
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 235
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 236
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 237
    .local v0, "oldDeviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->removeDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 241
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->updateSafeDeviceInfoList()V

    .line 242
    return-object v0
.end method

.method protected checkSupportAndSetSystemAudioMode(Z)Z
    .locals 3
    .param p1, "newSystemAudioMode"    # Z

    .line 862
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioControlFeatureEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot turn "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    if-eqz p1, :cond_0

    const-string/jumbo v2, "on"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "off"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "system audio mode because the System Audio Control feature is disabled."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    .line 863
    invoke-static {v0, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 868
    return v1

    .line 870
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 872
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioActivated()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 870
    const-string v1, "System Audio Mode change[old:%b new:%b]"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 874
    if-eqz p1, :cond_2

    .line 875
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 877
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setSystemAudioMode(Z)V

    .line 878
    return v2
.end method

.method protected disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .locals 2
    .param p1, "initiatedByCec"    # Z
    .param p2, "callback"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 322
    invoke-super {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    .line 323
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 324
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->unregisterTvInputCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V

    .line 326
    return-void
.end method

.method doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 4
    .param p1, "portId"    # I
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 971
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 972
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->isValidPortId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 973
    const/4 v0, 0x3

    invoke-virtual {p0, p2, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 974
    return-void

    .line 976
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getLocalActivePort()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 977
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 978
    return-void

    .line 980
    :cond_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 981
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setRoutingPort(I)V

    .line 982
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setLocalActivePort(I)V

    .line 983
    const/4 v0, 0x6

    invoke-virtual {p0, p2, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 984
    return-void

    .line 986
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getRoutingPort()I

    move-result v0

    if-eqz v0, :cond_3

    .line 987
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getRoutingPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result v0

    goto :goto_0

    .line 988
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v0

    :goto_0
    nop

    .line 989
    .local v0, "oldPath":I
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result v1

    .line 990
    .local v1, "newPath":I
    if-ne v0, v1, :cond_4

    .line 991
    return-void

    .line 993
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setRoutingPort(I)V

    .line 994
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setLocalActivePort(I)V

    .line 995
    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mAddress:I

    .line 996
    invoke-static {v2, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRoutingChange(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v2

    .line 997
    .local v2, "routingChange":Lcom/android/server/hdmi/HdmiCecMessage;
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 998
    return-void
.end method

.method protected dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1282
    const-string v0, "HdmiCecLocalDeviceAudioSystem:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1283
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isRoutingFeatureEnabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isRoutingControlFeatureEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSystemAudioControlFeatureEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mSystemAudioControlFeatureEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTvSystemAudioModeSupport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvSystemAudioModeSupport:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mArcEstablished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcEstablished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mArcIntentUsed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcIntentUsed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRoutingPort: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getRoutingPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLocalActivePort: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getLocalActivePort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1291
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    const-string/jumbo v1, "mPortIdToTvInputs:"

    invoke-static {p1, v1, v0}, Lcom/android/server/hdmi/HdmiUtils;->dumpMap(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/util/Map;)V

    .line 1292
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputsToDeviceInfo:Ljava/util/HashMap;

    const-string/jumbo v1, "mTvInputsToDeviceInfo:"

    invoke-static {p1, v1, v0}, Lcom/android/server/hdmi/HdmiUtils;->dumpMap(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/util/Map;)V

    .line 1293
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mDeviceInfos:Landroid/util/SparseArray;

    const-string/jumbo v1, "mDeviceInfos:"

    invoke-static {p1, v1, v0}, Lcom/android/server/hdmi/HdmiUtils;->dumpSparseArray(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1294
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1295
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1296
    return-void
.end method

.method protected findKeyReceiverAddress()I
    .locals 1

    .line 370
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    iget v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    return v0

    .line 373
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 2
    .param p1, "logicalAddress"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 272
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 273
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForCecDevice(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-object v0
.end method

.method protected getPreferredAddress()I
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 389
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 390
    const-string/jumbo v0, "persist.sys.hdmi.addr.audiosystem"

    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getSafeCecDevicesLocked()Ljava/util/List;
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v0, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mSafeAllDeviceInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 289
    .local v2, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    .end local v2    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    goto :goto_0

    .line 291
    :cond_0
    return-object v0
.end method

.method protected handleGiveAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 2
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 504
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 505
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioControlFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->reportAudioStatus(I)V

    goto :goto_0

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 510
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected handleGiveSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 516
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 521
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioActivated()Z

    move-result v0

    .line 522
    .local v0, "isSystemAudioModeOnOrTurningOn":Z
    if-nez v0, :cond_0

    .line 523
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;

    .line 524
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->hasAction(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 525
    const/4 v0, 0x1

    .line 527
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mAddress:I

    .line 529
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    .line 528
    invoke-static {v2, v3, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportSystemAudioMode(IIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v2

    .line 527
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 530
    const/4 v1, 0x1

    return v1
.end method

.method protected handleInitiateArc(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 2
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 477
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 479
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "HdmiCecLocalDeviceAudioSystemStub handleInitiateArc"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 480
    const/4 v0, 0x1

    return v0
.end method

.method protected handleReportArcInitiate(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 2
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 486
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 488
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "HdmiCecLocalDeviceAudioSystemStub handleReportArcInitiate"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    const/4 v0, 0x1

    return v0
.end method

.method protected handleReportArcTermination(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 2
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 495
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 497
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "HdmiCecLocalDeviceAudioSystemStub handleReportArcTermination"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 498
    const/4 v0, 0x1

    return v0
.end method

.method protected handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 13
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 405
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 406
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v0

    .line 407
    .local v0, "path":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v8

    .line 408
    .local v8, "address":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    const/4 v2, 0x2

    aget-byte v9, v1, v2

    .line 411
    .local v9, "type":I
    const-class v1, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->hasAction(Ljava/lang/Class;)Z

    move-result v1

    const-string v2, "HdmiCecLocalDeviceAudioSystem"

    const/4 v10, 0x1

    if-eqz v1, :cond_0

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignored while Device Discovery Action is in progress: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    return v10

    .line 419
    :cond_0
    invoke-virtual {p0, v8}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v11

    .line 420
    .local v11, "oldDevice":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    if-eq v1, v0, :cond_1

    goto :goto_0

    .line 431
    :cond_1
    const-string v1, "Device info exists. Not updating on Physical Address."

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return v10

    .line 421
    :cond_2
    :goto_0
    new-instance v12, Landroid/hardware/hdmi/HdmiDeviceInfo;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 422
    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v4

    const v6, 0xffffff

    .line 423
    invoke-static {v8}, Lcom/android/server/hdmi/HdmiUtils;->getDefaultDeviceName(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, v12

    move v2, v8

    move v3, v0

    move v5, v9

    invoke-direct/range {v1 .. v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;)V

    .line 421
    invoke-virtual {p0, v12}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 426
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mAddress:I

    .line 427
    invoke-static {v2, v8}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveOsdNameCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v2

    .line 426
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 428
    return v10
.end method

.method protected handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 2
    .param p1, "command"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 437
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 438
    .local v0, "newStatus":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->updateDevicePowerStatus(II)V

    .line 439
    const/4 v1, 0x1

    return v1
.end method

.method protected handleRequestArcInitiate(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 536
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 537
    const-class v0, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->removeAction(Ljava/lang/Class;)V

    .line 538
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v1, 0x1

    const-string/jumbo v2, "persist.sys.hdmi.property_arc_support"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    goto :goto_0

    .line 540
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isDirectConnectToTv()Z

    move-result v0

    if-nez v0, :cond_1

    .line 541
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "AVR device is not directly connected with TV"

    invoke-static {v2, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 542
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    goto :goto_0

    .line 544
    :cond_1
    new-instance v0, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 546
    :goto_0
    return v1
.end method

.method protected handleRequestArcTermination(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 552
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 553
    const/4 v0, 0x1

    const-string/jumbo v1, "persist.sys.hdmi.property_arc_support"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 554
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    goto :goto_0

    .line 555
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isArcEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 556
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "ARC is not established between TV and AVR device"

    invoke-static {v2, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 557
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    goto :goto_0

    .line 559
    :cond_1
    const-class v1, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->removeAction(Ljava/lang/Class;)V

    .line 560
    new-instance v1, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 562
    :goto_0
    return v0
.end method

.method protected handleRequestShortAudioDescriptor(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 8
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 567
    const-string v0, "HdmiCecLocalDeviceAudioSystem"

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 568
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "HdmiCecLocalDeviceAudioSystemStub handleRequestShortAudioDescriptor"

    invoke-static {v2, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 569
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioControlFeatureEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 570
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 571
    return v2

    .line 573
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 574
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 575
    return v2

    .line 578
    :cond_1
    const/4 v1, 0x0

    .line 579
    .local v1, "config":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;>;"
    new-instance v3, Ljava/io/File;

    const-string v4, "/vendor/etc/sadConfig.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 580
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 582
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 583
    .local v4, "in":Ljava/io/InputStream;
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->parse(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v5

    move-object v1, v5

    .line 584
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "in":Ljava/io/InputStream;
    goto :goto_0

    .line 587
    :catch_0
    move-exception v4

    .line 588
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to parse file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 585
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v4

    .line 586
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 592
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->parseAudioFormatCodes([B)[I

    move-result-object v0

    .line 594
    .local v0, "audioFormatCodes":[I
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 595
    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getSupportedShortAudioDescriptorsFromConfig(Ljava/util/List;[I)[B

    move-result-object v4

    .local v4, "sadBytes":[B
    goto :goto_1

    .line 597
    .end local v4    # "sadBytes":[B
    :cond_3
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getSystemAudioDeviceInfo()Landroid/media/AudioDeviceInfo;

    move-result-object v4

    .line 598
    .local v4, "deviceInfo":Landroid/media/AudioDeviceInfo;
    if-nez v4, :cond_4

    .line 599
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v6, 0x5

    invoke-virtual {v5, p1, v6}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 600
    return v2

    .line 603
    :cond_4
    invoke-direct {p0, v4, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getSupportedShortAudioDescriptors(Landroid/media/AudioDeviceInfo;[I)[B

    move-result-object v4

    .line 606
    .local v4, "sadBytes":[B
    :goto_1
    array-length v5, v4

    if-nez v5, :cond_5

    .line 607
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v6, 0x3

    invoke-virtual {v5, p1, v6}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    goto :goto_2

    .line 609
    :cond_5
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v6, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mAddress:I

    .line 611
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v7

    .line 610
    invoke-static {v6, v7, v4}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportShortAudioDescriptor(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v6

    .line 609
    invoke-virtual {v5, v6}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 613
    :goto_2
    return v2
.end method

.method protected handleRoutingChangeAndInformation(ILcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 2
    .param p1, "physicalAddress"    # I
    .param p2, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 1181
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v0

    .line 1183
    .local v0, "port":I
    if-lez v0, :cond_0

    .line 1184
    return-void

    .line 1188
    :cond_0
    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioActivated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1189
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->handleRoutingChangeAndInformationForSystemAudio()V

    .line 1190
    return-void

    .line 1194
    :cond_1
    if-nez v0, :cond_2

    .line 1195
    invoke-direct {p0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->handleRoutingChangeAndInformationForSwitch(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1197
    :cond_2
    return-void
.end method

.method protected handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 14
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 445
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    .line 447
    .local v0, "source":I
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    .line 449
    .local v1, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    const/4 v2, 0x1

    const-string v3, "HdmiCecLocalDeviceAudioSystem"

    if-nez v1, :cond_0

    .line 450
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No source device info for <Set Osd Name>."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return v2

    .line 454
    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v5

    const-string v6, "US-ASCII"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    .local v4, "osdName":Ljava/lang/String;
    nop

    .line 460
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 461
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignore incoming <Set Osd Name> having same osd name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    return v2

    .line 465
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating device OSD name from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 465
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    new-instance v3, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v8

    .line 469
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v9

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v10

    .line 470
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v11

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getVendorId()I

    move-result v12

    move-object v7, v3

    move-object v13, v4

    invoke-direct/range {v7 .. v13}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;)V

    .line 468
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->updateCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 471
    return v2

    .line 455
    .end local v4    # "osdName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 456
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid <Set Osd Name> request:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    return v2
.end method

.method protected handleSetSystemAudioMode(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 2
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 788
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 789
    nop

    .line 790
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    .line 789
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 793
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method handleSystemAudioModeOnFromNonTvDevice(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 1052
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioControlFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1053
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Cannot turn onsystem audio mode because the System Audio Control feature is disabled."

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1056
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 1057
    return-void

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 1064
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v1

    iget v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1066
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setSystemAudioMode(Z)V

    .line 1067
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mAddress:I

    const/16 v3, 0xf

    .line 1068
    invoke-static {v2, v3, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetSystemAudioMode(IIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 1067
    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1070
    return-void

    .line 1074
    :cond_1
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$2;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;Lcom/android/server/hdmi/HdmiCecMessage;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->queryTvSystemAudioModeSupport(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;)V

    .line 1086
    return-void
.end method

.method protected handleSystemAudioModeRequest(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 5
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 756
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 757
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 761
    .local v0, "systemAudioStatusOn":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    if-eqz v2, :cond_1

    .line 762
    if-eqz v0, :cond_2

    .line 763
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->handleSystemAudioModeOnFromNonTvDevice(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 764
    return v1

    .line 770
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setTvSystemAudioModeSupport(Z)V

    .line 774
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 775
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v3, 0x4

    invoke-virtual {v2, p1, v3}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 776
    return v1

    .line 779
    :cond_3
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mAddress:I

    const/16 v4, 0xf

    .line 780
    invoke-static {v3, v4, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetSystemAudioMode(IIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v3

    .line 779
    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 782
    return v1
.end method

.method protected handleSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 2
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 799
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 800
    nop

    .line 801
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    .line 800
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 804
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected isArcEnabled()Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1094
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1095
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcEstablished:Z

    monitor-exit v0

    return v1

    .line 1096
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected isDirectConnectToTv()Z
    .locals 2

    .line 937
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v0

    .line 938
    .local v0, "myPhysicalAddress":I
    const v1, 0xf000

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected isSystemAudioActivated()Z
    .locals 1

    .line 1007
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    move-result v0

    return v0
.end method

.method isSystemAudioControlFeatureEnabled()Z
    .locals 2

    .line 1001
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1002
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mSystemAudioControlFeatureEnabled:Z

    monitor-exit v0

    return v1

    .line 1003
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onAddressAllocated(II)V
    .locals 4
    .param p1, "logicalAddress"    # I
    .param p2, "reason"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 345
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 346
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    if-nez p2, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v1

    .line 348
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v2

    const/16 v3, 0xf

    .line 347
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->setAndBroadcastActiveSource(III)V

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mAddress:I

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 352
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v2

    iget v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mDeviceType:I

    .line 351
    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    .line 350
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 353
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mAddress:I

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 354
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    .line 353
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 355
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->registerTvInputCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V

    .line 356
    const/4 v0, 0x0

    .line 357
    const-string/jumbo v1, "persist.sys.hdmi.system_audio_control_on_power_on"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 360
    .local v0, "systemAudioControlOnPowerOnProp":I
    const/4 v1, 0x1

    .line 361
    const-string/jumbo v2, "persist.sys.hdmi.last_system_audio_control"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 362
    .local v1, "lastSystemAudioControlStatus":Z
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->systemAudioControlOnPowerOn(IZ)V

    .line 363
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->clearDeviceInfoList()V

    .line 364
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->launchDeviceDiscovery()V

    .line 365
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->startQueuedActions()V

    .line 366
    return-void
.end method

.method onHotplug(IZ)V
    .locals 3
    .param p1, "portId"    # I
    .param p2, "connected"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 301
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 302
    if-eqz p2, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiPortInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 306
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecMessageCache;->flushAll()V

    goto :goto_0

    .line 307
    :cond_1
    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 308
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 309
    .local v0, "tvInputId":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputsToDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 310
    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v1, :cond_2

    .line 311
    return-void

    .line 315
    :cond_2
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->removeCecDevice(I)V

    .line 317
    .end local v0    # "tvInputId":Ljava/lang/String;
    .end local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_3
    :goto_0
    return-void
.end method

.method protected onStandby(ZI)V
    .locals 4
    .param p1, "initiatedByCec"    # Z
    .param p2, "standbyAction"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 331
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvSystemAudioModeSupport:Ljava/lang/Boolean;

    .line 334
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 335
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const-string/jumbo v2, "persist.sys.hdmi.last_system_audio_control"

    .line 337
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioActivated()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "true"

    goto :goto_0

    :cond_0
    const-string v3, "false"

    .line 335
    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->writeStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->terminateSystemAudioMode()V

    .line 340
    return-void

    .line 338
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method onSystemAduioControlFeatureSupportChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 947
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setSystemAudioControlFeatureEnabled(Z)V

    .line 948
    if-eqz p1, :cond_0

    .line 949
    new-instance v0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 951
    :cond_0
    return-void
.end method

.method queryTvSystemAudioModeSupport(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;

    .line 1041
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvSystemAudioModeSupport:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1042
    new-instance v0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_0

    .line 1044
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;->onResult(Z)V

    .line 1046
    :goto_0
    return-void
.end method

.method final removeCecDevice(I)V
    .locals 2
    .param p1, "address"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 200
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 201
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForCecDevice(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->removeDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 203
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageCache;->flushMessagesFrom(I)V

    .line 204
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 205
    return-void
.end method

.method reportAudioStatus(I)V
    .locals 9
    .param p1, "source"    # I

    .line 837
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 839
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 840
    .local v0, "volume":I
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v2

    .line 841
    .local v2, "mute":Z
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    .line 842
    .local v3, "maxVolume":I
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v4

    .line 843
    .local v4, "minVolume":I
    invoke-static {v0, v3}, Lcom/android/server/hdmi/VolumeControlAction;->scaleToCecVolume(II)I

    move-result v5

    .line 844
    .local v5, "scaledVolume":I
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 845
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    .line 844
    const-string v1, "Reporting volume %d (%d-%d) as CEC volume %d"

    invoke-static {v1, v6}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 847
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v6, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mAddress:I

    .line 848
    invoke-static {v6, p1, v5, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportAudioStatus(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v6

    .line 847
    invoke-virtual {v1, v6}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 850
    return-void
.end method

.method protected routeToInputFromPortId(I)V
    .locals 2
    .param p1, "portId"    # I

    .line 1115
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isRoutingControlFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1116
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Routing Control Feature is not enabled."

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1117
    return-void

    .line 1119
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcIntentUsed:Z

    if-eqz v0, :cond_1

    .line 1120
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->routeToTvInputFromPortId(I)V

    .line 1124
    :cond_1
    return-void
.end method

.method protected routeToTvInputFromPortId(I)V
    .locals 3
    .param p1, "portId"    # I

    .line 1127
    const/4 v0, 0x0

    if-ltz p1, :cond_4

    const/16 v1, 0x15

    if-lt p1, v1, :cond_0

    goto :goto_1

    .line 1132
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 1133
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1134
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->switchToHomeTvInput()V

    goto :goto_0

    .line 1135
    :cond_1
    const/16 v1, 0x11

    if-ne p1, v1, :cond_2

    .line 1136
    const-string/jumbo v0, "ro.hdmi.property_sytem_audio_device_arc_port"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->switchToTvInput(Ljava/lang/String;)V

    .line 1137
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setLocalActivePort(I)V

    .line 1138
    return-void

    .line 1140
    :cond_2
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1141
    .local v1, "uri":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 1142
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->switchToTvInput(Ljava/lang/String;)V

    .line 1149
    .end local v1    # "uri":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setLocalActivePort(I)V

    .line 1150
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setRoutingPort(I)V

    .line 1151
    return-void

    .line 1144
    .restart local v1    # "uri":Ljava/lang/String;
    :cond_3
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Port number does not match any Tv Input."

    invoke-static {v2, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1145
    return-void

    .line 1128
    .end local v1    # "uri":Ljava/lang/String;
    :cond_4
    :goto_1
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Invalid port number for Tv Input switching."

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1129
    return-void
.end method

.method setArcStatus(Z)V
    .locals 3
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 810
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 812
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcEstablished:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Set Arc Status[old:%b new:%b]"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 814
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->enableAudioReturnChannel(Z)V

    .line 816
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->notifyArcStatusToAudioService(Z)V

    .line 818
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcEstablished:Z

    .line 819
    return-void
.end method

.method protected setPreferredAddress(I)V
    .locals 3
    .param p1, "addr"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 397
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 398
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 399
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 398
    const-string/jumbo v2, "persist.sys.hdmi.addr.audiosystem"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiControlService;->writeStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method setRoutingControlFeatureEnables(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 963
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 964
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 965
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mRoutingControlFeatureEnabled:Z

    .line 966
    monitor-exit v0

    .line 967
    return-void

    .line 966
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setSystemAudioControlFeatureEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 955
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 956
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 957
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mSystemAudioControlFeatureEnabled:Z

    .line 958
    monitor-exit v0

    .line 959
    return-void

    .line 958
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setTvSystemAudioModeSupport(Z)V
    .locals 1
    .param p1, "supported"    # Z

    .line 1089
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvSystemAudioModeSupport:Ljava/lang/Boolean;

    .line 1090
    return-void
.end method

.method protected switchInputOnReceivingNewActivePath(I)V
    .locals 2
    .param p1, "physicalAddress"    # I

    .line 1101
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v0

    .line 1102
    .local v0, "port":I
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    if-gez v0, :cond_0

    .line 1106
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->routeToInputFromPortId(I)V

    goto :goto_0

    .line 1107
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mIsSwitchDevice:Z

    if-eqz v1, :cond_1

    if-ltz v0, :cond_1

    .line 1110
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->routeToInputFromPortId(I)V

    .line 1112
    :cond_1
    :goto_0
    return-void
.end method

.method protected switchToAudioInput()V
    .locals 0

    .line 934
    return-void
.end method

.method protected systemAudioControlOnPowerOn(IZ)V
    .locals 1
    .param p1, "systemAudioOnPowerOnProp"    # I
    .param p2, "lastSystemAudioControlStatus"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 379
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 381
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioControlFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    :cond_0
    new-instance v0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 384
    :cond_1
    return-void
.end method

.method protected terminateSystemAudioMode()V
    .locals 4

    .line 1012
    const-class v0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->removeAction(Ljava/lang/Class;)V

    .line 1013
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1014
    return-void

    .line 1017
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1019
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mAddress:I

    const/16 v3, 0xf

    .line 1020
    invoke-static {v2, v3, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetSystemAudioMode(IIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 1019
    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1023
    :cond_1
    return-void
.end method

.method final updateCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 214
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->addDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 217
    .local v0, "old":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v0, :cond_0

    .line 218
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 220
    const/4 v1, 0x3

    invoke-direct {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 222
    :cond_1
    :goto_0
    return-void
.end method

.method protected updateDevicePowerStatus(II)V
    .locals 3
    .param p1, "logicalAddress"    # I
    .param p2, "newPowerStatus"    # I

    .line 1230
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1231
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v0, :cond_0

    .line 1232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not update power status of non-existing device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HdmiCecLocalDeviceAudioSystem"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    return-void

    .line 1236
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 1237
    return-void

    .line 1240
    :cond_1
    invoke-static {v0, p2}, Lcom/android/server/hdmi/HdmiUtils;->cloneHdmiDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    .line 1242
    .local v1, "newInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->addDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1244
    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 1245
    return-void
.end method
