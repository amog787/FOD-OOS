.class public final Lcom/android/server/audio/AudioDeviceInventory;
.super Ljava/lang/Object;
.source "AudioDeviceInventory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;,
        Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    }
.end annotation


# static fields
.field private static final CONNECT_INTENT_KEY_ADDRESS:Ljava/lang/String; = "address"

.field private static final CONNECT_INTENT_KEY_DEVICE_CLASS:Ljava/lang/String; = "class"

.field private static final CONNECT_INTENT_KEY_HAS_CAPTURE:Ljava/lang/String; = "hasCapture"

.field private static final CONNECT_INTENT_KEY_HAS_MIDI:Ljava/lang/String; = "hasMIDI"

.field private static final CONNECT_INTENT_KEY_HAS_PLAYBACK:Ljava/lang/String; = "hasPlayback"

.field private static final CONNECT_INTENT_KEY_PORT_NAME:Ljava/lang/String; = "portName"

.field private static final CONNECT_INTENT_KEY_STATE:Ljava/lang/String; = "state"

.field private static final DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG:I = 0x402600c

.field private static final TAG:Ljava/lang/String; = "AS.AudioDeviceInventory"

.field private static final autoPlayBlackListedAddr:[Ljava/lang/String;

.field static prevDisconnectedDeviceAddress:Ljava/lang/String;


# instance fields
.field private mBecomingNoisyIntentDevices:I

.field private final mConnectedDevices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

.field private final mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

.field private mDockAddress:Ljava/lang/String;

.field private mPostA2dpDeviceConfigChange:Z

.field final mRoutesObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/media/IAudioRoutesObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    const-string v0, "48:F0:7B"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/AudioDeviceInventory;->autoPlayBlackListedAddr:[Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/audio/AudioDeviceInventory;->prevDisconnectedDeviceAddress:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;)V
    .locals 1
    .param p1, "broker"    # Lcom/android/server/audio/AudioDeviceBroker;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 75
    new-instance v0, Landroid/media/AudioRoutesInfo;

    invoke-direct {v0}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 76
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPostA2dpDeviceConfigChange:Z

    .line 946
    const v0, 0xc027f8c

    iput v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mBecomingNoisyIntentDevices:I

    .line 68
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 69
    return-void
.end method

.method private checkSendBecomingNoisyIntentInt(III)I
    .locals 6
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "musicDevice"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mConnectedDevices"
        }
    .end annotation

    .line 960
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 961
    return v0

    .line 963
    :cond_0
    iget v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mBecomingNoisyIntentDevices:I

    and-int/2addr v1, p1

    if-nez v1, :cond_1

    .line 964
    return v0

    .line 966
    :cond_1
    const/4 v1, 0x0

    .line 967
    .local v1, "delay":I
    const/4 v2, 0x0

    .line 968
    .local v2, "devices":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 969
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    iget v4, v4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 970
    .local v4, "dev":I
    const/high16 v5, -0x80000000

    and-int/2addr v5, v4

    if-nez v5, :cond_2

    iget v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mBecomingNoisyIntentDevices:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_2

    .line 972
    or-int/2addr v2, v4

    .line 968
    .end local v4    # "dev":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 975
    .end local v3    # "i":I
    :cond_3
    const/4 v3, 0x3

    if-nez p3, :cond_4

    .line 976
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v4, v3}, Lcom/android/server/audio/AudioDeviceBroker;->getDeviceForStream(I)I

    move-result p3

    .line 982
    :cond_4
    if-eq p1, p3, :cond_5

    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v4}, Lcom/android/server/audio/AudioDeviceBroker;->isInCommunication()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_5
    if-eq p1, v2, :cond_6

    const v4, 0x4006000

    and-int/2addr v4, p1

    if-eqz v4, :cond_8

    :cond_6
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 986
    invoke-virtual {v4}, Lcom/android/server/audio/AudioDeviceBroker;->hasMediaDynamicPolicy()Z

    move-result v4

    if-nez v4, :cond_8

    const v4, 0x8000

    and-int/2addr v4, p3

    if-nez v4, :cond_8

    .line 989
    invoke-static {v3, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 990
    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceBroker;->hasAudioFocusUsers()Z

    move-result v3

    if-nez v3, :cond_7

    .line 993
    sget-object v3, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v4, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v5, "dropping ACTION_AUDIO_BECOMING_NOISY"

    invoke-direct {v4, v5}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 994
    const-string v5, "AS.AudioDeviceInventory"

    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v4

    .line 993
    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 995
    return v0

    .line 997
    :cond_7
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->postBroadcastBecomingNoisy()V

    .line 998
    const/16 v0, 0x2bc

    const-string v3, "audio.sys.noisy.broadcast.delay"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1001
    :cond_8
    return v1
.end method

.method private configureHdmiPlugIntent(Landroid/content/Intent;I)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "state"    # I

    .line 1135
    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1136
    const-string v2, "android.media.extra.AUDIO_PLUG_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1137
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1138
    return-void

    .line 1140
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1141
    .local v3, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    new-array v4, v2, [I

    .line 1142
    .local v4, "portGeneration":[I
    invoke-static {v3, v4}, Landroid/media/AudioSystem;->listAudioPorts(Ljava/util/ArrayList;[I)I

    move-result v5

    .line 1143
    .local v5, "status":I
    if-eqz v5, :cond_1

    .line 1144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "listAudioPorts error "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " in configureHdmiPlugIntent"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "AS.AudioDeviceInventory"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    return-void

    .line 1147
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioPort;

    .line 1148
    .local v7, "port":Landroid/media/AudioPort;
    instance-of v8, v7, Landroid/media/AudioDevicePort;

    if-nez v8, :cond_2

    .line 1149
    goto :goto_0

    .line 1151
    :cond_2
    move-object v8, v7

    check-cast v8, Landroid/media/AudioDevicePort;

    .line 1152
    .local v8, "devicePort":Landroid/media/AudioDevicePort;
    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->type()I

    move-result v9

    const/16 v10, 0x400

    if-eq v9, v10, :cond_3

    .line 1153
    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->type()I

    move-result v9

    const/high16 v10, 0x40000

    if-eq v9, v10, :cond_3

    .line 1154
    goto :goto_0

    .line 1157
    :cond_3
    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v9

    invoke-static {v9}, Landroid/media/AudioFormat;->filterPublicFormats([I)[I

    move-result-object v9

    .line 1158
    .local v9, "formats":[I
    array-length v10, v9

    const/4 v11, 0x0

    if-lez v10, :cond_6

    .line 1159
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1160
    .local v10, "encodingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v12, v9

    move v13, v11

    :goto_1
    if-ge v13, v12, :cond_5

    aget v14, v9, v13

    .line 1162
    .local v14, "format":I
    if-eqz v14, :cond_4

    .line 1163
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1160
    .end local v14    # "format":I
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1166
    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v12

    sget-object v13, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$u_r8SlQF9hKqpPB7hUtp-bqyzdc;->INSTANCE:Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$u_r8SlQF9hKqpPB7hUtp-bqyzdc;

    invoke-interface {v12, v13}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v12

    .line 1167
    .local v12, "encodingArray":[I
    const-string v13, "android.media.extra.ENCODINGS"

    invoke-virtual {v0, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1170
    .end local v10    # "encodingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12    # "encodingArray":[I
    :cond_6
    const/4 v10, 0x0

    .line 1171
    .local v10, "maxChannels":I
    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v12

    array-length v13, v12

    :goto_2
    if-ge v11, v13, :cond_8

    aget v14, v12, v11

    .line 1172
    .local v14, "mask":I
    invoke-static {v14}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v15

    .line 1173
    .local v15, "channelCount":I
    if-le v15, v10, :cond_7

    .line 1174
    move v10, v15

    .line 1171
    .end local v14    # "mask":I
    .end local v15    # "channelCount":I
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1177
    :cond_8
    const-string v11, "android.media.extra.MAX_CHANNEL_COUNT"

    invoke-virtual {v0, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1178
    .end local v7    # "port":Landroid/media/AudioPort;
    .end local v8    # "devicePort":Landroid/media/AudioDevicePort;
    .end local v9    # "formats":[I
    .end local v10    # "maxChannels":I
    goto :goto_0

    .line 1179
    :cond_9
    return-void
.end method

.method private isCurrentDeviceConnected()Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mConnectedDevices"
        }
    .end annotation

    .line 937
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$MfLl81BWvF9OIWh52LJfesOjVdw;

    invoke-direct {v1, p0}, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$MfLl81BWvF9OIWh52LJfesOjVdw;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$configureHdmiPlugIntent$7(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "i"    # Ljava/lang/Integer;

    .line 1166
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic lambda$disconnectA2dp$0(Landroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .locals 2
    .param p0, "toRemove"    # Landroid/util/ArraySet;
    .param p1, "deviceInfo"    # Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 579
    iget v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 580
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 582
    :cond_0
    return-void
.end method

.method static synthetic lambda$disconnectA2dpSink$2(Landroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .locals 2
    .param p0, "toRemove"    # Landroid/util/ArraySet;
    .param p1, "deviceInfo"    # Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 599
    iget v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/high16 v1, -0x7ffe0000

    if-ne v0, v1, :cond_0

    .line 600
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 602
    :cond_0
    return-void
.end method

.method static synthetic lambda$disconnectHearingAid$4(Landroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .locals 2
    .param p0, "toRemove"    # Landroid/util/ArraySet;
    .param p1, "deviceInfo"    # Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 612
    iget v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/high16 v1, 0x8000000

    if-ne v0, v1, :cond_0

    .line 613
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 615
    :cond_0
    return-void
.end method

.method private makeA2dpDeviceAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "eventSource"    # Ljava/lang/String;
    .param p4, "a2dpCodec"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mConnectedDevices"
        }
    .end annotation

    .line 791
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(ZLjava/lang/String;)V

    .line 792
    const/16 v0, 0x80

    invoke-static {v0, v1, p1, p2, p4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    .line 795
    const-string v2, "A2dpSuspended=false"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 796
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 797
    invoke-static {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-direct {v4, v0, p2, p1, p4}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 796
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioDeviceBroker;->postAccessoryPlugMediaUnmute(I)V

    .line 801
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;)V

    .line 804
    new-array v0, v1, [I

    const/4 v1, 0x0

    const/16 v2, 0xaa

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 805
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/server/audio/AudioDeviceInventory;->autoPlayBlackListedAddr:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 806
    aget-object v1, v1, v0

    .line 807
    .local v1, "addr":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 808
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Is auto play blacklist device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.AudioDeviceInventory"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    return-void

    .line 805
    .end local v1    # "addr":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 816
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "delayMs"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mConnectedDevices"
        }
    .end annotation

    .line 857
    const-string v0, "A2dpSuspended=true"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 859
    nop

    .line 860
    const/16 v0, 0x80

    invoke-static {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 861
    .local v0, "deviceKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 862
    .local v1, "deviceInfo":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    if-eqz v1, :cond_0

    iget v2, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    goto :goto_0

    .line 863
    :cond_0
    const/4 v2, 0x0

    :goto_0
    nop

    .line 865
    .local v2, "a2dpCodec":I
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3, p1, v2, p2}, Lcom/android/server/audio/AudioDeviceBroker;->setA2dpDockTimeout(Ljava/lang/String;II)V

    .line 868
    return-void
.end method

.method private makeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "a2dpCodec"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mConnectedDevices"
        }
    .end annotation

    .line 820
    if-nez p1, :cond_0

    .line 821
    return-void

    .line 825
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0xaa

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 828
    const/4 v0, 0x0

    .line 829
    .local v0, "isTypeCConnected":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 830
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    iget v3, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 831
    .local v3, "dev":I
    const/high16 v4, 0x4000000

    and-int/2addr v4, v3

    if-eqz v4, :cond_1

    .line 832
    const/4 v0, 0x1

    .line 833
    goto :goto_1

    .line 829
    .end local v3    # "dev":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 836
    .end local v1    # "i":I
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 837
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->postCancelAutoPlayback()V

    .line 841
    .end local v0    # "isTypeCConnected":Z
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioDeviceBroker;->setAvrcpAbsoluteVolumeSupported(Z)V

    .line 842
    const/16 v0, 0x80

    const-string v1, ""

    invoke-static {v0, v2, p1, v1, p2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    .line 844
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 845
    invoke-static {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 844
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;)V

    .line 848
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDockAddress:Ljava/lang/String;

    if-ne v1, p1, :cond_4

    .line 849
    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDockAddress:Ljava/lang/String;

    .line 851
    :cond_4
    return-void
.end method

.method private makeA2dpSrcAvailable(Ljava/lang/String;)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mConnectedDevices"
        }
    .end annotation

    .line 873
    const/4 v0, 0x0

    const-string v1, ""

    const/high16 v2, -0x7ffe0000

    const/4 v3, 0x1

    invoke-static {v2, v3, p1, v1, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    .line 876
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 877
    invoke-static {v2, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-direct {v5, v2, v1, p1, v0}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 876
    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    return-void
.end method

.method private makeA2dpSrcUnavailable(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mConnectedDevices"
        }
    .end annotation

    .line 884
    const/4 v0, 0x0

    const/high16 v1, -0x7ffe0000

    const-string v2, ""

    invoke-static {v1, v0, p1, v2, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    .line 887
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 888
    invoke-static {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 887
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    return-void
.end method

.method private makeHearingAidDeviceAvailable(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "streamType"    # I
    .param p4, "eventSource"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mConnectedDevices"
        }
    .end annotation

    .line 894
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/high16 v1, 0x8000000

    invoke-virtual {v0, p3, v1}, Lcom/android/server/audio/AudioDeviceBroker;->getVssVolumeForDevice(II)I

    move-result v0

    .line 896
    .local v0, "hearingAidVolIndex":I
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, v0, p3}, Lcom/android/server/audio/AudioDeviceBroker;->postSetHearingAidVolumeIndex(II)V

    .line 898
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v3, p1, p2, v2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    .line 901
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 902
    invoke-static {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-direct {v5, v1, p2, p1, v2}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 901
    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postAccessoryPlugMediaUnmute(I)V

    .line 906
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v3, "makeHearingAidDeviceAvailable"

    invoke-virtual {v2, p3, v1, v3}, Lcom/android/server/audio/AudioDeviceBroker;->postApplyVolumeOnDevice(IILjava/lang/String;)V

    .line 908
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;)V

    .line 909
    return-void
.end method

.method private makeHearingAidDeviceUnavailable(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mConnectedDevices"
        }
    .end annotation

    .line 913
    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    const-string v2, ""

    invoke-static {v1, v0, p1, v2, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    .line 916
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 917
    invoke-static {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 916
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;)V

    .line 920
    return-void
.end method

.method private sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;

    .line 1016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendDeviceConnectionIntent(dev:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1016
    const-string v1, "AS.AudioDeviceInventory"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1022
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, ""

    const/high16 v2, 0x4000000

    const/16 v3, 0x400

    const/high16 v4, -0x7e000000

    const-string/jumbo v5, "microphone"

    const-string v6, "android.intent.action.HEADSET_PLUG"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq p1, v4, :cond_5

    const/4 v9, 0x4

    if-eq p1, v9, :cond_4

    const/16 v9, 0x8

    if-eq p1, v9, :cond_3

    if-eq p1, v3, :cond_2

    const/high16 v9, 0x20000

    if-eq p1, v9, :cond_3

    const/high16 v9, 0x40000

    if-eq p1, v9, :cond_2

    if-eq p1, v2, :cond_0

    goto :goto_1

    .line 1033
    :cond_0
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1034
    nop

    .line 1036
    nop

    .line 1035
    invoke-static {v4, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v1

    if-ne v1, v8, :cond_1

    .line 1036
    move v1, v8

    goto :goto_0

    :cond_1
    move v1, v7

    .line 1034
    :goto_0
    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1037
    goto :goto_1

    .line 1050
    :cond_2
    invoke-direct {p0, v0, p2}, Lcom/android/server/audio/AudioDeviceInventory;->configureHdmiPlugIntent(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1029
    :cond_3
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1030
    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1031
    goto :goto_1

    .line 1024
    :cond_4
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1025
    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1026
    goto :goto_1

    .line 1039
    :cond_5
    invoke-static {v2, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v1

    if-ne v1, v8, :cond_9

    .line 1041
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1042
    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1054
    :goto_1
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    .line 1055
    return-void

    .line 1058
    :cond_6
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1059
    const-string v1, "address"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1060
    const-string/jumbo v1, "portName"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1063
    const-string v1, "American Headset"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "standard"

    if-eqz v1, :cond_7

    .line 1064
    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1065
    const-string p4, "Headset"

    goto :goto_2

    .line 1067
    :cond_7
    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1071
    :goto_2
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1073
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1081
    .local v1, "ident":J
    const/4 v5, -0x1

    :try_start_0
    invoke-static {v0, v5}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1084
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1085
    nop

    .line 1088
    new-array v5, v8, [I

    const/16 v6, 0xaa

    aput v6, v5, v7

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1089
    if-eq p1, v4, :cond_8

    if-eq p1, v3, :cond_8

    if-ne p2, v8, :cond_8

    .line 1090
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3, v7, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postStartAutoPlayback(II)V

    .line 1094
    :cond_8
    return-void

    .line 1084
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1045
    .end local v1    # "ident":J
    :cond_9
    return-void
.end method

.method private setCurrentAudioRouteNameIfPossible(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mConnectedDevices"
        }
    .end annotation

    .line 924
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v0

    .line 925
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 926
    monitor-exit v0

    return-void

    .line 928
    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceInventory;->isCurrentDeviceConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 929
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput-object p1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 930
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->postReportNewRoutes()V

    .line 932
    :cond_2
    monitor-exit v0

    .line 933
    return-void

    .line 932
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateAudioRoutes(II)V
    .locals 4
    .param p1, "device"    # I
    .param p2, "state"    # I

    .line 1097
    const/4 v0, 0x0

    .line 1099
    .local v0, "connType":I
    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    const/16 v1, 0x8

    if-eq p1, v1, :cond_2

    const/16 v1, 0x400

    if-eq p1, v1, :cond_1

    const/16 v1, 0x4000

    if-eq p1, v1, :cond_0

    const/high16 v1, 0x20000

    if-eq p1, v1, :cond_2

    const/high16 v1, 0x40000

    if-eq p1, v1, :cond_1

    const/high16 v1, 0x4000000

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1113
    :cond_0
    const/16 v0, 0x10

    goto :goto_0

    .line 1109
    :cond_1
    const/16 v0, 0x8

    .line 1110
    goto :goto_0

    .line 1105
    :cond_2
    const/4 v0, 0x2

    .line 1106
    goto :goto_0

    .line 1101
    :cond_3
    const/4 v0, 0x1

    .line 1102
    nop

    .line 1117
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v1

    .line 1118
    if-nez v0, :cond_4

    .line 1119
    :try_start_0
    monitor-exit v1

    return-void

    .line 1121
    :cond_4
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v2, v2, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 1122
    .local v2, "newConn":I
    if-eqz p2, :cond_5

    .line 1123
    or-int/2addr v2, v0

    goto :goto_1

    .line 1125
    :cond_5
    not-int v3, v0

    and-int/2addr v2, v3

    .line 1127
    :goto_1
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v3, v3, Landroid/media/AudioRoutesInfo;->mainType:I

    if-eq v2, v3, :cond_6

    .line 1128
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput v2, v3, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 1129
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceBroker;->postReportNewRoutes()V

    .line 1131
    .end local v2    # "newConn":I
    :cond_6
    monitor-exit v1

    .line 1132
    return-void

    .line 1131
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method checkSendBecomingNoisyIntent(III)I
    .locals 2
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "musicDevice"    # I

    .line 632
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 633
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v1

    monitor-exit v0

    return v1

    .line 634
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method disconnectA2dp()V
    .locals 5

    .line 575
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 576
    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 578
    .local v1, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$y5XThSW6MLia8Z0qpQToEJpUJk0;

    invoke-direct {v3, v1}, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$y5XThSW6MLia8Z0qpQToEJpUJk0;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 583
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 584
    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v3}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v2

    .line 587
    .local v2, "delay":I
    invoke-virtual {v1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$qhWWEgLKYMNfyt5ffemHAtlRkpw;

    invoke-direct {v4, p0, v2}, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$qhWWEgLKYMNfyt5ffemHAtlRkpw;-><init>(Lcom/android/server/audio/AudioDeviceInventory;I)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 591
    .end local v1    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v2    # "delay":I
    :cond_0
    monitor-exit v0

    .line 592
    return-void

    .line 591
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method disconnectA2dpSink()V
    .locals 4

    .line 595
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 596
    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 598
    .local v1, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$0fz2EAO4sH309I_0WQlshYm7ShE;

    invoke-direct {v3, v1}, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$0fz2EAO4sH309I_0WQlshYm7ShE;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 603
    invoke-virtual {v1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$xRa5RyFQAe2dGU7YDh18NalwMMg;

    invoke-direct {v3, p0}, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$xRa5RyFQAe2dGU7YDh18NalwMMg;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 604
    .end local v1    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    monitor-exit v0

    .line 605
    return-void

    .line 604
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method disconnectHearingAid()V
    .locals 5

    .line 608
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 609
    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 611
    .local v1, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$nQz4ldQjburNlVucAV7ieYoic28;

    invoke-direct {v3, v1}, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$nQz4ldQjburNlVucAV7ieYoic28;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 616
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 617
    const/high16 v2, 0x8000000

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v3}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v2

    .line 619
    .local v2, "delay":I
    invoke-virtual {v1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$9yZUrl4jHdQ7A-5G79yQVDbYVSI;

    invoke-direct {v4, p0}, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$9yZUrl4jHdQ7A-5G79yQVDbYVSI;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 624
    .end local v1    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v2    # "delay":I
    :cond_0
    monitor-exit v0

    .line 625
    return-void

    .line 624
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCurAudioRoutes()Landroid/media/AudioRoutesInfo;
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    return-object v0
.end method

.method handleBluetoothA2dpActiveDeviceChangeExt(Landroid/bluetooth/BluetoothDevice;IIZI)V
    .locals 13
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I
    .param p4, "suppressNoisyIntent"    # Z
    .param p5, "a2dpVolume"    # I

    .line 696
    move-object v1, p0

    move-object v8, p1

    if-nez p2, :cond_0

    .line 697
    iget-object v2, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)V

    .line 701
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/AudioDeviceInventory;->prevDisconnectedDeviceAddress:Ljava/lang/String;

    .line 703
    return-void

    .line 706
    :cond_0
    iget-object v2, v1, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 707
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 708
    .local v0, "address":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3, p1}, Lcom/android/server/audio/AudioDeviceBroker;->getA2dpCodec(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 709
    .local v3, "a2dpCodec":I
    const/16 v4, 0x80

    invoke-static {v4, v0}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 711
    .local v5, "deviceKey":Ljava/lang/String;
    iget-object v6, v1, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 712
    .local v6, "deviceInfo":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    if-eqz v6, :cond_2

    .line 716
    sget-object v4, Lcom/android/server/audio/AudioDeviceInventory;->prevDisconnectedDeviceAddress:Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/audio/AudioDeviceInventory;->prevDisconnectedDeviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 717
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/server/audio/AudioDeviceInventory;->mPostA2dpDeviceConfigChange:Z

    .line 721
    :cond_1
    iget-object v4, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v4, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V

    .line 722
    monitor-exit v2

    return-void

    .line 724
    :cond_2
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v9, v1, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v7, v9, :cond_5

    .line 725
    iget-object v9, v1, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-object v6, v9

    .line 726
    iget v9, v6, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    if-eq v9, v4, :cond_3

    .line 727
    nop

    .line 724
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 730
    :cond_3
    iget-object v9, v1, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 731
    .local v9, "existingDevicekey":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    iget-object v10, v1, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    new-instance v11, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 733
    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v4, v12, v0, v3}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 732
    invoke-virtual {v10, v5, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    iget-object v4, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v4}, Lcom/android/server/audio/AudioDeviceBroker;->hasScheduledA2dpDeviceConnectionState()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/server/audio/AudioDeviceInventory;->prevDisconnectedDeviceAddress:Ljava/lang/String;

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/server/audio/AudioDeviceInventory;->prevDisconnectedDeviceAddress:Ljava/lang/String;

    if-ne v4, v0, :cond_4

    .line 740
    iget-object v4, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v4}, Lcom/android/server/audio/AudioDeviceBroker;->cancelA2dpDeviceConnectionState()V

    .line 743
    :cond_4
    iget-object v4, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v10, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v11, p5

    :try_start_1
    invoke-direct {v10, p1, v11, v3}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;II)V

    invoke-virtual {v4, v10}, Lcom/android/server/audio/AudioDeviceBroker;->postA2dpActiveDeviceChange(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;)V

    .line 746
    monitor-exit v2

    return-void

    .line 724
    .end local v9    # "existingDevicekey":Ljava/lang/String;
    :cond_5
    move/from16 v11, p5

    .line 748
    .end local v0    # "address":Ljava/lang/String;
    .end local v3    # "a2dpCodec":I
    .end local v5    # "deviceKey":Ljava/lang/String;
    .end local v6    # "deviceInfo":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .end local v7    # "i":I
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 750
    iget-object v2, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)V

    .line 752
    return-void

    .line 748
    :catchall_0
    move-exception v0

    move/from16 v11, p5

    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "connect"    # Z
    .param p2, "device"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDeviceConnection("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " dev:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 532
    const-string v1, "AS.AudioDeviceInventory"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 537
    :try_start_0
    invoke-static {p2, p3}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 539
    .local v1, "deviceKey":Ljava/lang/String;
    const-string v2, "AS.AudioDeviceInventory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceKey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 542
    .local v2, "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    .line 544
    .local v5, "isConnected":Z
    :goto_0
    const-string v6, "AS.AudioDeviceInventory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deviceInfo:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " is(already)Connected:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    if-eqz p1, :cond_2

    if-nez v5, :cond_2

    .line 547
    invoke-static {p2, v3, p3, p4, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 550
    .local v6, "res":I
    if-eqz v6, :cond_1

    .line 551
    const-string v3, "AS.AudioDeviceInventory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "not connecting device 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " due to command error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    monitor-exit v0

    return v4

    .line 555
    :cond_1
    iget-object v7, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    new-instance v8, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-direct {v8, p2, p4, p3, v4}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v1, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v4, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postAccessoryPlugMediaUnmute(I)V

    .line 558
    monitor-exit v0

    return v3

    .line 559
    .end local v6    # "res":I
    :cond_2
    if-nez p1, :cond_3

    if-eqz v5, :cond_3

    .line 560
    invoke-static {p2, v4, p3, p4, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    .line 564
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    monitor-exit v0

    return v3

    .line 567
    :cond_3
    const-string v3, "AS.AudioDeviceInventory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleDeviceConnection() failed, deviceKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", deviceSpec="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", connect="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    nop

    .end local v1    # "deviceKey":Ljava/lang/String;
    .end local v2    # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .end local v5    # "isConnected":Z
    monitor-exit v0

    .line 570
    return v4

    .line 569
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$disconnectA2dp$1$AudioDeviceInventory(ILjava/lang/String;)V
    .locals 0
    .param p1, "delay"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .line 588
    invoke-direct {p0, p2, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$disconnectA2dpSink$3$AudioDeviceInventory(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 603
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$disconnectHearingAid$5$AudioDeviceInventory(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 621
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeHearingAidDeviceUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$isCurrentDeviceConnected$6$AudioDeviceInventory(Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)Z
    .locals 2
    .param p1, "deviceInfo"    # Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 938
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method onBluetoothA2dpActiveDeviceChange(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V
    .locals 17
    .param p1, "btInfo"    # Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    .param p2, "event"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    .line 329
    move-object/from16 v8, p0

    move/from16 v9, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getBtDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    .line 332
    .local v10, "btDevice":Landroid/bluetooth/BluetoothDevice;
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/android/server/audio/AudioDeviceInventory;->mPostA2dpDeviceConfigChange:Z

    .line 334
    if-nez v10, :cond_0

    .line 335
    return-void

    .line 338
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBluetoothA2dpActiveDeviceChange btDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioDeviceInventory"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getVolume()I

    move-result v11

    .line 341
    .local v11, "a2dpVolume":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getCodec()I

    move-result v12

    .line 343
    .local v12, "a2dpCodec":I
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "address":Ljava/lang/String;
    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 345
    const-string v1, ""

    move-object v13, v1

    goto :goto_0

    .line 344
    :cond_1
    move-object v13, v1

    .line 347
    .end local v1    # "address":Ljava/lang/String;
    .local v13, "address":Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onBluetoothA2dpActiveDeviceChange addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-static/range {p2 .. p2}, Lcom/android/server/audio/BtHelper;->a2dpDeviceEventToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 351
    iget-object v14, v8, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v14

    .line 354
    :try_start_0
    iget-object v1, v8, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, v10}, Lcom/android/server/audio/AudioDeviceBroker;->hasScheduledA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 355
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v2, "A2dp config change ignored"

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 357
    monitor-exit v14

    return-void

    .line 359
    :cond_2
    const/16 v1, 0x80

    invoke-static {v1, v13}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    .line 361
    .local v15, "key":Ljava/lang/String;
    iget-object v2, v8, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-object v7, v2

    .line 362
    .local v7, "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    if-nez v7, :cond_3

    .line 363
    const-string v0, "AS.AudioDeviceInventory"

    const-string v1, "invalid null DeviceInfo in onBluetoothA2dpActiveDeviceChange"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    monitor-exit v14

    return-void

    .line 367
    :cond_3
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v9, v3, :cond_a

    .line 369
    const/4 v4, -0x1

    if-eq v11, v4, :cond_6

    .line 370
    const-string v4, "AS.AudioDeviceInventory"

    const-string v5, "Unmuting the stream before setting device Volume."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v4, v8, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v4, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postAccessoryPlugMediaUnmute(I)V

    .line 374
    iget-object v4, v8, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v4}, Lcom/android/server/audio/AudioDeviceBroker;->isEUVersion()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 375
    mul-int/lit8 v4, v11, 0xa

    .line 376
    .local v4, "persistA2dpVolume":I
    iget-object v5, v8, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioDeviceBroker;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v5

    .line 377
    .local v5, "isAvrcpAbsVolSupported":Z
    iget-object v6, v8, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v6, v0, v4}, Lcom/android/server/audio/AudioDeviceBroker;->getA2dpVolume(ZI)I

    move-result v6

    .line 378
    .local v6, "finalA2dpVolume":I
    const-string v0, "AS.AudioDeviceInventory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBluetoothA2dpActiveDeviceChange persistA2dpVolume:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " finalA2dpVolume:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isAvrcpAbsVolSupported:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, v8, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v1, "onBluetoothA2dpActiveDeviceChange"

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v6, v3, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    .line 385
    if-eq v4, v6, :cond_4

    if-eqz v5, :cond_4

    .line 386
    iget-object v0, v8, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    div-int/lit8 v1, v6, 0xa

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postSetAvrcpAbsoluteVolumeIndex(I)V

    .line 388
    .end local v4    # "persistA2dpVolume":I
    .end local v5    # "isAvrcpAbsVolSupported":Z
    .end local v6    # "finalA2dpVolume":I
    :cond_4
    goto :goto_1

    .line 389
    :cond_5
    iget-object v0, v8, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    mul-int/lit8 v1, v11, 0xa

    const-string/jumbo v3, "onBluetoothA2dpActiveDeviceChange"

    const/16 v4, 0x80

    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/android/server/audio/AudioDeviceBroker;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    .line 407
    :cond_6
    :goto_1
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0xaa

    const/4 v3, 0x0

    aput v1, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, "autoPlayBlackDevice":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget-object v3, Lcom/android/server/audio/AudioDeviceInventory;->autoPlayBlackListedAddr:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_8

    .line 410
    sget-object v3, Lcom/android/server/audio/AudioDeviceInventory;->autoPlayBlackListedAddr:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 411
    .local v3, "addr":Ljava/lang/String;
    if-eqz v13, :cond_7

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 412
    const-string v4, "AS.AudioDeviceInventory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Is auto play blacklist device:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v0, 0x1

    .line 409
    .end local v3    # "addr":Ljava/lang/String;
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 416
    .end local v1    # "i":I
    :cond_8
    if-nez v0, :cond_9

    .line 417
    iget-object v1, v8, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/16 v3, 0x320

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->postStartAutoPlayback(II)V

    .line 419
    .end local v0    # "autoPlayBlackDevice":Z
    :cond_9
    goto :goto_3

    .line 421
    :cond_a
    if-nez v9, :cond_b

    .line 422
    iget v0, v7, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    if-eq v0, v12, :cond_b

    .line 423
    iput v12, v7, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    .line 424
    iget-object v0, v8, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0, v15, v7}, Landroid/util/ArrayMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    :cond_b
    :goto_3
    nop

    .line 428
    invoke-static {v10}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    .line 427
    const/16 v1, 0x80

    invoke-static {v1, v13, v0, v12}, Landroid/media/AudioSystem;->handleDeviceConfigChange(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_c

    .line 429
    iget-object v0, v8, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioDeviceBroker;->getDeviceForStream(I)I

    move-result v6

    .line 432
    .local v6, "musicDevice":I
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v0, -0x1

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v16, v7

    .end local v7    # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .local v16, "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    move v7, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioDeviceInventory;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IIZII)V

    goto :goto_4

    .line 427
    .end local v6    # "musicDevice":I
    .end local v16    # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .restart local v7    # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    :cond_c
    move-object/from16 v16, v7

    .line 437
    .end local v7    # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .end local v15    # "key":Ljava/lang/String;
    :goto_4
    monitor-exit v14

    .line 438
    return-void

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onMakeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "a2dpCodec"    # I

    .line 441
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 442
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V

    .line 443
    monitor-exit v0

    .line 444
    return-void

    .line 443
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onReportNewRoutes()V
    .locals 4

    .line 447
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 448
    .local v0, "n":I
    if-lez v0, :cond_0

    .line 450
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v1

    .line 451
    :try_start_0
    new-instance v2, Landroid/media/AudioRoutesInfo;

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v2, v3}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 452
    .local v2, "routes":Landroid/media/AudioRoutesInfo;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    :goto_0
    if-lez v0, :cond_0

    .line 454
    add-int/lit8 v0, v0, -0x1

    .line 455
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/media/IAudioRoutesObserver;

    .line 457
    .local v1, "obs":Landroid/media/IAudioRoutesObserver;
    :try_start_1
    invoke-interface {v1, v2}, Landroid/media/IAudioRoutesObserver;->dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 458
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    .line 459
    .end local v1    # "obs":Landroid/media/IAudioRoutesObserver;
    :goto_2
    goto :goto_0

    .line 452
    .end local v2    # "routes":Landroid/media/AudioRoutesInfo;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 461
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 462
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->postObserveDevicesForAllStreams()V

    .line 463
    return-void
.end method

.method onRestoreDevices()V
    .locals 8

    .line 159
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 160
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 162
    .local v2, "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    iget v3, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    iget-object v4, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    const/4 v7, 0x1

    invoke-static {v3, v7, v4, v5, v6}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    .line 160
    nop

    .end local v2    # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onSetA2dpSinkConnectionState(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V
    .locals 17
    .param p1, "btInfo"    # Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    .param p2, "state"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    .line 175
    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getBtDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 176
    .local v3, "btDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getVolume()I

    move-result v4

    .line 178
    .local v4, "a2dpVolume":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSetA2dpSinkConnectionState btDevice="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " state="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is dock="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " vol="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    const-string v5, "AS.AudioDeviceInventory"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 183
    const-string v0, ""

    move-object v5, v0

    goto :goto_0

    .line 182
    :cond_0
    move-object v5, v0

    .line 187
    .end local v0    # "address":Ljava/lang/String;
    .local v5, "address":Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_1

    sget-object v0, Lcom/android/server/audio/AudioDeviceInventory;->prevDisconnectedDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, v1, Lcom/android/server/audio/AudioDeviceInventory;->mPostA2dpDeviceConfigChange:Z

    if-eqz v0, :cond_1

    .line 191
    const-string v0, "AS.AudioDeviceInventory"

    const-string v6, "The same device for mPostA2dpDeviceConfigChange is true,skip A2DP disconnection!"

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void

    .line 195
    :cond_1
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v6, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "A2DP sink connected: device addr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " vol="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 199
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getCodec()I

    move-result v6

    .line 201
    .local v6, "a2dpCodec":I
    iget-object v7, v1, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 202
    nop

    .line 203
    :try_start_0
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 202
    const/16 v8, 0x80

    invoke-static {v8, v0}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "key":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v9, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 205
    .local v9, "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    const/4 v10, 0x0

    if-eqz v9, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    move v11, v10

    .line 207
    .local v11, "isConnected":Z
    :goto_1
    const/4 v12, 0x2

    if-eqz v11, :cond_4

    if-eq v2, v12, :cond_4

    .line 208
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 209
    if-nez v2, :cond_b

    .line 213
    const/16 v8, 0x1f40

    invoke-direct {v1, v5, v8}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 218
    :cond_3
    iget v8, v9, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    invoke-direct {v1, v5, v8}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 220
    :cond_4
    if-nez v11, :cond_a

    if-ne v2, v12, :cond_a

    .line 221
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 223
    iget-object v12, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v12}, Lcom/android/server/audio/AudioDeviceBroker;->cancelA2dpDockTimeout()V

    .line 224
    iput-object v5, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDockAddress:Ljava/lang/String;

    goto :goto_2

    .line 228
    :cond_5
    iget-object v12, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v12}, Lcom/android/server/audio/AudioDeviceBroker;->hasScheduledA2dpDockTimeout()Z

    move-result v12

    if-eqz v12, :cond_6

    iget-object v12, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDockAddress:Ljava/lang/String;

    if-eqz v12, :cond_6

    .line 229
    iget-object v12, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v12}, Lcom/android/server/audio/AudioDeviceBroker;->cancelA2dpDockTimeout()V

    .line 230
    iget-object v12, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDockAddress:Ljava/lang/String;

    invoke-direct {v1, v12, v10}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V

    .line 234
    :cond_6
    :goto_2
    const/4 v12, -0x1

    if-eq v4, v12, :cond_9

    .line 237
    iget-object v12, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v12}, Lcom/android/server/audio/AudioDeviceBroker;->isEUVersion()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 238
    mul-int/lit8 v12, v4, 0xa

    .line 239
    .local v12, "persistA2dpVolume":I
    iget-object v14, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v14}, Lcom/android/server/audio/AudioDeviceBroker;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v14

    .line 240
    .local v14, "isAvrcpAbsVolSupported":Z
    iget-object v15, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v15, v10, v12}, Lcom/android/server/audio/AudioDeviceBroker;->getA2dpVolume(ZI)I

    move-result v10

    .line 241
    .local v10, "finalA2dpVolume":I
    const-string v15, "AS.AudioDeviceInventory"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "onSetA2dpSinkConnectionState persistA2dpVolume:"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " finalA2dpVolume:"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " isAvrcpAbsVolSupported:"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v8, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v13, "onSetA2dpSinkConnectionState"

    move-object/from16 v16, v0

    const/16 v0, 0x80

    const/4 v15, 0x3

    .end local v0    # "key":Ljava/lang/String;
    .local v16, "key":Ljava/lang/String;
    invoke-virtual {v8, v15, v10, v0, v13}, Lcom/android/server/audio/AudioDeviceBroker;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    .line 247
    if-eq v12, v10, :cond_7

    if-eqz v14, :cond_7

    .line 248
    iget-object v0, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    div-int/lit8 v8, v10, 0xa

    invoke-virtual {v0, v8}, Lcom/android/server/audio/AudioDeviceBroker;->postSetAvrcpAbsoluteVolumeIndex(I)V

    .line 250
    .end local v10    # "finalA2dpVolume":I
    .end local v12    # "persistA2dpVolume":I
    .end local v14    # "isAvrcpAbsVolSupported":Z
    :cond_7
    goto :goto_3

    .line 251
    .end local v16    # "key":Ljava/lang/String;
    .restart local v0    # "key":Ljava/lang/String;
    :cond_8
    move-object/from16 v16, v0

    .end local v0    # "key":Ljava/lang/String;
    .restart local v16    # "key":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    mul-int/lit8 v8, v4, 0xa

    const-string/jumbo v10, "onSetA2dpSinkConnectionState"

    const/4 v12, 0x3

    const/16 v13, 0x80

    invoke-virtual {v0, v12, v8, v13, v10}, Lcom/android/server/audio/AudioDeviceBroker;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    goto :goto_3

    .line 234
    .end local v16    # "key":Ljava/lang/String;
    .restart local v0    # "key":Ljava/lang/String;
    :cond_9
    move-object/from16 v16, v0

    .line 265
    .end local v0    # "key":Ljava/lang/String;
    .restart local v16    # "key":Ljava/lang/String;
    :goto_3
    invoke-static {v3}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "onSetA2dpSinkConnectionState"

    invoke-direct {v1, v5, v0, v8, v6}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 270
    iget-object v0, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v8, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDockAddress:Ljava/lang/String;

    const/16 v10, 0x80

    invoke-virtual {v0, v10, v8}, Lcom/android/server/audio/AudioDeviceBroker;->checkMusicActive(ILjava/lang/String;)V

    goto :goto_4

    .line 220
    .end local v16    # "key":Ljava/lang/String;
    .restart local v0    # "key":Ljava/lang/String;
    :cond_a
    move-object/from16 v16, v0

    .line 273
    .end local v0    # "key":Ljava/lang/String;
    .end local v9    # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .end local v11    # "isConnected":Z
    :cond_b
    :goto_4
    monitor-exit v7

    .line 274
    return-void

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onSetA2dpSourceConnectionState(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V
    .locals 7
    .param p1, "btInfo"    # Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    .param p2, "state"    # I

    .line 278
    invoke-virtual {p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getBtDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 280
    .local v0, "btDevice":Landroid/bluetooth/BluetoothDevice;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSetA2dpSourceConnectionState btDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioDeviceInventory"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "address":Ljava/lang/String;
    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 285
    const-string v1, ""

    .line 288
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 289
    const/high16 v3, -0x7ffe0000

    :try_start_0
    invoke-static {v3, v1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 292
    .local v4, "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    if-eqz v4, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 294
    .local v5, "isConnected":Z
    :goto_0
    const/4 v6, 0x2

    if-eqz v5, :cond_2

    if-eq p2, v6, :cond_2

    .line 295
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    goto :goto_1

    .line 296
    :cond_2
    if-nez v5, :cond_3

    if-ne p2, v6, :cond_3

    .line 297
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpSrcAvailable(Ljava/lang/String;)V

    .line 299
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .end local v5    # "isConnected":Z
    :cond_3
    :goto_1
    monitor-exit v2

    .line 300
    return-void

    .line 299
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method onSetHearingAidConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 7
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "streamType"    # I

    .line 304
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 306
    const-string v0, ""

    .line 308
    :cond_0
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSetHearingAidConnectionState addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 311
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 312
    const/high16 v2, 0x8000000

    .line 313
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 312
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 315
    .local v3, "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    if-eqz v3, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 317
    .local v4, "isConnected":Z
    :goto_0
    const/4 v5, 0x2

    if-eqz v4, :cond_2

    if-eq p2, v5, :cond_2

    .line 318
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->makeHearingAidDeviceUnavailable(Ljava/lang/String;)V

    goto :goto_1

    .line 319
    :cond_2
    if-nez v4, :cond_3

    if-ne p2, v5, :cond_3

    .line 320
    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "onSetHearingAidConnectionState"

    invoke-direct {p0, v0, v5, p3, v6}, Lcom/android/server/audio/AudioDeviceInventory;->makeHearingAidDeviceAvailable(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 323
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .end local v4    # "isConnected":Z
    :cond_3
    :goto_1
    monitor-exit v1

    .line 324
    return-void

    .line 323
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method onSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;)V
    .locals 7
    .param p1, "wdcs"    # Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;

    .line 471
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;

    invoke-direct {v1, p1}, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;-><init>(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 473
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 474
    :try_start_0
    iget v1, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    const v2, 0x402600c

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget v1, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v4, "onSetWiredDeviceConnectionState state DISCONNECTED"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(ZLjava/lang/String;)V

    .line 480
    :cond_0
    iget v1, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    iget v1, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    iget-object v5, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAddress:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mName:Ljava/lang/String;

    invoke-virtual {p0, v3, v1, v5, v6}, Lcom/android/server/audio/AudioDeviceInventory;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 483
    monitor-exit v0

    return-void

    .line 485
    :cond_2
    iget v1, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    if-eqz v1, :cond_4

    .line 486
    iget v1, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    .line 487
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v2, "onSetWiredDeviceConnectionState state not DISCONNECTED"

    invoke-virtual {v1, v4, v2}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(ZLjava/lang/String;)V

    .line 490
    :cond_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget v2, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/AudioDeviceBroker;->checkMusicActive(ILjava/lang/String;)V

    .line 492
    :cond_4
    iget v1, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    const/16 v2, 0x400

    if-ne v1, v2, :cond_5

    .line 493
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget v2, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/AudioDeviceBroker;->checkVolumeCecOnHdmiConnection(ILjava/lang/String;)V

    .line 495
    :cond_5
    iget v1, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    iget v2, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAddress:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mName:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/audio/AudioDeviceInventory;->sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V

    .line 496
    iget v1, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    iget v2, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/audio/AudioDeviceInventory;->updateAudioRoutes(II)V

    .line 497
    monitor-exit v0

    .line 498
    return-void

    .line 497
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onToggleHdmi()V
    .locals 15

    .line 501
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 503
    const/16 v1, 0x400

    :try_start_0
    const-string v2, ""

    invoke-static {v1, v2}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 504
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 505
    .local v2, "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    if-nez v2, :cond_0

    .line 506
    const-string v3, "AS.AudioDeviceInventory"

    const-string v4, "invalid null DeviceInfo in onToggleHdmi"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    monitor-exit v0

    return-void

    .line 510
    :cond_0
    const/16 v4, 0x400

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, ""

    const-string v8, "android"

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/audio/AudioDeviceInventory;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/16 v10, 0x400

    const/4 v11, 0x1

    const-string v12, ""

    const-string v13, ""

    const-string v14, "android"

    move-object v9, p0

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/audio/AudioDeviceInventory;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    nop

    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    monitor-exit v0

    .line 517
    return-void

    .line 516
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IIZII)V
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I
    .param p4, "suppressNoisyIntent"    # Z
    .param p5, "musicDevice"    # I
    .param p6, "a2dpVolume"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    .line 654
    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/16 v1, 0xb

    if-ne p3, v1, :cond_0

    goto :goto_0

    .line 655
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 657
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 658
    const/4 v2, 0x0

    if-ne p3, v0, :cond_3

    if-nez p4, :cond_3

    .line 659
    if-ne p2, v0, :cond_2

    const/4 v2, 0x1

    .line 660
    .local v2, "intState":I
    :cond_2
    const/16 v3, 0x80

    :try_start_0
    invoke-direct {p0, v3, v2, p5}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v3

    move v2, v3

    .line 662
    .local v2, "delay":I
    goto :goto_1

    .line 663
    .end local v2    # "delay":I
    :cond_3
    nop

    .line 666
    .restart local v2    # "delay":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3, p1}, Lcom/android/server/audio/AudioDeviceBroker;->getA2dpCodec(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 669
    .local v3, "a2dpCodec":I
    const-string v4, "AS.AudioDeviceInventory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBluetoothA2dpDeviceConnectionState device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " delay(ms): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "codec:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " suppressNoisyIntent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    new-instance v4, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    invoke-direct {v4, p1, p6, v3}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;II)V

    .line 676
    .local v4, "a2dpDeviceInfo":Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    if-ne p3, v0, :cond_5

    .line 677
    if-nez v2, :cond_4

    .line 678
    invoke-virtual {p0, v4, p2}, Lcom/android/server/audio/AudioDeviceInventory;->onSetA2dpSinkConnectionState(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V

    goto :goto_2

    .line 680
    :cond_4
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p2, v4, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postA2dpSinkConnection(ILcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V

    goto :goto_2

    .line 685
    :cond_5
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p2, v4, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postA2dpSourceConnection(ILcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V

    .line 689
    .end local v3    # "a2dpCodec":I
    .end local v4    # "a2dpDeviceInfo":Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    :goto_2
    monitor-exit v1

    .line 690
    return-void

    .line 689
    .end local v2    # "delay":I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZI)I
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "suppressNoisyIntent"    # Z
    .param p4, "musicDevice"    # I

    .line 769
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 770
    const/4 v1, 0x0

    if-nez p3, :cond_1

    .line 771
    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    const/4 v1, 0x1

    .line 772
    .local v1, "intState":I
    :cond_0
    const/high16 v2, 0x8000000

    :try_start_0
    invoke-direct {p0, v2, v1, p4}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v2

    move v1, v2

    .line 774
    .local v1, "delay":I
    goto :goto_0

    .line 775
    .end local v1    # "delay":I
    :cond_1
    nop

    .line 777
    .restart local v1    # "delay":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, p2, p1, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postSetHearingAidConnectionState(ILandroid/bluetooth/BluetoothDevice;I)V

    .line 778
    monitor-exit v0

    return v1

    .line 779
    .end local v1    # "delay":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 14
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    .line 756
    move-object v8, p0

    iget-object v9, v8, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v9

    .line 757
    const/4 v0, 0x0

    move v10, p1

    move/from16 v11, p2

    :try_start_0
    invoke-direct {p0, p1, v11, v0}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v0

    .line 758
    .local v0, "delay":I
    iget-object v12, v8, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v13, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;

    move-object v1, v13

    move-object v2, p0

    move v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;-><init>(Lcom/android/server/audio/AudioDeviceInventory;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13, v0}, Lcom/android/server/audio/AudioDeviceBroker;->postSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;I)V

    .line 761
    monitor-exit v9

    return v0

    .line 762
    .end local v0    # "delay":I
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .locals 3
    .param p1, "observer"    # Landroid/media/IAudioRoutesObserver;

    .line 638
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v0

    .line 639
    :try_start_0
    new-instance v1, Landroid/media/AudioRoutesInfo;

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v1, v2}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 640
    .local v1, "routes":Landroid/media/AudioRoutesInfo;
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 641
    monitor-exit v0

    return-object v1

    .line 642
    .end local v1    # "routes":Landroid/media/AudioRoutesInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
