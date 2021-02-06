.class final Lcom/android/server/audio/AudioDeviceBroker;
.super Ljava/lang/Object;
.source "AudioDeviceBroker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;,
        Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;,
        Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;,
        Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;,
        Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;
    }
.end annotation


# static fields
.field private static final BROKER_WAKELOCK_TIMEOUT_MS:J = 0x1388L

.field static final BTA2DP_DOCK_TIMEOUT_MS:I = 0x1f40

.field private static final BTA2DP_MUTE_CHECK_DELAY_MS:I = 0x64

.field static final BT_HEADSET_CNCT_TIMEOUT_MS:I = 0xbb8

.field private static final MESSAGES_MUTE_MUSIC:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MSG_BROADCAST_AUDIO_BECOMING_NOISY:I = 0xc

.field private static final MSG_BT_HEADSET_CNCT_FAILED:I = 0x9

.field private static final MSG_CHECK_MUTE_MUSIC:I = 0x24

.field private static final MSG_DISCONNECT_A2DP:I = 0x13

.field private static final MSG_DISCONNECT_A2DP_SINK:I = 0x14

.field private static final MSG_DISCONNECT_BT_HEADSET:I = 0x16

.field private static final MSG_DISCONNECT_BT_HEARING_AID:I = 0x15

.field private static final MSG_HFP_RECONNECT:I = 0x27

.field private static final MSG_IIL_SET_FORCE_BT_A2DP_USE:I = 0x5

.field private static final MSG_IIL_SET_FORCE_USE:I = 0x4

.field private static final MSG_II_SET_HEARING_AID_VOLUME:I = 0xe

.field private static final MSG_IL_BTA2DP_TIMEOUT:I = 0xa

.field private static final MSG_IL_SAVE_PREF_DEVICE_FOR_STRATEGY:I = 0x21

.field private static final MSG_IL_SET_A2DP_SINK_CONNECTION_STATE_CONNECTED:I = 0x1b

.field private static final MSG_IL_SET_A2DP_SINK_CONNECTION_STATE_DISCONNECTED:I = 0x1c

.field private static final MSG_IL_SET_A2DP_SOURCE_CONNECTION_STATE:I = 0x7

.field private static final MSG_IL_SET_HEARING_AID_CONNECTION_STATE:I = 0x8

.field private static final MSG_I_BROADCAST_BT_CONNECTION_STATE:I = 0x3

.field private static final MSG_I_SAVE_REMOVE_PREF_DEVICE_FOR_STRATEGY:I = 0x22

.field private static final MSG_I_SET_AVRCP_ABSOLUTE_VOLUME:I = 0xf

.field private static final MSG_I_SET_MODE_OWNER_PID:I = 0x10

.field private static final MSG_L_A2DP_ACTIVE_DEVICE_CHANGE:I = 0x12

.field private static final MSG_L_A2DP_ACTIVE_DEVICE_CHANGE_EXT:I = 0x26

.field private static final MSG_L_A2DP_DEVICE_CONFIG_CHANGE:I = 0xb

.field private static final MSG_L_A2DP_DEVICE_CONNECTION_CHANGE_EXT_CONNECTION:I = 0x1d

.field private static final MSG_L_A2DP_DEVICE_CONNECTION_CHANGE_EXT_DISCONNECTION:I = 0x1e

.field private static final MSG_L_BT_SERVICE_CONNECTED_PROFILE_A2DP:I = 0x17

.field private static final MSG_L_BT_SERVICE_CONNECTED_PROFILE_A2DP_SINK:I = 0x18

.field private static final MSG_L_BT_SERVICE_CONNECTED_PROFILE_HEADSET:I = 0x1a

.field private static final MSG_L_BT_SERVICE_CONNECTED_PROFILE_HEARING_AID:I = 0x19

.field private static final MSG_L_HEARING_AID_DEVICE_CONNECTION_CHANGE_EXT:I = 0x1f

.field private static final MSG_L_SCOCLIENT_DIED:I = 0x20

.field private static final MSG_L_SET_WIRED_DEVICE_CONNECTION_STATE:I = 0x2

.field private static final MSG_L_SPEAKERPHONE_CLIENT_DIED:I = 0x23

.field private static final MSG_REPORT_NEW_ROUTES:I = 0xd

.field private static final MSG_REPORT_NEW_ROUTES_A2DP:I = 0x25

.field private static final MSG_RESTORE_DEVICES:I = 0x1

.field private static final MSG_TOGGLE_HDMI:I = 0x6

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AS.AudioDeviceBroker"

.field private static sLastDeviceConnectMsgTime:J

.field private static final sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;


# instance fields
.field private final mAudioService:Lcom/android/server/audio/AudioService;

.field private mBluetoothA2dpEnabled:Z

.field private mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

.field private mBrokerThread:Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;

.field private final mBtHelper:Lcom/android/server/audio/BtHelper;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

.field private final mDeviceStateLock:Ljava/lang/Object;

.field private mForcedUseForComm:I

.field private mForcedUseForCommExt:I

.field private mModeOwnerPid:I

.field private mMusicMuted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mSetModeLock:Ljava/lang/Object;

.field private final mSpeakerphoneClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemServer:Lcom/android/server/audio/SystemServerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;

    .line 105
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectMsgTime:J

    .line 1433
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    .line 1434
    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1435
    sget-object v0, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1436
    sget-object v0, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1437
    sget-object v0, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1438
    sget-object v0, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1439
    sget-object v0, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1440
    sget-object v0, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1441
    sget-object v0, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1442
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/audio/AudioService;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeOwnerPid:I

    .line 1444
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mMusicMuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1547
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSpeakerphoneClients:Ljava/util/ArrayList;

    .line 123
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    .line 124
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 125
    new-instance v0, Lcom/android/server/audio/BtHelper;

    invoke-direct {v0, p0}, Lcom/android/server/audio/BtHelper;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 126
    new-instance v0, Lcom/android/server/audio/AudioDeviceInventory;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioDeviceInventory;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 127
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/audio/SystemServerAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/android/server/audio/SystemServerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    .line 129
    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->init()V

    .line 130
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioDeviceInventory;Lcom/android/server/audio/SystemServerAdapter;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/audio/AudioService;
    .param p3, "mockDeviceInventory"    # Lcom/android/server/audio/AudioDeviceInventory;
    .param p4, "mockSystemServer"    # Lcom/android/server/audio/SystemServerAdapter;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeOwnerPid:I

    .line 1444
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mMusicMuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1547
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSpeakerphoneClients:Ljava/util/ArrayList;

    .line 137
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    .line 138
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 139
    new-instance v0, Lcom/android/server/audio/BtHelper;

    invoke-direct {v0, p0}, Lcom/android/server/audio/BtHelper;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 140
    iput-object p3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 141
    iput-object p4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    .line 143
    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->init()V

    .line 144
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/audio/AudioDeviceBroker;Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;)Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;
    .param p1, "x1"    # Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    .line 69
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/server/audio/AudioDeviceBroker;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;
    .param p1, "x1"    # I

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->checkMessagesMuteMusic(I)V

    return-void
.end method

.method static synthetic access$1100()Ljava/util/Set;
    .locals 1

    .line 69
    sget-object v0, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/audio/AudioDeviceBroker;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsg(III)V

    return-void
.end method

.method static synthetic access$1300(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 69
    invoke-static {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isMessageHandledUnderWakelock(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/audio/AudioDeviceBroker;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;

    .line 69
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;

    .line 69
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;

    .line 69
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;

    .line 69
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/audio/AudioDeviceBroker;IIZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioDeviceBroker;->onSetForceUse(IIZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;

    .line 69
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/audio/AudioDeviceBroker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;

    .line 69
    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->onSendBecomingNoisyIntent()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/audio/AudioDeviceBroker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;

    .line 69
    iget v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeOwnerPid:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/audio/AudioDeviceBroker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;
    .param p1, "x1"    # I

    .line 69
    iput p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeOwnerPid:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/audio/AudioDeviceBroker;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->speakerphoneClientDied(Ljava/lang/Object;)V

    return-void
.end method

.method private addSpeakerphoneClient(Landroid/os/IBinder;IZ)Z
    .locals 4
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "pid"    # I
    .param p3, "on"    # Z

    .line 1537
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->removeSpeakerphoneClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;

    .line 1538
    new-instance v1, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;-><init>(Lcom/android/server/audio/AudioDeviceBroker;Landroid/os/IBinder;IZ)V

    .line 1539
    .local v1, "client":Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->registerDeathRecipient()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1540
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSpeakerphoneClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1541
    return v0

    .line 1543
    :cond_0
    return v3
.end method

.method private checkMessagesMuteMusic(I)V
    .locals 4
    .param p1, "message"    # I

    .line 1448
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1449
    .local v0, "mute":Z
    :goto_0
    if-nez v0, :cond_2

    .line 1450
    sget-object v1, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1451
    .local v2, "msg":I
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1452
    const/4 v0, 0x1

    .line 1453
    goto :goto_2

    .line 1455
    .end local v2    # "msg":I
    :cond_1
    goto :goto_1

    .line 1458
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mMusicMuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eq v0, v1, :cond_3

    .line 1459
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService;->setMusicMute(Z)V

    .line 1461
    :cond_3
    return-void
.end method

.method private init()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->setupMessaging(Landroid/content/Context;)V

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    .line 150
    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    .line 151
    return-void
.end method

.method private static isMessageHandledUnderWakelock(I)Z
    .locals 1
    .param p0, "msgId"    # I

    .line 1259
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/16 v0, 0x12

    if-eq p0, v0, :cond_0

    const/16 v0, 0x24

    if-eq p0, v0, :cond_0

    const/16 v0, 0x26

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1276
    const/4 v0, 0x0

    return v0

    .line 1274
    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isSpeakerphoneOnRequested()Z
    .locals 5

    .line 282
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSpeakerphoneClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 283
    return v1

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSpeakerphoneClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;

    .line 286
    .local v2, "cl":Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;
    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->getPid()I

    move-result v3

    iget v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeOwnerPid:I

    if-ne v3, v4, :cond_1

    .line 287
    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->isOn()Z

    move-result v0

    return v0

    .line 289
    .end local v2    # "cl":Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;
    :cond_1
    goto :goto_0

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSpeakerphoneClients:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->isOn()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "cl"    # Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->getPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    invoke-virtual {p2}, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->isOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " cb: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 832
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 833
    return-void
.end method

.method private onSendBecomingNoisyIntent()V
    .locals 3

    .line 866
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v2, "broadcast ACTION_AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 867
    const-string v2, "AS.AudioDeviceBroker"

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    .line 866
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 868
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    invoke-virtual {v0}, Lcom/android/server/audio/SystemServerAdapter;->sendDeviceBecomingNoisyIntent()V

    .line 869
    return-void
.end method

.method private onSetForceUse(IIZLjava/lang/String;)V
    .locals 4
    .param p1, "useCase"    # I
    .param p2, "config"    # I
    .param p3, "fromA2dp"    # Z
    .param p4, "eventSource"    # Ljava/lang/String;

    .line 844
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 845
    invoke-virtual {p0, p3}, Lcom/android/server/audio/AudioDeviceBroker;->postReportNewRoutes(Z)V

    .line 847
    :cond_0
    sget-object v1, Lcom/android/server/audio/AudioService;->sForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    invoke-direct {v2, p1, p2, p4}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 849
    new-instance v1, Landroid/media/MediaMetrics$Item;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio.forceUse."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    invoke-static {p1}, Landroid/media/AudioSystem;->forceUseUsageToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 851
    const-string/jumbo v3, "onSetForceUse"

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->FORCE_USE_DUE_TO:Landroid/media/MediaMetrics$Key;

    .line 852
    invoke-virtual {v1, v2, p4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->FORCE_USE_MODE:Landroid/media/MediaMetrics$Key;

    .line 854
    invoke-static {p2}, Landroid/media/AudioSystem;->forceUseConfigToString(I)Ljava/lang/String;

    move-result-object v3

    .line 853
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    .line 855
    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 856
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 859
    new-array v0, v0, [I

    const/16 v1, 0x8e

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 860
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioService;->postCallDeviceChange(I)V

    .line 863
    :cond_1
    return-void
.end method

.method private removeScheduledA2dpEvents(Landroid/bluetooth/BluetoothDevice;)V
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 384
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 386
    new-instance v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;-><init>(Landroid/bluetooth/BluetoothDevice;IIZI)V

    .line 391
    .local v0, "connectionInfoToRemove":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2, v0}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 393
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v2, 0x1d

    invoke-virtual {v1, v2, v0}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 396
    new-instance v1, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    invoke-direct {v1, p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    .line 398
    .local v1, "devInfoToRemove":Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v3, 0x1b

    invoke-virtual {v2, v3, v1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 400
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v3, 0x1c

    invoke-virtual {v2, v3, v1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 402
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v3, 0x12

    invoke-virtual {v2, v3, v1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 404
    return-void
.end method

.method private removeSpeakerphoneClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;
    .locals 3
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "unregister"    # Z

    .line 1522
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSpeakerphoneClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;

    .line 1523
    .local v1, "cl":Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 1524
    if-eqz p2, :cond_0

    .line 1525
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->unregisterDeathRecipient()V

    .line 1527
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSpeakerphoneClients:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1528
    return-object v1

    .line 1530
    .end local v1    # "cl":Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;
    :cond_1
    goto :goto_0

    .line 1531
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private sendIILMsg(IIIILjava/lang/Object;I)V
    .locals 7
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .line 1332
    if-nez p2, :cond_0

    .line 1333
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeMessages(I)V

    goto :goto_0

    .line 1334
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1335
    return-void

    .line 1338
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/server/audio/AudioDeviceBroker;->isMessageHandledUnderWakelock(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1339
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1341
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1344
    goto :goto_1

    .line 1342
    :catch_0
    move-exception v2

    .line 1343
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "AS.AudioDeviceBroker"

    const-string v4, "Exception acquiring wakelock"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1345
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1348
    .end local v0    # "identity":J
    :cond_2
    sget-object v0, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1349
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->checkMessagesMuteMusic(I)V

    .line 1352
    :cond_3
    sget-object v0, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1353
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, p6

    add-long/2addr v1, v3

    .line 1355
    .local v1, "time":J
    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    const/16 v3, 0x12

    if-eq p1, v3, :cond_4

    const/4 v3, 0x7

    if-eq p1, v3, :cond_4

    const/16 v3, 0x8

    if-eq p1, v3, :cond_4

    const/16 v3, 0xa

    if-eq p1, v3, :cond_4

    const/16 v3, 0xb

    if-eq p1, v3, :cond_4

    const/16 v3, 0x1b

    if-eq p1, v3, :cond_4

    const/16 v3, 0x1c

    if-eq p1, v3, :cond_4

    goto :goto_2

    .line 1364
    :cond_4
    sget-wide v3, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectMsgTime:J

    cmp-long v3, v3, v1

    if-ltz v3, :cond_5

    .line 1366
    sget-wide v3, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectMsgTime:J

    const-wide/16 v5, 0x1e

    add-long/2addr v3, v5

    move-wide v1, v3

    .line 1368
    :cond_5
    sput-wide v1, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectMsgTime:J

    .line 1369
    nop

    .line 1373
    :goto_2
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {v4, p1, p3, p4, p5}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1375
    nop

    .end local v1    # "time":J
    monitor-exit v0

    .line 1376
    return-void

    .line 1375
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private sendIILMsgNoDelay(IIIILjava/lang/Object;)V
    .locals 7
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;

    .line 1327
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1328
    return-void
.end method

.method private sendIIMsgNoDelay(IIII)V
    .locals 7
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    .line 1315
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1316
    return-void
.end method

.method private sendILMsg(IIILjava/lang/Object;I)V
    .locals 7
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg"    # I
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "delay"    # I

    .line 1295
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1296
    return-void
.end method

.method private sendILMsgNoDelay(IIILjava/lang/Object;)V
    .locals 7
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 1319
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1320
    return-void
.end method

.method private sendIMsg(IIII)V
    .locals 7
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg"    # I
    .param p4, "delay"    # I

    .line 1303
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1304
    return-void
.end method

.method private sendIMsgNoDelay(III)V
    .locals 7
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg"    # I

    .line 1311
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1312
    return-void
.end method

.method private sendLMsg(IILjava/lang/Object;I)V
    .locals 7
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "delay"    # I

    .line 1299
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1300
    return-void
.end method

.method private sendLMsgNoDelay(IILjava/lang/Object;)V
    .locals 7
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1323
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1324
    return-void
.end method

.method private sendMsg(III)V
    .locals 7
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "delay"    # I

    .line 1291
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1292
    return-void
.end method

.method private sendMsgNoDelay(II)V
    .locals 7
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I

    .line 1307
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1308
    return-void
.end method

.method private setupMessaging(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctxt"    # Landroid/content/Context;

    .line 878
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 879
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "handleAudioDeviceEvent"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 881
    new-instance v1, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;

    invoke-direct {v1, p0}, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerThread:Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;

    .line 882
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;->start()V

    .line 883
    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->waitForBrokerHandlerCreation()V

    .line 884
    return-void
.end method

.method private speakerphoneClientDied(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1512
    if-nez p1, :cond_0

    .line 1513
    return-void

    .line 1515
    :cond_0
    const-string v0, "AS.AudioDeviceBroker"

    const-string v1, "Speaker client died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    move-object v0, p1

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->removeSpeakerphoneClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1517
    const-string/jumbo v0, "speakerphoneClientDied"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->updateSpeakerphoneOn(Ljava/lang/String;)V

    .line 1519
    :cond_1
    return-void
.end method

.method private updateSpeakerphoneOn(Ljava/lang/String;)V
    .locals 5
    .param p1, "eventSource"    # Ljava/lang/String;

    .line 252
    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isSpeakerphoneOnRequested()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v0, :cond_1

    .line 253
    iget v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    if-ne v0, v4, :cond_0

    .line 254
    invoke-virtual {p0, v1, v3, p1}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 256
    :cond_0
    iput v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    goto :goto_0

    .line 257
    :cond_1
    iget v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    if-ne v0, v2, :cond_3

    .line 258
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v0}, Lcom/android/server/audio/BtHelper;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    iput v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    .line 260
    invoke-virtual {p0, v1, v4, p1}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_2
    iput v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    .line 266
    :cond_3
    :goto_0
    iget v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In updateSpeakerphoneOn(), mForcedUseForCommExt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioDeviceBroker"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    invoke-virtual {p0, v3, v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 271
    return-void
.end method

.method private waitForBrokerHandlerCreation()V
    .locals 3

    .line 887
    monitor-enter p0

    .line 888
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 890
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 893
    goto :goto_0

    .line 891
    :catch_0
    move-exception v0

    .line 892
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "AS.AudioDeviceBroker"

    const-string v2, "Interruption while waiting on BrokerHandler"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    nop

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 895
    :cond_0
    monitor-exit p0

    .line 896
    return-void

    .line 895
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method checkMusicActive(ILjava/lang/String;)V
    .locals 1
    .param p1, "deviceType"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .line 626
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioService;->checkMusicActive(ILjava/lang/String;)V

    .line 627
    return-void
.end method

.method checkVolumeCecOnHdmiConnection(ILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .line 631
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioService;->postCheckVolumeCecOnHdmiConnection(ILjava/lang/String;)V

    .line 632
    return-void
.end method

.method disconnectAllBluetoothProfiles()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1}, Lcom/android/server/audio/BtHelper;->disconnectAllBluetoothProfiles()V

    .line 198
    monitor-exit v0

    .line 199
    return-void

    .line 198
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 816
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    if-eqz v0, :cond_0

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Message handler (watch for unhandled messages):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_0

    .line 820
    :cond_0
    const-string v0, "Message handler is null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 823
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mForcedUseForComm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    .line 826
    invoke-static {v1}, Landroid/media/AudioSystem;->forceUseConfigToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 825
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mForcedUseForCommExt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    .line 828
    invoke-static {v1}, Landroid/media/AudioSystem;->forceUseConfigToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 827
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mModeOwnerPid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeOwnerPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Speakerphone clients:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 831
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSpeakerphoneClients:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/audio/-$$Lambda$AudioDeviceBroker$_5btcnib9oYo5NJB53NumoDVd6c;

    invoke-direct {v1, p1, p2}, Lcom/android/server/audio/-$$Lambda$AudioDeviceBroker$_5btcnib9oYo5NJB53NumoDVd6c;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 835
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/BtHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 836
    return-void
.end method

.method getA2dpCodec(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 810
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 811
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/BtHelper;->getA2dpCodec(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 812
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getA2dpVolume(ZI)I
    .locals 1
    .param p1, "cmpToSafeVolume"    # Z
    .param p2, "a2dpVolume"    # I

    .line 1423
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioService;->getA2dpVolume(ZI)I

    move-result v0

    return v0
.end method

.method getBluetoothA2dpEnabled()Z
    .locals 2

    .line 804
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 805
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    monitor-exit v0

    return v1

    .line 806
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getCurAudioRoutes()Landroid/media/AudioRoutesInfo;
    .locals 2

    .line 514
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 515
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->getCurAudioRoutes()Landroid/media/AudioRoutesInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 516
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDeviceForStream(I)I
    .locals 1
    .param p1, "streamType"    # I

    .line 597
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    return v0
.end method

.method getModeOwnerPid()I
    .locals 1

    .line 593
    iget v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeOwnerPid:I

    return v0
.end method

.method getVssVolumeForDevice(II)I
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "device"    # I

    .line 589
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioService;->getVssVolumeForDevice(II)I

    move-result v0

    return v0
.end method

.method handleCancelFailureToConnectToBtHeadsetService()V
    .locals 2

    .line 771
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeMessages(I)V

    .line 772
    return-void
.end method

.method handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "connect"    # Z
    .param p2, "device"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;

    .line 754
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 755
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/audio/AudioDeviceInventory;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 756
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method handleFailureToConnectToBtHeadsetService(I)V
    .locals 2
    .param p1, "delay"    # I

    .line 767
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsg(III)V

    .line 768
    return-void
.end method

.method hasAudioFocusUsers()Z
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->hasAudioFocusUsers()Z

    move-result v0

    return v0
.end method

.method hasMediaDynamicPolicy()Z
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->hasMediaDynamicPolicy()Z

    move-result v0

    return v0
.end method

.method hasScheduledA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 785
    new-instance v0, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    invoke-direct {v0, p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    .line 787
    .local v0, "devInfoToCheck":Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2, v0}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->hasEqualMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v2, 0x1c

    .line 789
    invoke-virtual {v1, v2, v0}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->hasEqualMessages(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 787
    :goto_1
    return v1
.end method

.method isAvrcpAbsoluteVolumeSupported()Z
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 521
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1}, Lcom/android/server/audio/BtHelper;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 522
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isBluetoothA2dpOn()Z
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 527
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    monitor-exit v0

    return v1

    .line 528
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isBluetoothScoOnForApp()Z
    .locals 4

    .line 462
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 464
    :try_start_0
    const-string v1, "AS.AudioDeviceBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In isBluetoothScoOnForApp(), mForcedUseForCommExt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 468
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isEUVersion()Z
    .locals 1

    .line 1426
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->isEUVersion()Z

    move-result v0

    return v0
.end method

.method isInCommunication()Z
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    return v0
.end method

.method isSpeakerphoneOn()Z
    .locals 4

    .line 294
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    :try_start_0
    const-string v1, "AS.AudioDeviceBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In isSpeakerphoneOn(), mForcedUseForCommExt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 299
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onAudioServerDied()V
    .locals 5

    .line 174
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BT_SCO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const-string/jumbo v2, "on"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "off"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 177
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    const-string/jumbo v2, "onAudioServerDied"

    const/4 v3, 0x0

    invoke-direct {p0, v3, v1, v3, v2}, Lcom/android/server/audio/AudioDeviceBroker;->onSetForceUse(IIZLjava/lang/String;)V

    .line 179
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    const-string/jumbo v4, "onAudioServerDied"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->onSetForceUse(IIZLjava/lang/String;)V

    .line 181
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    const/4 v0, 0x1

    invoke-direct {p0, v0, v3}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 184
    return-void

    .line 181
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method onSystemReady()V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 166
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getModeOwnerPid()I

    move-result v2

    iput v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeOwnerPid:I

    .line 167
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper;->onSystemReady()V

    .line 168
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 170
    return-void

    .line 168
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker;
    :try_start_4
    throw v2

    .line 169
    .restart local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method postA2dpActiveDeviceChange(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;)V
    .locals 2
    .param p1, "btDeviceInfo"    # Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    .line 780
    const/16 v0, 0x12

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 781
    return-void
.end method

.method postA2dpSinkConnection(ILcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "btDeviceInfo"    # Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    .param p3, "delay"    # I

    .line 651
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 652
    const/16 v0, 0x1b

    move v2, v0

    goto :goto_0

    .line 653
    :cond_0
    const/16 v0, 0x1c

    move v2, v0

    :goto_0
    const/4 v3, 0x2

    .line 651
    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsg(IIILjava/lang/Object;I)V

    .line 656
    return-void
.end method

.method postA2dpSourceConnection(ILcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "btDeviceInfo"    # Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    .param p3, "delay"    # I

    .line 660
    const/4 v1, 0x7

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsg(IIILjava/lang/Object;I)V

    .line 662
    return-void
.end method

.method postAccessoryPlugMediaUnmute(I)V
    .locals 1
    .param p1, "device"    # I

    .line 585
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService;->postAccessoryPlugMediaUnmute(I)V

    .line 586
    return-void
.end method

.method postApplyVolumeOnDevice(IILjava/lang/String;)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "device"    # I
    .param p3, "caller"    # Ljava/lang/String;

    .line 601
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->postApplyVolumeOnDevice(IILjava/lang/String;)V

    .line 602
    return-void
.end method

.method postBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 544
    const/16 v0, 0xb

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 545
    return-void
.end method

.method postBluetoothA2dpDeviceConfigChangeExt(Landroid/bluetooth/BluetoothDevice;IIZI)V
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I
    .param p4, "suppressNoisyIntent"    # Z
    .param p5, "a2dpVolume"    # I

    .line 410
    new-instance v6, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;-><init>(Landroid/bluetooth/BluetoothDevice;IIZI)V

    .line 412
    .local v0, "info":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;
    const/16 v1, 0x26

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 413
    return-void
.end method

.method postBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)V
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I
    .param p4, "suppressNoisyIntent"    # Z
    .param p5, "a2dpVolume"    # I

    .line 353
    new-instance v6, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;-><init>(Landroid/bluetooth/BluetoothDevice;IIZI)V

    .line 356
    .local v0, "info":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Landroid/media/MediaMetrics$Item;

    const-string v3, "audio.device.postBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent"

    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    .line 359
    const/4 v4, 0x2

    if-ne p2, v4, :cond_0

    .line 360
    const-string v5, "connected"

    goto :goto_0

    :cond_0
    const-string v5, "disconnected"

    .line 359
    :goto_0
    invoke-virtual {v2, v3, v5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    sget-object v3, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    .line 361
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    sget-object v3, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    .line 362
    invoke-virtual {v2, v3, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    .line 363
    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 367
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 371
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->removeScheduledA2dpEvents(Landroid/bluetooth/BluetoothDevice;)V

    .line 373
    nop

    .line 374
    if-ne p2, v4, :cond_1

    .line 375
    const/16 v3, 0x1d

    goto :goto_1

    .line 376
    :cond_1
    const/16 v3, 0x1e

    :goto_1
    nop

    .line 373
    invoke-direct {p0, v3, v4, v0}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 378
    monitor-exit v2

    .line 379
    return-void

    .line 378
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method postBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZILjava/lang/String;)V
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "suppressNoisyIntent"    # Z
    .param p4, "musicDevice"    # I
    .param p5, "eventSource"    # Ljava/lang/String;

    .line 436
    new-instance v6, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;-><init>(Landroid/bluetooth/BluetoothDevice;IZILjava/lang/String;)V

    .line 438
    .local v0, "info":Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;
    const/16 v1, 0x1f

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 439
    return-void
.end method

.method postBroadcastBecomingNoisy()V
    .locals 2

    .line 645
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 646
    return-void
.end method

.method postBroadcastScoConnectionState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 641
    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    .line 642
    return-void
.end method

.method postBtA2dpProfileConnected(Landroid/bluetooth/BluetoothA2dp;)V
    .locals 2
    .param p1, "a2dpProfile"    # Landroid/bluetooth/BluetoothA2dp;

    .line 695
    const/16 v0, 0x17

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 696
    return-void
.end method

.method postBtA2dpSinkProfileConnected(Landroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/bluetooth/BluetoothProfile;

    .line 699
    const/16 v0, 0x18

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 700
    return-void
.end method

.method postBtHearingAidProfileConnected(Landroid/bluetooth/BluetoothHearingAid;)V
    .locals 2
    .param p1, "hearingAidProfile"    # Landroid/bluetooth/BluetoothHearingAid;

    .line 707
    const/16 v0, 0x19

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 709
    return-void
.end method

.method postBtHeasetProfileConnected(Landroid/bluetooth/BluetoothHeadset;)V
    .locals 2
    .param p1, "headsetProfile"    # Landroid/bluetooth/BluetoothHeadset;

    .line 703
    const/16 v0, 0x1a

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 704
    return-void
.end method

.method postCancelAutoPlayback()V
    .locals 1

    .line 1411
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->cancelAutoPlayback()V

    .line 1412
    return-void
.end method

.method postDisconnectA2dp()V
    .locals 2

    .line 679
    const/16 v0, 0x13

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 680
    return-void
.end method

.method postDisconnectA2dpSink()V
    .locals 2

    .line 683
    const/16 v0, 0x14

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 684
    return-void
.end method

.method postDisconnectHeadset()V
    .locals 2

    .line 691
    const/16 v0, 0x16

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 692
    return-void
.end method

.method postDisconnectHearingAid()V
    .locals 2

    .line 687
    const/16 v0, 0x15

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 688
    return-void
.end method

.method postHfpReconnectBroadcast(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1415
    const/16 v0, 0x27

    const/4 v1, 0x0

    const/16 v2, 0x12c

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsg(IILjava/lang/Object;I)V

    .line 1416
    return-void
.end method

.method postObserveDevicesForAllStreams()V
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->postObserveDevicesForAllStreams()V

    .line 611
    return-void
.end method

.method postReportNewRoutes(Z)V
    .locals 2
    .param p1, "fromA2dp"    # Z

    .line 775
    if-eqz p1, :cond_0

    const/16 v0, 0x25

    goto :goto_0

    :cond_0
    const/16 v0, 0xd

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 776
    return-void
.end method

.method postSaveRemovePreferredDeviceForStrategy(I)V
    .locals 2
    .param p1, "strategy"    # I

    .line 726
    const/16 v0, 0x22

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    .line 727
    return-void
.end method

.method postSaveSetPreferredDeviceForStrategy(ILandroid/media/AudioDeviceAttributes;)V
    .locals 2
    .param p1, "strategy"    # I
    .param p2, "device"    # Landroid/media/AudioDeviceAttributes;

    .line 722
    const/16 v0, 0x21

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsgNoDelay(IIILjava/lang/Object;)V

    .line 723
    return-void
.end method

.method postScoClientDied(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 712
    const/16 v0, 0x20

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 713
    return-void
.end method

.method postSetA2dpSourceConnectionState(ILcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "btDeviceInfo"    # Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    .line 761
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 762
    .local v1, "intState":I
    :goto_0
    const/4 v2, 0x7

    invoke-direct {p0, v2, v0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsgNoDelay(IIILjava/lang/Object;)V

    .line 764
    return-void
.end method

.method postSetAvrcpAbsoluteVolumeIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .line 532
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    .line 533
    return-void
.end method

.method postSetHearingAidConnectionState(ILandroid/bluetooth/BluetoothDevice;I)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "delay"    # I

    .line 672
    const/16 v1, 0x8

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsg(IIILjava/lang/Object;I)V

    .line 676
    return-void
.end method

.method postSetHearingAidVolumeIndex(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "streamType"    # I

    .line 536
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendIIMsgNoDelay(IIII)V

    .line 537
    return-void
.end method

.method postSetModeOwnerPid(I)V
    .locals 2
    .param p1, "pid"    # I

    .line 540
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    .line 541
    return-void
.end method

.method postSetVolumeIndexOnDevice(IIILjava/lang/String;)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "vssVolIndex"    # I
    .param p3, "device"    # I
    .param p4, "caller"    # Ljava/lang/String;

    .line 606
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioService;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    .line 607
    return-void
.end method

.method postSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;I)V
    .locals 1
    .param p1, "connectionState"    # Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;
    .param p2, "delay"    # I

    .line 666
    const/4 v0, 0x2

    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsg(IILjava/lang/Object;I)V

    .line 667
    return-void
.end method

.method postSpeakerphoneClientDied(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 716
    const/16 v0, 0x23

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 717
    return-void
.end method

.method postStartAutoPlayback(II)V
    .locals 7
    .param p1, "delay"    # I
    .param p2, "device"    # I

    .line 1382
    const-string/jumbo v0, "media_session"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1383
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/session/ISessionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionManager;

    move-result-object v1

    .line 1384
    .local v1, "sessionManagerService":Landroid/media/session/ISessionManager;
    const/4 v2, 0x0

    .line 1385
    .local v2, "packageName":Ljava/lang/String;
    const/4 v3, 0x1

    .line 1387
    .local v3, "sendKey":Z
    :try_start_0
    invoke-interface {v1}, Landroid/media/session/ISessionManager;->getCurrentMediaButtonPackageName()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 1390
    goto :goto_0

    .line 1388
    :catch_0
    move-exception v4

    .line 1389
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "AS.AudioDeviceBroker"

    const-string v6, "can not get MEDIA_SESSION_SERVICE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    const/high16 v4, 0x4000000

    if-ne p2, v4, :cond_0

    .line 1394
    const/16 p1, 0x1f4

    .line 1397
    :cond_0
    if-eqz v2, :cond_2

    const-string v5, "com.tencent.qqmusic"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_2

    .line 1398
    :cond_1
    const/16 p1, 0x708

    .line 1399
    if-ne p2, v4, :cond_2

    .line 1400
    const/16 p1, 0xc1c

    .line 1403
    :cond_2
    if-eqz v2, :cond_3

    const-string/jumbo v4, "tv.danmaku.bili"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1404
    const/4 v3, 0x0

    .line 1406
    :cond_3
    if-eqz v3, :cond_4

    .line 1407
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v4, p1}, Lcom/android/server/audio/AudioService;->startAutoPlayback(I)V

    .line 1409
    :cond_4
    return-void
.end method

.method receiveBtEvent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 208
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 210
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v2, p1}, Lcom/android/server/audio/BtHelper;->receiveBtEvent(Landroid/content/Intent;)V

    .line 211
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 213
    return-void

    .line 211
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker;
    .end local p1    # "intent":Landroid/content/Intent;
    :try_start_4
    throw v2

    .line 212
    .restart local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker;
    .restart local p1    # "intent":Landroid/content/Intent;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method registerStrategyPreferredDeviceDispatcher(Landroid/media/IStrategyPreferredDeviceDispatcher;)V
    .locals 1
    .param p1, "dispatcher"    # Landroid/media/IStrategyPreferredDeviceDispatcher;

    .line 573
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->registerStrategyPreferredDeviceDispatcher(Landroid/media/IStrategyPreferredDeviceDispatcher;)V

    .line 574
    return-void
.end method

.method removePreferredDeviceForStrategySync(I)I
    .locals 1
    .param p1, "strategy"    # I

    .line 568
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->removePreferredDeviceForStrategySync(I)I

    move-result v0

    return v0
.end method

.method setA2dpTimeout(Ljava/lang/String;II)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "a2dpCodec"    # I
    .param p3, "delayMs"    # I

    .line 794
    const/16 v1, 0xa

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p2

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsg(IIILjava/lang/Object;I)V

    .line 795
    return-void
.end method

.method setAvrcpAbsoluteVolumeSupported(Z)V
    .locals 2
    .param p1, "supported"    # Z

    .line 798
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 799
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/BtHelper;->setAvrcpAbsoluteVolumeSupported(Z)V

    .line 800
    monitor-exit v0

    .line 801
    return-void

    .line 800
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setBluetoothA2dpOnInt(ZZLjava/lang/String;)V
    .locals 4
    .param p1, "on"    # Z
    .param p2, "fromA2dp"    # Z
    .param p3, "source"    # Ljava/lang/String;

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setBluetoothA2dpOn("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 738
    const-string v1, ") from u/pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " src:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 741
    .local v0, "eventSource":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 742
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    .line 743
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeMessages(I)V

    .line 744
    const/4 v2, 0x1

    .line 746
    iget-boolean v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0xa

    .line 744
    :goto_0
    invoke-direct {p0, v2, v3, p2, v0}, Lcom/android/server/audio/AudioDeviceBroker;->onSetForceUse(IIZLjava/lang/String;)V

    .line 749
    monitor-exit v1

    .line 750
    return-void

    .line 749
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method setBluetoothA2dpOn_Async(ZLjava/lang/String;)V
    .locals 9
    .param p1, "on"    # Z
    .param p2, "source"    # Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    if-ne v1, p1, :cond_0

    .line 218
    monitor-exit v0

    return-void

    .line 220
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    .line 221
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeMessages(I)V

    .line 222
    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 224
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0xa

    :goto_0
    move v7, v1

    .line 222
    move-object v3, p0

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsgNoDelay(IIIILjava/lang/Object;)V

    .line 226
    monitor-exit v0

    .line 227
    return-void

    .line 226
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setBluetoothScoOn(ZLjava/lang/String;)V
    .locals 13
    .param p1, "on"    # Z
    .param p2, "eventSource"    # Ljava/lang/String;

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBluetoothScoOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioDeviceBroker"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 477
    const/4 v1, 0x3

    if-eqz p1, :cond_1

    .line 479
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper;->isBluetoothScoOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 480
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper;->isBluetoothAudioNotConnectedToEarbud()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 481
    const-string v2, "AS.AudioDeviceBroker"

    const-string/jumbo v3, "setBluetoothScoOn(true) failed because device is not in audio connected mode"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    .line 484
    monitor-exit v0

    return-void

    .line 487
    :cond_0
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    goto :goto_1

    .line 488
    :cond_1
    iget v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    if-ne v2, v1, :cond_3

    .line 489
    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isSpeakerphoneOnRequested()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 490
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    .line 492
    :cond_3
    :goto_1
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    .line 494
    const-string v1, "AS.AudioDeviceBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In setbluetoothScoOn(), mForcedUseForCommExt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BT_SCO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4

    const-string/jumbo v2, "on"

    goto :goto_2

    :cond_4
    const-string/jumbo v2, "off"

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 498
    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    move-object v2, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsgNoDelay(IIIILjava/lang/Object;)V

    .line 500
    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x2

    iget v11, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    move-object v7, p0

    move-object v12, p2

    invoke-direct/range {v7 .. v12}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsgNoDelay(IIIILjava/lang/Object;)V

    .line 502
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->postUpdateRingerModeServiceInt()V

    .line 505
    return-void

    .line 502
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method setBluetoothScoOnByApp(Z)V
    .locals 4
    .param p1, "on"    # Z

    .line 443
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 445
    :try_start_0
    const-string v1, "AS.AudioDeviceBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In setBluetoothScoOnByApp(), mForcedUseForCommExt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const/4 v1, 0x3

    if-eqz p1, :cond_0

    .line 454
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    goto :goto_0

    .line 455
    :cond_0
    iget v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    if-ne v2, v1, :cond_1

    .line 456
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    .line 458
    :cond_1
    :goto_0
    monitor-exit v0

    .line 459
    return-void

    .line 458
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setForceUse_Async(IILjava/lang/String;)V
    .locals 6
    .param p1, "useCase"    # I
    .param p2, "config"    # I
    .param p3, "eventSource"    # Ljava/lang/String;

    .line 187
    const/4 v1, 0x4

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsgNoDelay(IIIILjava/lang/Object;)V

    .line 189
    return-void
.end method

.method setPreferredDeviceForStrategySync(ILandroid/media/AudioDeviceAttributes;)I
    .locals 1
    .param p1, "strategy"    # I
    .param p2, "device"    # Landroid/media/AudioDeviceAttributes;

    .line 564
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->setPreferredDeviceForStrategySync(ILandroid/media/AudioDeviceAttributes;)I

    move-result v0

    return v0
.end method

.method setSpeakerphoneOn(Landroid/os/IBinder;IZLjava/lang/String;)Z
    .locals 5
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "pid"    # I
    .param p3, "on"    # Z
    .param p4, "eventSource"    # Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceBroker;->addSpeakerphoneClient(Landroid/os/IBinder;IZ)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 238
    monitor-exit v0

    return v2

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isSpeakerphoneOn()Z

    move-result v1

    .line 241
    .local v1, "wasOn":Z
    invoke-direct {p0, p4}, Lcom/android/server/audio/AudioDeviceBroker;->updateSpeakerphoneOn(Ljava/lang/String;)V

    .line 244
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/android/server/audio/AudioDeviceBroker;->removeSpeakerphoneClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;

    .line 246
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isSpeakerphoneOn()Z

    move-result v4

    if-eq v1, v4, :cond_1

    move v2, v3

    :cond_1
    monitor-exit v0

    return v2

    .line 247
    .end local v1    # "wasOn":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioDeviceInventory;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    monitor-exit v0

    .line 309
    return-void

    .line 308
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method startBluetoothScoForClient_Sync(Landroid/os/IBinder;ILjava/lang/String;)V
    .locals 2
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "scoAudioMode"    # I
    .param p3, "eventSource"    # Ljava/lang/String;

    .line 550
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 551
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/audio/BtHelper;->startBluetoothScoForClient(Landroid/os/IBinder;ILjava/lang/String;)V

    .line 552
    monitor-exit v0

    .line 553
    return-void

    .line 552
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .locals 2
    .param p1, "observer"    # Landroid/media/IAudioRoutesObserver;

    .line 508
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 509
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 510
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method stopBluetoothScoForClient_Sync(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 2
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "eventSource"    # Ljava/lang/String;

    .line 557
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 558
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/audio/BtHelper;->stopBluetoothScoForClient(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 559
    monitor-exit v0

    .line 560
    return-void

    .line 559
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method toggleHdmiIfConnected_Async()V
    .locals 2

    .line 192
    const/4 v0, 0x6

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 193
    return-void
.end method

.method unregisterStrategyPreferredDeviceDispatcher(Landroid/media/IStrategyPreferredDeviceDispatcher;)V
    .locals 1
    .param p1, "dispatcher"    # Landroid/media/IStrategyPreferredDeviceDispatcher;

    .line 578
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->unregisterStrategyPreferredDeviceDispatcher(Landroid/media/IStrategyPreferredDeviceDispatcher;)V

    .line 579
    return-void
.end method
