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


# instance fields
.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

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

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mScoClients:Ljava/util/ArrayList;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    .line 263
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mScoClientDevices:Ljava/util/HashMap;

    .line 756
    new-instance v0, Lcom/android/server/audio/BtHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/audio/BtHelper$1;-><init>(Lcom/android/server/audio/BtHelper;)V

    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 59
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 60
    return-void
.end method

.method static a2dpDeviceEventToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "event"    # I

    .line 151
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 153
    :cond_0
    const-string v0, "ACTIVE_DEVICE_CHANGE"

    return-object v0

    .line 152
    :cond_1
    const-string v0, "DEVICE_CONFIG_CHANGE"

    return-object v0
.end method

.method static synthetic access$000(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/BtHelper;

    .line 52
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/audio/BtHelper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/BtHelper;

    .line 52
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mScoClients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHeadset;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .line 52
    invoke-static {p0, p1, p2}, Lcom/android/server/audio/BtHelper;->disconnectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/audio/BtHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/BtHelper;

    .line 52
    invoke-direct {p0}, Lcom/android/server/audio/BtHelper;->checkScoAudioState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/audio/BtHelper;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/BtHelper;
    .param p1, "x1"    # I

    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/audio/BtHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/BtHelper;

    .line 52
    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/audio/BtHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/BtHelper;
    .param p1, "x1"    # I

    .line 52
    iput p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/audio/BtHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/BtHelper;

    .line 52
    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/audio/BtHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/BtHelper;
    .param p1, "x1"    # I

    .line 52
    iput p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/BtHelper;

    .line 52
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/BtHelper;

    .line 52
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/audio/BtHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/BtHelper;

    .line 52
    invoke-direct {p0}, Lcom/android/server/audio/BtHelper;->getBluetoothHeadset()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHeadset;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .line 52
    invoke-static {p0, p1, p2}, Lcom/android/server/audio/BtHelper;->connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    return v0
.end method

.method private broadcastScoConnectionState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 654
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postBroadcastScoConnectionState(I)V

    .line 655
    return-void
.end method

.method private checkAndUpdatTwsPlusScoState(Landroid/content/Intent;Ljava/lang/Integer;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "state"    # Ljava/lang/Integer;

    .line 295
    const/4 v0, 0x1

    .line 296
    .local v0, "ret":Z
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 297
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

    .line 299
    if-nez v1, :cond_0

    .line 300
    const-string v2, "checkAndUpdatTwsPlusScoState: device is null"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return v0

    .line 306
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->isTwsPlusDevice()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 307
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0xc

    if-ne v2, v4, :cond_2

    .line 310
    invoke-direct {p0}, Lcom/android/server/audio/BtHelper;->isAudioPathUp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 311
    const-string v2, "No need to bringup audio-path"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v0, 0x0

    .line 315
    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/android/server/audio/BtHelper;->updateTwsPlusScoState(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;)V

    goto :goto_0

    .line 318
    :cond_2
    invoke-direct {p0, v1, p2}, Lcom/android/server/audio/BtHelper;->updateTwsPlusScoState(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;)V

    .line 321
    invoke-direct {p0}, Lcom/android/server/audio/BtHelper;->isAudioPathUp()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 322
    const-string/jumbo v2, "not good to tear down audio-path"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v0, 0x0

    .line 327
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

    .line 328
    return v0
.end method

.method private checkScoAudioState()V
    .locals 3

    .line 1170
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-nez v2, :cond_0

    .line 1173
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 1175
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 1178
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

    .line 1180
    return-void
.end method

.method private clearAllScoClients(IZ)V
    .locals 4
    .param p1, "exceptPid"    # I
    .param p2, "stopSco"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "BtHelper.this"
        }
    .end annotation

    .line 1201
    const/4 v0, 0x0

    .line 1202
    .local v0, "savedClient":Lcom/android/server/audio/BtHelper$ScoClient;
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

    .line 1203
    .local v2, "cl":Lcom/android/server/audio/BtHelper$ScoClient;
    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper$ScoClient;->getPid()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 1204
    invoke-virtual {v2, p2}, Lcom/android/server/audio/BtHelper$ScoClient;->clearCount(Z)V

    goto :goto_1

    .line 1206
    :cond_0
    move-object v0, v2

    .line 1208
    .end local v2    # "cl":Lcom/android/server/audio/BtHelper$ScoClient;
    :goto_1
    goto :goto_0

    .line 1209
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1210
    if-eqz v0, :cond_2

    .line 1211
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1213
    :cond_2
    return-void
.end method

.method private static connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .param p0, "bluetoothHeadset"    # Landroid/bluetooth/BluetoothHeadset;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "scoAudioMode"    # I

    .line 1143
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

    .line 1146
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 1165
    const/4 v0, 0x0

    return v0

    .line 1160
    :cond_0
    const-string v0, "In connectBluetoothScoAudioHelper(), calling startVoiceRecognition()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0

    .line 1149
    :cond_1
    const-string v0, "In connectBluetoothScoAudioHelper(), calling connectAudio()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->connectAudio()Z

    move-result v0

    return v0

    .line 1154
    :cond_2
    const-string v0, "In connectBluetoothScoAudioHelper(), calling startScoUsingVirtualVoiceCall()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall()Z

    move-result v0

    return v0
.end method

.method private static disconnectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .param p0, "bluetoothHeadset"    # Landroid/bluetooth/BluetoothHeadset;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "scoAudioMode"    # I

    .line 1113
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

    .line 1116
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 1136
    const/4 v0, 0x0

    return v0

    .line 1131
    :cond_0
    const-string v0, "In disconnectBluetoothScoAudioHelper(), calling stopVoiceRecognition()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0

    .line 1119
    :cond_1
    const-string v0, "In disconnectBluetoothScoAudioHelper(), calling disconnectAudio()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    move-result v0

    return v0

    .line 1125
    :cond_2
    const-string v0, "In disconnectBluetoothScoAudioHelper(), calling stopScoUsingVirtualVoiceCall()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall()Z

    move-result v0

    return v0
.end method

.method private getBluetoothHeadset()Z
    .locals 5

    .line 1216
    const/4 v0, 0x0

    .line 1217
    .local v0, "result":Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 1218
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_0

    .line 1219
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v0

    .line 1226
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1227
    if-eqz v0, :cond_1

    const/16 v3, 0xbb8

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 1226
    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioDeviceBroker;->handleFailureToConnectToBtHeadsetService(I)V

    .line 1228
    return v0
.end method

.method static getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 2
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 160
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "deviceName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 162
    const-string v1, ""

    return-object v1

    .line 164
    :cond_0
    return-object v0
.end method

.method private getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/BtHelper$ScoClient;
    .locals 3
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "create"    # Z

    .line 1184
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

    .line 1185
    .local v1, "existingClient":Lcom/android/server/audio/BtHelper$ScoClient;
    invoke-virtual {v1}, Lcom/android/server/audio/BtHelper$ScoClient;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 1186
    return-object v1

    .line 1188
    .end local v1    # "existingClient":Lcom/android/server/audio/BtHelper$ScoClient;
    :cond_0
    goto :goto_0

    .line 1189
    :cond_1
    if-eqz p2, :cond_2

    .line 1190
    new-instance v0, Lcom/android/server/audio/BtHelper$ScoClient;

    invoke-direct {v0, p0, p1}, Lcom/android/server/audio/BtHelper$ScoClient;-><init>(Lcom/android/server/audio/BtHelper;Landroid/os/IBinder;)V

    .line 1191
    .local v0, "newClient":Lcom/android/server/audio/BtHelper$ScoClient;
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1192
    return-object v0

    .line 1194
    .end local v0    # "newClient":Lcom/android/server/audio/BtHelper$ScoClient;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 12
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "isActive"    # Z

    .line 658
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 659
    return v0

    .line 661
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 662
    .local v1, "address":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    .line 663
    .local v2, "btClass":Landroid/bluetooth/BluetoothClass;
    const v3, -0x7ffffff8

    .line 664
    .local v3, "inDevice":I
    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    .line 669
    .local v4, "outDeviceTypes":[I
    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 670
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v6

    const/16 v7, 0x404

    if-eq v6, v7, :cond_2

    const/16 v7, 0x408

    if-eq v6, v7, :cond_2

    const/16 v7, 0x420

    if-eq v6, v7, :cond_1

    goto :goto_0

    .line 676
    :cond_1
    new-array v6, v0, [I

    const/16 v7, 0x40

    aput v7, v6, v5

    move-object v4, v6

    goto :goto_0

    .line 673
    :cond_2
    new-array v6, v0, [I

    const/16 v7, 0x20

    aput v7, v6, v5

    move-object v4, v6

    .line 680
    :cond_3
    :goto_0
    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 681
    const-string v1, ""

    .line 683
    :cond_4
    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v6

    .line 684
    .local v6, "btDeviceName":Ljava/lang/String;
    if-nez v6, :cond_5

    .line 685
    const-string v7, "AS.BtHelper"

    const-string v8, "handleBtScoActiveDeviceChange: btDeviceName is null, sending empty string"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const-string v6, ""

    .line 690
    :cond_5
    const/4 v7, 0x0

    .line 691
    .local v7, "result":Z
    if-eqz p2, :cond_6

    .line 692
    iget-object v8, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    aget v9, v4, v5

    invoke-virtual {v8, p2, v9, v1, v6}, Lcom/android/server/audio/AudioDeviceBroker;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v7, v8

    goto :goto_2

    .line 695
    :cond_6
    array-length v8, v4

    move v9, v7

    move v7, v5

    .end local v7    # "result":Z
    .local v9, "result":Z
    :goto_1
    if-ge v7, v8, :cond_7

    aget v10, v4, v7

    .line 696
    .local v10, "outDeviceType":I
    iget-object v11, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v11, p2, v10, v1, v6}, Lcom/android/server/audio/AudioDeviceBroker;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v11

    or-int/2addr v9, v11

    .line 695
    .end local v10    # "outDeviceType":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    move v7, v9

    .line 701
    .end local v9    # "result":Z
    .restart local v7    # "result":Z
    :goto_2
    iget-object v8, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v8, p2, v3, v1, v6}, Lcom/android/server/audio/AudioDeviceBroker;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    if-eqz v7, :cond_8

    goto :goto_3

    :cond_8
    move v0, v5

    .line 703
    .end local v7    # "result":Z
    .local v0, "result":Z
    :goto_3
    return v0

    nop

    :array_0
    .array-data 4
        0x10
        0x20
        0x40
    .end array-data
.end method

.method private isAudioPathUp()Z
    .locals 6

    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 282
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

    .line 283
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_0

    .line 284
    const/4 v0, 0x1

    .line 285
    goto :goto_1

    .line 287
    .end local v3    # "value":Ljava/lang/Integer;
    :cond_0
    goto :goto_0

    .line 288
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAudioPathUp returns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.BtHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return v0
.end method

.method static isTwsPlusSwitch(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 3
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "address"    # Ljava/lang/String;

    .line 169
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 170
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    const/4 v1, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 171
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getTwsPlusPeerAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isTwsPlusDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->isTwsPlusDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getTwsPlusPeerAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    const-string v1, "AS.BtHelper"

    const-string/jumbo v2, "isTwsPlusSwitch true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v1, 0x1

    return v1

    .line 180
    :cond_1
    return v1

    .line 172
    :cond_2
    :goto_0
    return v1
.end method

.method private mapBluetoothCodecToAudioFormat(I)I
    .locals 1
    .param p1, "btCodecType"    # I

    .line 1232
    packed-switch p1, :pswitch_data_0

    .line 1250
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1244
    :pswitch_1
    const/high16 v0, 0x26000000

    return v0

    .line 1248
    :pswitch_2
    const/high16 v0, 0x2a000000

    return v0

    .line 1242
    :pswitch_3
    const/high16 v0, 0x23000000

    return v0

    .line 1246
    :pswitch_4
    const/high16 v0, 0x27000000

    return v0

    .line 1240
    :pswitch_5
    const/high16 v0, 0x21000000

    return v0

    .line 1238
    :pswitch_6
    const/high16 v0, 0x20000000

    return v0

    .line 1236
    :pswitch_7
    const/high16 v0, 0x4000000

    return v0

    .line 1234
    :pswitch_8
    const/high16 v0, 0x1f000000

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private sendStickyBroadcastToAll(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1101
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1102
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1104
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1106
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1107
    nop

    .line 1108
    return-void

    .line 1106
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 7
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "BtHelper.this"
        }
    .end annotation

    .line 710
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

    .line 711
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 712
    .local v0, "previousActiveDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->isTwsPlusDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 714
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getTwsPlusPeerAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 715
    const-string/jumbo v2, "setBtScoActiveDevice: Active device switch between twsplus devices"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    return-void

    .line 720
    :cond_0
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 721
    return-void

    .line 723
    :cond_1
    const-string v2, "00:00:00:00:00:00"

    .line 724
    .local v2, "DummyAddress":Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 725
    .local v3, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v3, :cond_2

    .line 726
    const-string v4, "adapter is null, returning from setBtScoActiveDevice"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    return-void

    .line 729
    :cond_2
    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 730
    .local v4, "dummyActiveDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v5, :cond_3

    if-eqz p1, :cond_3

    .line 733
    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/audio/BtHelper;->handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v5

    if-nez v5, :cond_3

    .line 734
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBtScoActiveDevice() failed to add new device "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const/4 p1, 0x0

    .line 739
    :cond_3
    iget-object v5, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v5, :cond_4

    if-nez p1, :cond_4

    .line 742
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/server/audio/BtHelper;->handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v5

    if-nez v5, :cond_4

    .line 743
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBtScoActiveDevice() failed to remove previous device "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_4
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 748
    iget-object v5, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v5, :cond_5

    .line 749
    const-string v5, "In setBtScoActiveDevice(), calling resetBluetoothSco()"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->resetBluetoothSco()V

    .line 752
    :cond_5
    return-void
.end method

.method private updateTwsPlusScoState(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # Ljava/lang/Integer;

    .line 267
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 269
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

    .line 270
    if-eq p2, v0, :cond_0

    .line 271
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .end local v0    # "prevState":Ljava/lang/Integer;
    :cond_0
    goto :goto_0

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :goto_0
    return-void
.end method


# virtual methods
.method declared-synchronized disconnectAllBluetoothProfiles()V
    .locals 1

    monitor-enter p0

    .line 545
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->postDisconnectA2dp()V

    .line 546
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->postDisconnectA2dpSink()V

    .line 547
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->postDisconnectHeadset()V

    .line 548
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->postDisconnectHearingAid()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    monitor-exit p0

    return-void

    .line 544
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized disconnectBluetoothSco(I)V
    .locals 3
    .param p1, "exceptPid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    monitor-enter p0

    .line 462
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

    .line 464
    invoke-direct {p0}, Lcom/android/server/audio/BtHelper;->checkScoAudioState()V

    .line 465
    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 466
    monitor-exit p0

    return-void

    .line 468
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/BtHelper;->clearAllScoClients(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    monitor-exit p0

    return-void

    .line 461
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    .end local p1    # "exceptPid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized disconnectHeadset()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    monitor-enter p0

    .line 568
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/audio/BtHelper;->setBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 569
    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    monitor-exit p0

    return-void

    .line 567
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getA2dpCodec(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    monitor-enter p0

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 249
    monitor-exit p0

    return v1

    .line 251
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    .local v0, "btCodecStatus":Landroid/bluetooth/BluetoothCodecStatus;
    if-nez v0, :cond_1

    .line 253
    monitor-exit p0

    return v1

    .line 255
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    .local v2, "btCodecConfig":Landroid/bluetooth/BluetoothCodecConfig;
    if-nez v2, :cond_2

    .line 257
    monitor-exit p0

    return v1

    .line 259
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/audio/BtHelper;->mapBluetoothCodecToAudioFormat(I)I

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v1

    .line 247
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

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

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

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isBluetoothAudioNotConnectedToEarbud()Z
    .locals 8

    .line 413
    const/4 v0, 0x1

    .line 415
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v2, "AS.BtHelper"

    if-eqz v1, :cond_1

    .line 416
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->isTwsPlusDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 419
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getTwsPlusPeerAddress()Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, "pDevAddr":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 421
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 422
    .local v3, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 423
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

    .line 424
    iget-object v5, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v5, v4}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    const/16 v6, 0xc

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v7, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 426
    invoke-virtual {v5, v7}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 428
    :cond_0
    const-string v5, "TwsPLus Case: one of eb SCO is connected"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v0, 0x0

    .line 433
    .end local v1    # "pDevAddr":Ljava/lang/String;
    .end local v3    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v4    # "peerDev":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBluetoothAudioConnectedToEarbud returns: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return v0
.end method

.method declared-synchronized isBluetoothScoOn()Z
    .locals 3

    monitor-enter p0

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 443
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 445
    const-string v0, "AS.BtHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBluetoothScoOn(true) returning false because "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not in audio connected mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 449
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onA2dpProfileConnected(Landroid/bluetooth/BluetoothA2dp;)V
    .locals 5
    .param p1, "a2dp"    # Landroid/bluetooth/BluetoothA2dp;

    monitor-enter p0

    .line 573
    :try_start_0
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 574
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 575
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 576
    monitor-exit p0

    return-void

    .line 578
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 579
    .local v1, "btDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 580
    .local v2, "state":I
    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v4, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    invoke-direct {v4, v1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v3, v2, v4}, Lcom/android/server/audio/AudioDeviceBroker;->handleSetA2dpSinkConnectionState(ILcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 582
    monitor-exit p0

    return-void

    .line 572
    .end local v0    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v1    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "state":I
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

    .line 585
    :try_start_0
    invoke-interface {p1}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 586
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 587
    monitor-exit p0

    return-void

    .line 589
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 590
    .local v1, "btDevice":Landroid/bluetooth/BluetoothDevice;
    nop

    .line 591
    invoke-interface {p1, v1}, Landroid/bluetooth/BluetoothProfile;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 592
    .local v2, "state":I
    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v4, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    invoke-direct {v4, v1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v3, v2, v4}, Lcom/android/server/audio/AudioDeviceBroker;->postSetA2dpSourceConnectionState(ILcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 594
    monitor-exit p0

    return-void

    .line 584
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

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->getBluetoothA2dpEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 214
    .local v0, "forMed":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v2, 0x1

    const-string/jumbo v3, "onAudioServerDied()"

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    monitor-exit p0

    return-void

    .line 211
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

    .line 533
    :try_start_0
    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    .line 534
    monitor-exit p0

    return-void

    .line 536
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 537
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 538
    const-string v1, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 540
    invoke-direct {p0, v0}, Lcom/android/server/audio/BtHelper;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 541
    iput p1, p0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 542
    monitor-exit p0

    return-void

    .line 532
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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    monitor-enter p0

    .line 616
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->handleCancelFailureToConnectToBtHeadsetService()V

    .line 617
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 618
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/audio/BtHelper;->setBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 620
    invoke-direct {p0}, Lcom/android/server/audio/BtHelper;->checkScoAudioState()V

    .line 621
    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    .line 623
    monitor-exit p0

    return-void

    .line 625
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :cond_0
    const/4 v0, 0x0

    .line 626
    .local v0, "status":Z
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_3

    .line 627
    iget v3, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq v3, v2, :cond_2

    if-eq v3, v1, :cond_1

    goto :goto_0

    .line 637
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    iget v3, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-static {v1, v2, v3}, Lcom/android/server/audio/BtHelper;->disconnectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    move v0, v1

    .line 640
    if-eqz v0, :cond_3

    .line 641
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto :goto_0

    .line 629
    :cond_2
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    iget v3, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-static {v1, v2, v3}, Lcom/android/server/audio/BtHelper;->connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    move v0, v1

    .line 632
    if-eqz v0, :cond_3

    .line 633
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 646
    :cond_3
    :goto_0
    if-nez v0, :cond_4

    .line 647
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 648
    invoke-direct {p0, v1}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 650
    :cond_4
    monitor-exit p0

    return-void

    .line 615
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

    .line 597
    :try_start_0
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    .line 598
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHearingAid;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 599
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 600
    monitor-exit p0

    return-void

    .line 602
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 603
    .local v1, "btDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    .line 604
    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothHearingAid;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 605
    .local v4, "state":I
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "mBluetoothProfileServiceListener"

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 610
    monitor-exit p0

    return-void

    .line 596
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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    monitor-enter p0

    .line 188
    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I

    .line 190
    const-string v0, "AS.BtHelper"

    const-string v1, "In onSystemReady(), calling resetBluetoothSco()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->resetBluetoothSco()V

    .line 193
    invoke-direct {p0}, Lcom/android/server/audio/BtHelper;->getBluetoothHeadset()Z

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    invoke-direct {p0, v0}, Lcom/android/server/audio/BtHelper;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 202
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 203
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_0

    .line 204
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 206
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v4, 0x15

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :cond_0
    monitor-exit p0

    return-void

    .line 187
    .end local v0    # "newIntent":Landroid/content/Intent;
    .end local v1    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized receiveBtEvent(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    monitor-enter p0

    .line 334
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 337
    .local v1, "btDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v1}, Lcom/android/server/audio/BtHelper;->setBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 338
    .end local v1    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    goto/16 :goto_3

    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :cond_0
    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 339
    const/4 v1, 0x0

    .line 340
    .local v1, "broadcast":Z
    const/4 v2, -0x1

    .line 341
    .local v2, "scoAudioState":I
    const-string v3, "android.bluetooth.profile.extra.STATE"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 343
    .local v3, "btState":I
    iget-object v4, p0, Lcom/android/server/audio/BtHelper;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x3

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq v4, v7, :cond_1

    iget v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq v4, v6, :cond_1

    iget v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq v4, v5, :cond_1

    iget v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    const/4 v8, 0x5

    if-ne v4, v8, :cond_2

    .line 348
    :cond_1
    const/4 v1, 0x1

    .line 350
    :cond_2
    const/4 v4, 0x2

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 352
    :pswitch_0
    const/16 v8, 0xc

    .line 353
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 352
    invoke-direct {p0, p1, v8}, Lcom/android/server/audio/BtHelper;->checkAndUpdatTwsPlusScoState(Landroid/content/Intent;Ljava/lang/Integer;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 354
    const/4 v2, 0x1

    .line 355
    iget v8, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq v8, v7, :cond_3

    iget v8, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq v8, v5, :cond_3

    .line 357
    iput v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 359
    :cond_3
    iget-object v8, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string v9, "BtHelper.receiveBtEvent"

    invoke-virtual {v8, v6, v9}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(ZLjava/lang/String;)V

    .line 360
    const-string v6, "AS.BtHelper"

    const-string v8, "Audio-path brought-up"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_4
    const/4 v2, 0x1

    .line 363
    iget v6, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq v6, v7, :cond_8

    iget v6, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq v6, v5, :cond_8

    .line 365
    iput v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto :goto_2

    .line 390
    :pswitch_1
    iget v6, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq v6, v7, :cond_7

    iget v6, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq v6, v5, :cond_7

    .line 392
    iput v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto :goto_1

    .line 369
    :pswitch_2
    const/16 v4, 0xa

    .line 370
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 369
    invoke-direct {p0, p1, v4}, Lcom/android/server/audio/BtHelper;->checkAndUpdatTwsPlusScoState(Landroid/content/Intent;Ljava/lang/Integer;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 371
    iget-object v4, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string v5, "BtHelper.receiveBtEvent"

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v5}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(ZLjava/lang/String;)V

    .line 372
    const/4 v2, 0x0

    .line 374
    iget v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-ne v4, v6, :cond_5

    .line 375
    iget-object v4, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v5, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    iget v9, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    .line 376
    invoke-static {v4, v5, v9}, Lcom/android/server/audio/BtHelper;->connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 378
    iput v7, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 379
    const/4 v1, 0x0

    .line 380
    goto :goto_2

    .line 384
    :cond_5
    iget v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-ne v4, v7, :cond_6

    goto :goto_0

    :cond_6
    move v6, v8

    :goto_0
    invoke-direct {p0, v8, v6}, Lcom/android/server/audio/BtHelper;->clearAllScoClients(IZ)V

    .line 385
    iput v8, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 386
    const-string v4, "AS.BtHelper"

    const-string v5, "Audio-path brought-down"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 396
    :cond_7
    :goto_1
    const/4 v1, 0x0

    .line 399
    :cond_8
    :goto_2
    if-eqz v1, :cond_9

    .line 400
    invoke-direct {p0, v2}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 403
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 404
    .local v4, "newIntent":Landroid/content/Intent;
    const-string v5, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 405
    invoke-direct {p0, v4}, Lcom/android/server/audio/BtHelper;->sendStickyBroadcastToAll(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    .end local v1    # "broadcast":Z
    .end local v2    # "scoAudioState":I
    .end local v3    # "btState":I
    .end local v4    # "newIntent":Landroid/content/Intent;
    :cond_9
    :goto_3
    monitor-exit p0

    return-void

    .line 333
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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    monitor-enter p0

    .line 555
    :try_start_0
    const-string v0, "AS.BtHelper"

    const-string v1, "In resetBluetoothSco(), calling clearAllScoClients()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/server/audio/BtHelper;->clearAllScoClients(IZ)V

    .line 558
    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 559
    invoke-direct {p0, v0}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 560
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 561
    const-string v1, "A2dpSuspended=false"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 562
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v2, "resetBluetoothSco"

    invoke-virtual {v1, v0, v2}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    monitor-exit p0

    return-void

    .line 554
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized scoClientDied(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    monitor-enter p0

    .line 821
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/server/audio/BtHelper$ScoClient;

    .line 822
    .local v0, "client":Lcom/android/server/audio/BtHelper$ScoClient;
    const-string v1, "AS.BtHelper"

    const-string v2, "SCO client died"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 824
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 825
    const-string v2, "AS.BtHelper"

    const-string/jumbo v3, "unregistered SCO client died"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 827
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/audio/BtHelper$ScoClient;->clearCount(Z)V

    .line 828
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 830
    :goto_0
    monitor-exit p0

    return-void

    .line 820
    .end local v0    # "client":Lcom/android/server/audio/BtHelper$ScoClient;
    .end local v1    # "index":I
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

    .line 836
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_0

    goto :goto_0

    .line 839
    :cond_0
    const-string v0, "NEED_SEND_HFP_RECONNECT_BROADCAST"

    .line 840
    .local v0, "command":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v3, "NEED_SEND_HFP_RECONNECT_BROADCAST"

    invoke-virtual {v1, v2, v3, p1}, Landroid/bluetooth/BluetoothHeadset;->sendVendorSpecificResultCode(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 841
    monitor-exit p0

    return-void

    .line 837
    .end local v0    # "command":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 835
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

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    .line 229
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string/jumbo v2, "setAvrcpAbsoluteVolumeIndex: bailing due to null mA2dp"

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "AS.BtHelper"

    .line 230
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    .line 229
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-exit p0

    return-void

    .line 234
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    if-nez v0, :cond_1

    .line 235
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string/jumbo v2, "setAvrcpAbsoluteVolumeIndex: abs vol not supported "

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "AS.BtHelper"

    .line 236
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    .line 235
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    monitor-exit p0

    return-void

    .line 240
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

    .line 242
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p1}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 244
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->setAvrcpAbsoluteVolume(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 245
    monitor-exit p0

    return-void

    .line 226
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

    .line 222
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    .line 223
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

    .line 224
    monitor-exit p0

    return-void

    .line 221
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

    .line 511
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    if-nez v0, :cond_0

    .line 513
    const-string v0, "AS.BtHelper"

    const-string/jumbo v1, "setHearingAidVolume: null mHearingAid"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    monitor-exit p0

    return-void

    .line 518
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :cond_0
    :try_start_1
    div-int/lit8 v0, p1, 0xa

    const/high16 v1, 0x8000000

    invoke-static {p2, v0, v1}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    move-result v0

    float-to-int v0, v0

    .line 520
    .local v0, "gainDB":I
    const/16 v1, -0x80

    if-ge v0, v1, :cond_1

    .line 521
    const/16 v0, -0x80

    .line 524
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

    .line 527
    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p1, v0}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(III)V

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 529
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHearingAid;->setVolume(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 530
    monitor-exit p0

    return-void

    .line 510
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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    monitor-enter p0

    .line 475
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/BtHelper;->getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/BtHelper$ScoClient;

    move-result-object v0

    .line 481
    .local v0, "client":Lcom/android/server/audio/BtHelper$ScoClient;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    .local v1, "ident":J
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " client count before="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/audio/BtHelper$ScoClient;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object p3, v3

    .line 484
    sget-object v3, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v4, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    invoke-direct {v4, p3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 485
    invoke-virtual {v0, p2}, Lcom/android/server/audio/BtHelper$ScoClient;->incCount(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    goto :goto_0

    .line 486
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :catch_0
    move-exception v3

    .line 487
    .local v3, "e":Ljava/lang/NullPointerException;
    :try_start_2
    const-string v4, "AS.BtHelper"

    const-string v5, "Null ScoClient"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 489
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 490
    monitor-exit p0

    return-void

    .line 474
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
    .locals 5
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "eventSource"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    monitor-enter p0

    .line 496
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/BtHelper;->getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/BtHelper$ScoClient;

    move-result-object v0

    .line 500
    .local v0, "client":Lcom/android/server/audio/BtHelper$ScoClient;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 501
    .local v1, "ident":J
    if-eqz v0, :cond_0

    .line 502
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " client count before="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/audio/BtHelper$ScoClient;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object p2, v3

    .line 503
    sget-object v3, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v4, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    invoke-direct {v4, p2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 504
    invoke-virtual {v0}, Lcom/android/server/audio/BtHelper$ScoClient;->decCount()V

    .line 506
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    monitor-exit p0

    return-void

    .line 495
    .end local v0    # "client":Lcom/android/server/audio/BtHelper$ScoClient;
    .end local v1    # "ident":J
    .end local p1    # "cb":Landroid/os/IBinder;
    .end local p2    # "eventSource":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
