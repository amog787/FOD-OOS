.class public Lcom/android/server/audio/BtHelper;
.super Ljava/lang/Object;
.source "BtHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/BtHelper$ScoClient;,
        Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    }
.end annotation


# static fields
.field private static final BT_HEARING_AID_GAIN_MIN:I = -0x80

.field static final EVENT_ACTIVE_DEVICE_CHANGE:I = 0x1

.field static final EVENT_DEVICE_CONFIG_CHANGE:I = 0x0

.field private static final SCO_MODE_MAX:I = 0x2

.field private static final SCO_MODE_RAW:I = 0x1

.field static final SCO_MODE_UNDEFINED:I = -0x1

.field static final SCO_MODE_VIRTUAL_CALL:I = 0x0

.field private static final SCO_MODE_VR:I = 0x2

.field private static final SCO_STATE_ACTIVATE_REQ:I = 0x1

.field private static final SCO_STATE_ACTIVE_EXTERNAL:I = 0x2

.field private static final SCO_STATE_ACTIVE_INTERNAL:I = 0x3

.field private static final SCO_STATE_DEACTIVATE_REQ:I = 0x4

.field private static final SCO_STATE_DEACTIVATING:I = 0x5

.field private static final SCO_STATE_INACTIVE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AS.BtHelper"

.field private static mA2dp:Landroid/bluetooth/BluetoothA2dp;


# instance fields
.field private mAvrcpAbsVolSupported:Z

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

.field private mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

.field private mScoAudioMode:I

.field private mScoAudioState:I

.field private mScoClientDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mScoClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/BtHelper$ScoClient;",
            ">;"
        }
    .end annotation
.end field

.field private mScoConnectionState:I


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;)V
    .locals 1
    .param p1, "broker"    # Lcom/android/server/audio/AudioDeviceBroker;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mScoClients:Ljava/util/ArrayList;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    .line 326
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mScoClientDevices:Ljava/util/HashMap;

    .line 833
    new-instance v0, Lcom/android/server/audio/BtHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/audio/BtHelper$1;-><init>(Lcom/android/server/audio/BtHelper;)V

    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 60
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 61
    return-void
.end method

.method static a2dpDeviceEventToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "event"    # I

    .line 208
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 210
    :cond_0
    const-string v0, "ACTIVE_DEVICE_CHANGE"

    return-object v0

    .line 209
    :cond_1
    const-string v0, "DEVICE_CONFIG_CHANGE"

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/BtHelper;

    .line 53
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHeadset;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .line 53
    invoke-static {p0, p1, p2}, Lcom/android/server/audio/BtHelper;->connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHeadset;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .line 53
    invoke-static {p0, p1, p2}, Lcom/android/server/audio/BtHelper;->disconnectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/audio/BtHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/BtHelper;

    .line 53
    invoke-direct {p0}, Lcom/android/server/audio/BtHelper;->checkScoAudioState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/audio/BtHelper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/BtHelper;

    .line 53
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mScoClients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/audio/BtHelper;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/BtHelper;
    .param p1, "x1"    # I

    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/audio/BtHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/BtHelper;

    .line 53
    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/audio/BtHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/BtHelper;
    .param p1, "x1"    # I

    .line 53
    iput p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/audio/BtHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/BtHelper;

    .line 53
    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/audio/BtHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/BtHelper;
    .param p1, "x1"    # I

    .line 53
    iput p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/BtHelper;

    .line 53
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/BtHelper;

    .line 53
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/audio/BtHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/BtHelper;

    .line 53
    invoke-direct {p0}, Lcom/android/server/audio/BtHelper;->getBluetoothHeadset()Z

    move-result v0

    return v0
.end method

.method public static bluetoothCodecToEncodingString(I)Ljava/lang/String;
    .locals 2
    .param p0, "btCodecType"    # I

    .line 1243
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 1255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ENCODING_BT_CODEC_TYPE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1253
    :cond_0
    const-string v0, "ENCODING_LDAC"

    return-object v0

    .line 1251
    :cond_1
    const-string v0, "ENCODING_APTX_HD"

    return-object v0

    .line 1249
    :cond_2
    const-string v0, "ENCODING_APTX"

    return-object v0

    .line 1247
    :cond_3
    const-string v0, "ENCODING_AAC"

    return-object v0

    .line 1245
    :cond_4
    const-string v0, "ENCODING_SBC"

    return-object v0
.end method

.method private broadcastScoConnectionState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 729
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postBroadcastScoConnectionState(I)V

    .line 730
    return-void
.end method

.method private checkAndUpdatTwsPlusScoState(Landroid/content/Intent;Ljava/lang/Integer;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "state"    # Ljava/lang/Integer;

    .line 358
    const/4 v0, 0x1

    .line 359
    .local v0, "ret":Z
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 360
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.BtHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    if-nez v1, :cond_0

    .line 363
    const-string v2, "checkAndUpdatTwsPlusScoState: device is null"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return v0

    .line 369
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->isTwsPlusDevice()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 370
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0xc

    if-ne v2, v4, :cond_2

    .line 373
    invoke-direct {p0}, Lcom/android/server/audio/BtHelper;->isAudioPathUp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 374
    const-string v2, "No need to bringup audio-path"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v0, 0x0

    .line 378
    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/android/server/audio/BtHelper;->updateTwsPlusScoState(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;)V

    goto :goto_0

    .line 381
    :cond_2
    invoke-direct {p0, v1, p2}, Lcom/android/server/audio/BtHelper;->updateTwsPlusScoState(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;)V

    .line 384
    invoke-direct {p0}, Lcom/android/server/audio/BtHelper;->isAudioPathUp()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 385
    const-string/jumbo v2, "not good to tear down audio-path"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v0, 0x0

    .line 390
    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAndUpdatTwsPlusScoState returns "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return v0
.end method

.method private checkScoAudioState()V
    .locals 3

    .line 1175
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-nez v2, :cond_0

    .line 1178
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 1180
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 1183
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In checkScoAudioState(), mScoAudioState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.BtHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    return-void
.end method

.method private clearAllScoClients(IZ)V
    .locals 4
    .param p1, "exceptPid"    # I
    .param p2, "stopSco"    # Z

    .line 1208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1209
    .local v0, "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/audio/BtHelper$ScoClient;>;"
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/BtHelper$ScoClient;

    .line 1210
    .local v2, "cl":Lcom/android/server/audio/BtHelper$ScoClient;
    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper$ScoClient;->getPid()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 1211
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1213
    .end local v2    # "cl":Lcom/android/server/audio/BtHelper$ScoClient;
    :cond_0
    goto :goto_0

    .line 1214
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/BtHelper$ScoClient;

    .line 1215
    .restart local v2    # "cl":Lcom/android/server/audio/BtHelper$ScoClient;
    const/4 v3, 0x1

    invoke-virtual {v2, p2, v3}, Lcom/android/server/audio/BtHelper$ScoClient;->remove(ZZ)V

    .line 1216
    .end local v2    # "cl":Lcom/android/server/audio/BtHelper$ScoClient;
    goto :goto_1

    .line 1218
    :cond_2
    return-void
.end method

.method private static connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .param p0, "bluetoothHeadset"    # Landroid/bluetooth/BluetoothHeadset;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "scoAudioMode"    # I

    .line 1148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In connectBluetoothScoAudioHelper(), scoAudioMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bluetoothHeadset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", BluetoothDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.BtHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 1170
    const/4 v0, 0x0

    return v0

    .line 1165
    :cond_0
    const-string v0, "In connectBluetoothScoAudioHelper(), calling startVoiceRecognition()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0

    .line 1154
    :cond_1
    const-string v0, "In connectBluetoothScoAudioHelper(), calling connectAudio()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->connectAudio()Z

    move-result v0

    return v0

    .line 1159
    :cond_2
    const-string v0, "In connectBluetoothScoAudioHelper(), calling startScoUsingVirtualVoiceCall()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall()Z

    move-result v0

    return v0
.end method

.method private static disconnectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .param p0, "bluetoothHeadset"    # Landroid/bluetooth/BluetoothHeadset;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "scoAudioMode"    # I

    .line 1118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In disconnectBluetoothScoAudioHelper(), scoAudioMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bluetoothHeadset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", BluetoothDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.BtHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 1141
    const/4 v0, 0x0

    return v0

    .line 1136
    :cond_0
    const-string v0, "In disconnectBluetoothScoAudioHelper(), calling stopVoiceRecognition()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0

    .line 1124
    :cond_1
    const-string v0, "In disconnectBluetoothScoAudioHelper(), calling disconnectAudio()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    move-result v0

    return v0

    .line 1130
    :cond_2
    const-string v0, "In disconnectBluetoothScoAudioHelper(), calling stopScoUsingVirtualVoiceCall()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall()Z

    move-result v0

    return v0
.end method

.method private getBluetoothHeadset()Z
    .locals 5

    .line 1221
    const/4 v0, 0x0

    .line 1222
    .local v0, "result":Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 1223
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_0

    .line 1224
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v0

    .line 1231
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1232
    if-eqz v0, :cond_1

    const/16 v3, 0xbb8

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 1231
    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioDeviceBroker;->handleFailureToConnectToBtHeadsetService(I)V

    .line 1233
    return v0
.end method

.method static getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 2
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 217
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "deviceName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 219
    const-string v1, ""

    return-object v1

    .line 221
    :cond_0
    return-object v0
.end method

.method private getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/BtHelper$ScoClient;
    .locals 3
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "create"    # Z

    .line 1190
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/BtHelper$ScoClient;

    .line 1191
    .local v1, "existingClient":Lcom/android/server/audio/BtHelper$ScoClient;
    invoke-virtual {v1}, Lcom/android/server/audio/BtHelper$ScoClient;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 1192
    return-object v1

    .line 1194
    .end local v1    # "existingClient":Lcom/android/server/audio/BtHelper$ScoClient;
    :cond_0
    goto :goto_0

    .line 1195
    :cond_1
    if-eqz p2, :cond_2

    .line 1196
    new-instance v0, Lcom/android/server/audio/BtHelper$ScoClient;

    invoke-direct {v0, p0, p1}, Lcom/android/server/audio/BtHelper$ScoClient;-><init>(Lcom/android/server/audio/BtHelper;Landroid/os/IBinder;)V

    .line 1197
    .local v0, "newClient":Lcom/android/server/audio/BtHelper$ScoClient;
    invoke-virtual {v0}, Lcom/android/server/audio/BtHelper$ScoClient;->registerDeathRecipient()V

    .line 1198
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1199
    return-object v0

    .line 1201
    .end local v0    # "newClient":Lcom/android/server/audio/BtHelper$ScoClient;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 13
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "isActive"    # Z

    .line 733
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 734
    return v0

    .line 736
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 737
    .local v1, "address":Ljava/lang/String;
    const-string v2, "00:00:00:00:00:00"

    .line 738
    .local v2, "dummyAddress":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    .line 739
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    :goto_0
    nop

    .line 740
    .local v3, "btClass":Landroid/bluetooth/BluetoothClass;
    const v4, -0x7ffffff8

    .line 741
    .local v4, "inDevice":I
    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    .line 746
    .local v5, "outDeviceTypes":[I
    const/4 v6, 0x0

    if-eqz v3, :cond_4

    .line 747
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v7

    const/16 v8, 0x404

    if-eq v7, v8, :cond_3

    const/16 v8, 0x408

    if-eq v7, v8, :cond_3

    const/16 v8, 0x420

    if-eq v7, v8, :cond_2

    goto :goto_1

    .line 753
    :cond_2
    new-array v7, v0, [I

    const/16 v8, 0x40

    aput v8, v7, v6

    move-object v5, v7

    goto :goto_1

    .line 750
    :cond_3
    new-array v7, v0, [I

    const/16 v8, 0x20

    aput v8, v7, v6

    move-object v5, v7

    .line 757
    :cond_4
    :goto_1
    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 758
    const-string v1, ""

    .line 760
    :cond_5
    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v7

    .line 761
    .local v7, "btDeviceName":Ljava/lang/String;
    if-nez v7, :cond_6

    .line 762
    const-string v8, "AS.BtHelper"

    const-string v9, "handleBtScoActiveDeviceChange: btDeviceName is null, sending empty string"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const-string v7, ""

    .line 767
    :cond_6
    const/4 v8, 0x0

    .line 768
    .local v8, "result":Z
    if-eqz p2, :cond_7

    .line 769
    iget-object v9, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    aget v10, v5, v6

    invoke-virtual {v9, p2, v10, v1, v7}, Lcom/android/server/audio/AudioDeviceBroker;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v9

    or-int/2addr v8, v9

    goto :goto_3

    .line 772
    :cond_7
    array-length v9, v5

    move v10, v6

    :goto_2
    if-ge v10, v9, :cond_8

    aget v11, v5, v10

    .line 773
    .local v11, "outDeviceType":I
    iget-object v12, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v12, p2, v11, v1, v7}, Lcom/android/server/audio/AudioDeviceBroker;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v12

    or-int/2addr v8, v12

    .line 772
    .end local v11    # "outDeviceType":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 778
    :cond_8
    :goto_3
    iget-object v9, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v9, p2, v4, v1, v7}, Lcom/android/server/audio/AudioDeviceBroker;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    if-eqz v8, :cond_9

    goto :goto_4

    :cond_9
    move v0, v6

    .line 780
    .end local v8    # "result":Z
    .local v0, "result":Z
    :goto_4
    return v0

    :array_0
    .array-data 4
        0x10
        0x20
        0x40
    .end array-data
.end method

.method private isAudioPathUp()Z
    .locals 6

    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 345
    .local v1, "it":Ljava/util/Iterator;
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 346
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_0

    .line 347
    const/4 v0, 0x1

    .line 348
    goto :goto_1

    .line 350
    .end local v3    # "value":Ljava/lang/Integer;
    :cond_0
    goto :goto_0

    .line 351
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAudioPathUp returns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.BtHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return v0
.end method

.method static isTwsPlusSwitch(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 6
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "address"    # Ljava/lang/String;

    .line 226
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 227
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 228
    .local v1, "connDevice":Landroid/bluetooth/BluetoothDevice;
    const/4 v2, 0x0

    if-eqz p0, :cond_3

    if-eqz v1, :cond_3

    .line 229
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getTwsPlusPeerAddress()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isTwsPlusDevice()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 233
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->isTwsPlusDevice()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 234
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getTwsPlusPeerAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 235
    sget-object v3, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/4 v4, 0x2

    const-string v5, "AS.BtHelper"

    if-eq v3, v4, :cond_1

    .line 236
    const-string v3, "Active earbud is already disconnected"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return v2

    .line 239
    :cond_1
    const-string/jumbo v2, "isTwsPlusSwitch true"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v2, 0x1

    return v2

    .line 242
    :cond_2
    return v2

    .line 230
    :cond_3
    :goto_0
    return v2
.end method

.method static synthetic lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/audio/BtHelper$ScoClient;)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "cl"    # Lcom/android/server/audio/BtHelper$ScoClient;

    .line 1267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/audio/BtHelper$ScoClient;->getPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cb: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/audio/BtHelper$ScoClient;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static scoAudioModeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "scoAudioMode"    # I

    .line 123
    const/4 v0, -0x1

    if-eq p0, v0, :cond_3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCO_MODE_("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 131
    :cond_0
    const-string v0, "SCO_MODE_VR"

    return-object v0

    .line 129
    :cond_1
    const-string v0, "SCO_MODE_RAW"

    return-object v0

    .line 127
    :cond_2
    const-string v0, "SCO_MODE_VIRTUAL_CALL"

    return-object v0

    .line 125
    :cond_3
    const-string v0, "SCO_MODE_UNDEFINED"

    return-object v0
.end method

.method public static scoAudioStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "scoAudioState"    # I

    .line 141
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCO_STATE_("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 151
    :cond_0
    const-string v0, "SCO_STATE_DEACTIVATING"

    return-object v0

    .line 149
    :cond_1
    const-string v0, "SCO_STATE_ACTIVE_INTERNAL"

    return-object v0

    .line 147
    :cond_2
    const-string v0, "SCO_STATE_ACTIVE_EXTERNAL"

    return-object v0

    .line 145
    :cond_3
    const-string v0, "SCO_STATE_ACTIVATE_REQ"

    return-object v0

    .line 143
    :cond_4
    const-string v0, "SCO_STATE_INACTIVE"

    return-object v0
.end method

.method private sendStickyBroadcastToAll(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1106
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1107
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1109
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1111
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1112
    nop

    .line 1113
    return-void

    .line 1111
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1112
    throw v2
.end method

.method private setBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 7
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBtScoActiveDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.BtHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 789
    .local v0, "previousActiveDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->isTwsPlusDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 791
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getTwsPlusPeerAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 792
    const-string/jumbo v2, "setBtScoActiveDevice: Active device switch between twsplus devices"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    return-void

    .line 797
    :cond_0
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 798
    return-void

    .line 800
    :cond_1
    const-string v2, "00:00:00:00:00:00"

    .line 801
    .local v2, "DummyAddress":Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 802
    .local v3, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v3, :cond_2

    .line 803
    const-string v4, "adapter is null, returning from setBtScoActiveDevice"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    return-void

    .line 806
    :cond_2
    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 807
    .local v4, "dummyActiveDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v5, :cond_3

    if-eqz p1, :cond_3

    .line 810
    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/audio/BtHelper;->handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v5

    if-nez v5, :cond_3

    .line 811
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBtScoActiveDevice() failed to add new device "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const/4 p1, 0x0

    .line 816
    :cond_3
    iget-object v5, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v5, :cond_4

    if-nez p1, :cond_4

    .line 819
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/server/audio/BtHelper;->handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v5

    if-nez v5, :cond_4

    .line 820
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBtScoActiveDevice() failed to remove previous device "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_4
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 825
    if-nez p1, :cond_5

    .line 826
    const-string v5, "In setBtScoActiveDevice(), calling resetBluetoothSco()"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->resetBluetoothSco()V

    .line 829
    :cond_5
    return-void
.end method

.method private updateTwsPlusScoState(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # Ljava/lang/Integer;

    .line 330
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 332
    .local v0, "prevState":Ljava/lang/Integer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTwsPlusScoState: prevState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.BtHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    if-eq p2, v0, :cond_0

    .line 334
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .end local v0    # "prevState":Ljava/lang/Integer;
    :cond_0
    goto :goto_0

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    :goto_0
    return-void
.end method


# virtual methods
.method declared-synchronized disconnectAllBluetoothProfiles()V
    .locals 1

    monitor-enter p0

    .line 621
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->postDisconnectA2dp()V

    .line 622
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->postDisconnectA2dpSink()V

    .line 623
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->postDisconnectHeadset()V

    .line 624
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->postDisconnectHearingAid()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    monitor-exit p0

    return-void

    .line 620
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized disconnectBluetoothSco(I)V
    .locals 3
    .param p1, "exceptPid"    # I

    monitor-enter p0

    .line 533
    :try_start_0
    const-string v0, "AS.BtHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In disconnectBluetoothSco(), exceptPid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-direct {p0}, Lcom/android/server/audio/BtHelper;->checkScoAudioState()V

    .line 536
    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 537
    monitor-exit p0

    return-void

    .line 539
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/BtHelper;->clearAllScoClients(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 540
    monitor-exit p0

    return-void

    .line 532
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    .end local p1    # "exceptPid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized disconnectHeadset()V
    .locals 1

    monitor-enter p0

    .line 643
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/audio/BtHelper;->setBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 644
    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    monitor-exit p0

    return-void

    .line 642
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mBluetoothHeadset: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mBluetoothHeadsetDevice: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mScoAudioState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->scoAudioStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mScoAudioMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->scoAudioModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Sco clients:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1266
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mScoClients:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/audio/-$$Lambda$BtHelper$fwiXt4KEc-qkQ-STMxaJwMNGOl0;

    invoke-direct {v2, p1, p2}, Lcom/android/server/audio/-$$Lambda$BtHelper$fwiXt4KEc-qkQ-STMxaJwMNGOl0;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 1269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mHearingAid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mA2dp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mAvrcpAbsVolSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1272
    return-void
.end method

.method declared-synchronized getA2dpCodec(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    monitor-enter p0

    .line 311
    :try_start_0
    sget-object v0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 312
    monitor-exit p0

    return v1

    .line 314
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    .local v0, "btCodecStatus":Landroid/bluetooth/BluetoothCodecStatus;
    if-nez v0, :cond_1

    .line 316
    monitor-exit p0

    return v1

    .line 318
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 319
    .local v2, "btCodecConfig":Landroid/bluetooth/BluetoothCodecConfig;
    if-nez v2, :cond_2

    .line 320
    monitor-exit p0

    return v1

    .line 322
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->bluetoothCodecToAudioFormat(I)I

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v1

    .line 310
    .end local v0    # "btCodecStatus":Landroid/bluetooth/BluetoothCodecStatus;
    .end local v2    # "btCodecConfig":Landroid/bluetooth/BluetoothCodecConfig;
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized isAvrcpAbsoluteVolumeSupported()Z
    .locals 1

    monitor-enter p0

    .line 280
    :try_start_0
    sget-object v0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isBluetoothAudioNotConnectedToEarbud()Z
    .locals 8

    .line 487
    const/4 v0, 0x1

    .line 489
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v2, "AS.BtHelper"

    if-eqz v1, :cond_1

    .line 490
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->isTwsPlusDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 493
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getTwsPlusPeerAddress()Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, "pDevAddr":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 495
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 496
    .local v3, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 497
    .local v4, "peerDev":Landroid/bluetooth/BluetoothDevice;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "peer device audio State: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v6, v4}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v5, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v5, v4}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    const/16 v6, 0xc

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v7, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 500
    invoke-virtual {v5, v7}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 502
    :cond_0
    const-string v5, "TwsPLus Case: one of eb SCO is connected"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/4 v0, 0x0

    .line 507
    .end local v1    # "pDevAddr":Ljava/lang/String;
    .end local v3    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v4    # "peerDev":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isBluetoothAudioConnectedToEarbud returns: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    return v0
.end method

.method declared-synchronized isBluetoothScoOn()Z
    .locals 3

    monitor-enter p0

    .line 516
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 517
    monitor-exit p0

    return v1

    .line 519
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit p0

    return v1

    .line 515
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onA2dpProfileConnected(Landroid/bluetooth/BluetoothA2dp;)V
    .locals 8
    .param p1, "a2dp"    # Landroid/bluetooth/BluetoothA2dp;

    monitor-enter p0

    .line 648
    :try_start_0
    sput-object p1, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 649
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 650
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 651
    monitor-exit p0

    return-void

    .line 653
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 655
    .local v3, "btDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v4, 0x2

    const/16 v5, 0xb

    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 657
    monitor-exit p0

    return-void

    .line 647
    .end local v0    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v3    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    .end local p1    # "a2dp":Landroid/bluetooth/BluetoothA2dp;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onA2dpSinkProfileConnected(Landroid/bluetooth/BluetoothProfile;)V
    .locals 5
    .param p1, "profile"    # Landroid/bluetooth/BluetoothProfile;

    monitor-enter p0

    .line 660
    :try_start_0
    invoke-interface {p1}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 661
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 662
    monitor-exit p0

    return-void

    .line 664
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 665
    .local v1, "btDevice":Landroid/bluetooth/BluetoothDevice;
    nop

    .line 666
    invoke-interface {p1, v1}, Landroid/bluetooth/BluetoothProfile;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 667
    .local v2, "state":I
    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v4, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    invoke-direct {v4, v1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v3, v2, v4}, Lcom/android/server/audio/AudioDeviceBroker;->postSetA2dpSourceConnectionState(ILcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 669
    monitor-exit p0

    return-void

    .line 659
    .end local v0    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v1    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "state":I
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    .end local p1    # "profile":Landroid/bluetooth/BluetoothProfile;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onAudioServerDiedRestoreA2dp()V
    .locals 4

    monitor-enter p0

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->getBluetoothA2dpEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 276
    .local v0, "forMed":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v2, 0x1

    const-string/jumbo v3, "onAudioServerDied()"

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    monitor-exit p0

    return-void

    .line 273
    .end local v0    # "forMed":I
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onBroadcastScoConnectionState(I)V
    .locals 3
    .param p1, "state"    # I

    monitor-enter p0

    .line 609
    :try_start_0
    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    .line 610
    monitor-exit p0

    return-void

    .line 612
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 613
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 614
    const-string v1, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 616
    invoke-direct {p0, v0}, Lcom/android/server/audio/BtHelper;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 617
    iput p1, p0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 618
    monitor-exit p0

    return-void

    .line 608
    .end local v0    # "newIntent":Landroid/content/Intent;
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    .end local p1    # "state":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onHeadsetProfileConnected(Landroid/bluetooth/BluetoothHeadset;)V
    .locals 4
    .param p1, "headset"    # Landroid/bluetooth/BluetoothHeadset;

    monitor-enter p0

    .line 691
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->handleCancelFailureToConnectToBtHeadsetService()V

    .line 692
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 693
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadset;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/audio/BtHelper;->setBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 695
    invoke-direct {p0}, Lcom/android/server/audio/BtHelper;->checkScoAudioState()V

    .line 696
    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    .line 698
    monitor-exit p0

    return-void

    .line 700
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :cond_0
    const/4 v0, 0x0

    .line 701
    .local v0, "status":Z
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_3

    .line 702
    iget v3, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq v3, v2, :cond_2

    if-eq v3, v1, :cond_1

    goto :goto_0

    .line 712
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    iget v3, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-static {v1, v2, v3}, Lcom/android/server/audio/BtHelper;->disconnectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    move v0, v1

    .line 715
    if-eqz v0, :cond_3

    .line 716
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto :goto_0

    .line 704
    :cond_2
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    iget v3, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-static {v1, v2, v3}, Lcom/android/server/audio/BtHelper;->connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    move v0, v1

    .line 707
    if-eqz v0, :cond_3

    .line 708
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 721
    :cond_3
    :goto_0
    if-nez v0, :cond_4

    .line 722
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 723
    invoke-direct {p0, v1}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 725
    :cond_4
    monitor-exit p0

    return-void

    .line 690
    .end local v0    # "status":Z
    .end local p1    # "headset":Landroid/bluetooth/BluetoothHeadset;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onHearingAidProfileConnected(Landroid/bluetooth/BluetoothHearingAid;)V
    .locals 8
    .param p1, "hearingAid"    # Landroid/bluetooth/BluetoothHearingAid;

    monitor-enter p0

    .line 672
    :try_start_0
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    .line 673
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHearingAid;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 674
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 675
    monitor-exit p0

    return-void

    .line 677
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 678
    .local v1, "btDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    .line 679
    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothHearingAid;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 680
    .local v4, "state":I
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "mBluetoothProfileServiceListener"

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 685
    monitor-exit p0

    return-void

    .line 671
    .end local v0    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v1    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "state":I
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    .end local p1    # "hearingAid":Landroid/bluetooth/BluetoothHearingAid;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onSystemReady()V
    .locals 5

    monitor-enter p0

    .line 250
    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I

    .line 252
    const-string v0, "AS.BtHelper"

    const-string v1, "In onSystemReady(), calling resetBluetoothSco()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->resetBluetoothSco()V

    .line 255
    invoke-direct {p0}, Lcom/android/server/audio/BtHelper;->getBluetoothHeadset()Z

    .line 259
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    invoke-direct {p0, v0}, Lcom/android/server/audio/BtHelper;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 264
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 265
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_0

    .line 266
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 268
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v4, 0x15

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :cond_0
    monitor-exit p0

    return-void

    .line 249
    .end local v0    # "newIntent":Landroid/content/Intent;
    .end local v1    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized receiveBtEvent(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    monitor-enter p0

    .line 397
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 400
    .local v1, "btDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v1}, Lcom/android/server/audio/BtHelper;->setBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 401
    .end local v1    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    goto/16 :goto_1

    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :cond_0
    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 402
    const/4 v1, 0x0

    .line 403
    .local v1, "broadcast":Z
    const/4 v2, -0x1

    .line 404
    .local v2, "scoAudioState":I
    const-string v3, "android.bluetooth.profile.extra.STATE"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 406
    .local v3, "btState":I
    iget-object v4, p0, Lcom/android/server/audio/BtHelper;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq v4, v8, :cond_1

    iget v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq v4, v6, :cond_1

    iget v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq v4, v7, :cond_1

    iget v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-ne v4, v5, :cond_2

    .line 411
    :cond_1
    const/4 v1, 0x1

    .line 413
    :cond_2
    const/4 v4, 0x2

    packed-switch v3, :pswitch_data_0

    .line 470
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 415
    :pswitch_0
    const/16 v5, 0xc

    .line 416
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 415
    invoke-direct {p0, p1, v5}, Lcom/android/server/audio/BtHelper;->checkAndUpdatTwsPlusScoState(Landroid/content/Intent;Ljava/lang/Integer;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 417
    const/4 v2, 0x1

    .line 418
    iget v5, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq v5, v8, :cond_3

    iget v5, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq v5, v7, :cond_3

    .line 420
    iput v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 422
    :cond_3
    iget-object v5, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string v9, "BtHelper.receiveBtEvent"

    invoke-virtual {v5, v6, v9}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(ZLjava/lang/String;)V

    .line 423
    const-string v5, "AS.BtHelper"

    const-string v6, "Audio-path brought-up"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_4
    const/4 v2, 0x1

    .line 426
    iget v5, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq v5, v8, :cond_9

    iget v5, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq v5, v7, :cond_9

    .line 428
    iput v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto :goto_0

    .line 462
    :pswitch_1
    iget v5, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq v5, v8, :cond_5

    iget v5, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq v5, v7, :cond_5

    .line 464
    iput v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 466
    :cond_5
    const/4 v1, 0x0

    .line 467
    goto :goto_0

    .line 432
    :pswitch_2
    const/16 v7, 0xa

    .line 433
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 432
    invoke-direct {p0, p1, v7}, Lcom/android/server/audio/BtHelper;->checkAndUpdatTwsPlusScoState(Landroid/content/Intent;Ljava/lang/Integer;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 434
    iget-object v7, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string v9, "BtHelper.receiveBtEvent"

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v9}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(ZLjava/lang/String;)V

    .line 435
    const/4 v2, 0x0

    .line 442
    iget v7, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq v7, v6, :cond_6

    iget v6, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-ne v6, v4, :cond_7

    iget-object v4, p0, Lcom/android/server/audio/BtHelper;->mScoClients:Ljava/util/ArrayList;

    .line 444
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 445
    :cond_6
    iget-object v4, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v6, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    iget v7, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    .line 446
    invoke-static {v4, v6, v7}, Lcom/android/server/audio/BtHelper;->connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 448
    iput v8, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 449
    const/4 v1, 0x0

    .line 450
    goto :goto_0

    .line 454
    :cond_7
    iget v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-ne v4, v5, :cond_8

    .line 455
    invoke-direct {p0, v10, v10}, Lcom/android/server/audio/BtHelper;->clearAllScoClients(IZ)V

    .line 457
    :cond_8
    iput v10, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 458
    const-string v4, "AS.BtHelper"

    const-string v5, "Audio-path brought-down"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_9
    :goto_0
    if-eqz v1, :cond_a

    .line 474
    invoke-direct {p0, v2}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 477
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 478
    .local v4, "newIntent":Landroid/content/Intent;
    const-string v5, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 479
    invoke-direct {p0, v4}, Lcom/android/server/audio/BtHelper;->sendStickyBroadcastToAll(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    .end local v1    # "broadcast":Z
    .end local v2    # "scoAudioState":I
    .end local v3    # "btState":I
    .end local v4    # "newIntent":Landroid/content/Intent;
    :cond_a
    :goto_1
    monitor-exit p0

    return-void

    .line 396
    .end local v0    # "action":Ljava/lang/String;
    .end local p1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method declared-synchronized resetBluetoothSco()V
    .locals 3

    monitor-enter p0

    .line 631
    :try_start_0
    const-string v0, "AS.BtHelper"

    const-string v1, "In resetBluetoothSco(), calling clearAllScoClients()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/server/audio/BtHelper;->clearAllScoClients(IZ)V

    .line 634
    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 635
    invoke-direct {p0, v0}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 636
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 637
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v2, "resetBluetoothSco"

    invoke-virtual {v1, v0, v2}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    monitor-exit p0

    return-void

    .line 630
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized scoClientDied(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    monitor-enter p0

    .line 898
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/server/audio/BtHelper$ScoClient;

    .line 899
    .local v0, "client":Lcom/android/server/audio/BtHelper$ScoClient;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/BtHelper$ScoClient;->remove(ZZ)V

    .line 900
    const-string v1, "AS.BtHelper"

    const-string v2, "SCO client died"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    monitor-exit p0

    return-void

    .line 897
    .end local v0    # "client":Lcom/android/server/audio/BtHelper$ScoClient;
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    .end local p1    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized sendHfpReconnectBroadcast(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 907
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_0

    goto :goto_0

    .line 910
    :cond_0
    const-string v0, "NEED_SEND_HFP_RECONNECT_BROADCAST"

    .line 911
    .local v0, "command":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v3, "NEED_SEND_HFP_RECONNECT_BROADCAST"

    invoke-virtual {v1, v2, v3, p1}, Landroid/bluetooth/BluetoothHeadset;->sendVendorSpecificResultCode(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 912
    monitor-exit p0

    return-void

    .line 908
    .end local v0    # "command":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 906
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setAvrcpAbsoluteVolumeIndex(I)V
    .locals 3
    .param p1, "index"    # I

    monitor-enter p0

    .line 289
    :try_start_0
    sget-object v0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    .line 291
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string/jumbo v2, "setAvrcpAbsoluteVolumeIndex: bailing due to null mA2dp"

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "AS.BtHelper"

    .line 292
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    .line 291
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit p0

    return-void

    .line 296
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    if-nez v0, :cond_1

    .line 297
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string/jumbo v2, "setAvrcpAbsoluteVolumeIndex: abs vol not supported "

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "AS.BtHelper"

    .line 298
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    .line 297
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    monitor-exit p0

    return-void

    .line 302
    :cond_1
    :try_start_2
    const-string v0, "AS.BtHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAvrcpAbsoluteVolumeIndex index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p1}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 306
    sget-object v0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->setAvrcpAbsoluteVolume(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    .line 288
    .end local p1    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setAvrcpAbsoluteVolumeSupported(Z)V
    .locals 3
    .param p1, "supported"    # Z

    monitor-enter p0

    .line 284
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    .line 285
    const-string v0, "AS.BtHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAvrcpAbsoluteVolumeSupported supported="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    monitor-exit p0

    return-void

    .line 283
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    .end local p1    # "supported":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setHearingAidVolume(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "streamType"    # I

    monitor-enter p0

    .line 587
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    if-nez v0, :cond_0

    .line 589
    const-string v0, "AS.BtHelper"

    const-string/jumbo v1, "setHearingAidVolume: null mHearingAid"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    monitor-exit p0

    return-void

    .line 594
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :cond_0
    :try_start_1
    div-int/lit8 v0, p1, 0xa

    const/high16 v1, 0x8000000

    invoke-static {p2, v0, v1}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    move-result v0

    float-to-int v0, v0

    .line 596
    .local v0, "gainDB":I
    const/16 v1, -0x80

    if-ge v0, v1, :cond_1

    .line 597
    const/16 v0, -0x80

    .line 600
    :cond_1
    const-string v1, "AS.BtHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setHearingAidVolume: calling mHearingAid.setVolume idx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " gain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p1, v0}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(III)V

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 605
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHearingAid;->setVolume(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 606
    monitor-exit p0

    return-void

    .line 586
    .end local v0    # "gainDB":I
    .end local p1    # "index":I
    .end local p2    # "streamType":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized startBluetoothScoForClient(Landroid/os/IBinder;ILjava/lang/String;)V
    .locals 6
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "scoAudioMode"    # I
    .param p3, "eventSource"    # Ljava/lang/String;

    monitor-enter p0

    .line 546
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/BtHelper;->getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/BtHelper$ScoClient;

    move-result-object v0

    .line 552
    .local v0, "client":Lcom/android/server/audio/BtHelper$ScoClient;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    .local v1, "ident":J
    :try_start_1
    sget-object v3, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v4, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    invoke-direct {v4, p3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 555
    const/16 v3, 0xc

    invoke-static {v0, v3, p2}, Lcom/android/server/audio/BtHelper$ScoClient;->access$000(Lcom/android/server/audio/BtHelper$ScoClient;II)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 558
    goto :goto_0

    .line 556
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :catch_0
    move-exception v3

    .line 557
    .local v3, "e":Ljava/lang/NullPointerException;
    :try_start_2
    const-string v4, "AS.BtHelper"

    const-string v5, "Null ScoClient"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 559
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 560
    monitor-exit p0

    return-void

    .line 545
    .end local v0    # "client":Lcom/android/server/audio/BtHelper$ScoClient;
    .end local v1    # "ident":J
    .end local p1    # "cb":Landroid/os/IBinder;
    .end local p2    # "scoAudioMode":I
    .end local p3    # "eventSource":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized stopBluetoothScoForClient(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 6
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "eventSource"    # Ljava/lang/String;

    monitor-enter p0

    .line 566
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/BtHelper;->getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/BtHelper$ScoClient;

    move-result-object v1

    .line 570
    .local v1, "client":Lcom/android/server/audio/BtHelper$ScoClient;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 571
    .local v2, "ident":J
    if-eqz v1, :cond_0

    .line 572
    sget-object v4, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v5, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    invoke-direct {v5, p2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 573
    const/16 v4, 0xa

    invoke-static {v1, v4, v0}, Lcom/android/server/audio/BtHelper$ScoClient;->access$000(Lcom/android/server/audio/BtHelper$ScoClient;II)Z

    .line 577
    iget v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    .line 579
    const/4 v4, 0x1

    invoke-virtual {v1, v0, v4}, Lcom/android/server/audio/BtHelper$ScoClient;->remove(ZZ)V

    .line 582
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    monitor-exit p0

    return-void

    .line 565
    .end local v1    # "client":Lcom/android/server/audio/BtHelper$ScoClient;
    .end local v2    # "ident":J
    .end local p1    # "cb":Landroid/os/IBinder;
    .end local p2    # "eventSource":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
