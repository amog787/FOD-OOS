.class final Lcom/android/server/audio/AudioDeviceBroker;
.super Ljava/lang/Object;
.source "AudioDeviceBroker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;,
        Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;,
        Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;,
        Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;
    }
.end annotation


# static fields
.field private static final BROKER_WAKELOCK_TIMEOUT_MS:J = 0x1388L

.field static final BTA2DP_DOCK_TIMEOUT_MS:I = 0x1f40

.field static final BT_HEADSET_CNCT_TIMEOUT_MS:I = 0xbb8

.field private static final MSG_BROADCAST_AUDIO_BECOMING_NOISY:I = 0xc

.field private static final MSG_BT_HEADSET_CNCT_FAILED:I = 0x9

.field private static final MSG_DISCONNECT_A2DP:I = 0x13

.field private static final MSG_DISCONNECT_A2DP_SINK:I = 0x14

.field private static final MSG_DISCONNECT_BT_HEADSET:I = 0x16

.field private static final MSG_DISCONNECT_BT_HEARING_AID:I = 0x15

.field private static final MSG_HFP_RECONNECT:I = 0x1f

.field private static final MSG_IIL_SET_FORCE_BT_A2DP_USE:I = 0x5

.field private static final MSG_IIL_SET_FORCE_USE:I = 0x4

.field private static final MSG_II_SET_HEARING_AID_VOLUME:I = 0xe

.field private static final MSG_IL_BTA2DP_DOCK_TIMEOUT:I = 0xa

.field private static final MSG_IL_SET_A2DP_SINK_CONNECTION_STATE:I = 0x6

.field private static final MSG_IL_SET_A2DP_SOURCE_CONNECTION_STATE:I = 0x7

.field private static final MSG_IL_SET_HEARING_AID_CONNECTION_STATE:I = 0x8

.field private static final MSG_I_BROADCAST_BT_CONNECTION_STATE:I = 0x3

.field private static final MSG_I_DISCONNECT_BT_SCO:I = 0x10

.field private static final MSG_I_SET_AVRCP_ABSOLUTE_VOLUME:I = 0xf

.field private static final MSG_L_A2DP_ACTIVE_DEVICE_CHANGE:I = 0x12

.field private static final MSG_L_A2DP_ACTIVE_DEVICE_CHANGE_EXT:I = 0x1d

.field private static final MSG_L_A2DP_DEVICE_CONFIG_CHANGE:I = 0xb

.field private static final MSG_L_A2DP_DEVICE_CONNECTION_CHANGE_EXT:I = 0x1b

.field private static final MSG_L_BT_SERVICE_CONNECTED_PROFILE_A2DP:I = 0x17

.field private static final MSG_L_BT_SERVICE_CONNECTED_PROFILE_A2DP_SINK:I = 0x18

.field private static final MSG_L_BT_SERVICE_CONNECTED_PROFILE_HEADSET:I = 0x1a

.field private static final MSG_L_BT_SERVICE_CONNECTED_PROFILE_HEARING_AID:I = 0x19

.field private static final MSG_L_HEARING_AID_DEVICE_CONNECTION_CHANGE_EXT:I = 0x1c

.field private static final MSG_L_SCOCLIENT_DIED:I = 0x1e

.field private static final MSG_L_SET_WIRED_DEVICE_CONNECTION_STATE:I = 0x2

.field private static final MSG_REPORT_NEW_ROUTES:I = 0xd

.field private static final MSG_RESTORE_DEVICES:I = 0x1

.field private static final MSG_STREAM_VOICE_UNMUTE:I = 0x20

.field private static final MSG_TOGGLE_HDMI:I = 0x11

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AS.AudioDeviceBroker"

.field private static sLastDeviceConnectMsgTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sLastDeviceConnectionMsgTimeLock"
        }
    .end annotation
.end field

.field private static final sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;


# instance fields
.field private final mAudioService:Lcom/android/server/audio/AudioService;

.field private mBluetoothA2dpEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDeviceStateLock"
        }
    .end annotation
.end field

.field private mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

.field private mBrokerThread:Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;

.field private final mBtHelper:Lcom/android/server/audio/BtHelper;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

.field private final mDeviceStateLock:Ljava/lang/Object;

.field private mForcedUseForComm:I

.field private mForcedUseForCommExt:I

.field private mScoFailState:Z

.field final mSetModeLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;

    .line 90
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectMsgTime:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/audio/AudioService;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mScoFailState:Z

    .line 104
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    .line 108
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->setupMessaging(Landroid/content/Context;)V

    .line 111
    new-instance v1, Lcom/android/server/audio/BtHelper;

    invoke-direct {v1, p0}, Lcom/android/server/audio/BtHelper;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 112
    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory;

    invoke-direct {v1, p0}, Lcom/android/server/audio/AudioDeviceInventory;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 114
    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    .line 115
    iget v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    .line 117
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/audio/AudioDeviceBroker;Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;)Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;
    .param p1, "x1"    # Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    .line 59
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/server/audio/AudioDeviceBroker;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;

    .line 59
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;

    .line 59
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;

    .line 59
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;

    .line 59
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/audio/AudioDeviceBroker;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceBroker;->onSetForceUse(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;

    .line 59
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/audio/AudioDeviceBroker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;

    .line 59
    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->onSendBecomingNoisyIntent()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/audio/AudioDeviceBroker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;

    .line 59
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mScoFailState:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/audio/AudioDeviceBroker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;
    .param p1, "x1"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mScoFailState:Z

    return p1
.end method

.method static synthetic access$900(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 59
    invoke-static {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isMessageHandledUnderWakelock(I)Z

    move-result v0

    return v0
.end method

.method private static isMessageHandledUnderWakelock(I)Z
    .locals 1
    .param p0, "msgId"    # I

    .line 1040
    const/4 v0, 0x2

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

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    const/16 v0, 0x12

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1054
    const/4 v0, 0x0

    return v0

    .line 1052
    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onSendBecomingNoisyIntent()V
    .locals 3

    .line 699
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v2, "broadcast ACTION_AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 700
    const-string v2, "AS.AudioDeviceBroker"

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    .line 699
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 701
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 702
    return-void
.end method

.method private onSetForceUse(IILjava/lang/String;)V
    .locals 3
    .param p1, "useCase"    # I
    .param p2, "config"    # I
    .param p3, "eventSource"    # Ljava/lang/String;

    .line 684
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 685
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->postReportNewRoutes()V

    .line 687
    :cond_0
    sget-object v1, Lcom/android/server/audio/AudioService;->sForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 689
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 692
    new-array v0, v0, [I

    const/16 v1, 0xab

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 693
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioService;->postCallDeviceChange(I)V

    .line 696
    :cond_1
    return-void
.end method

.method private sendBroadcastToAll(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1155
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1156
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1157
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1159
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1161
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1162
    nop

    .line 1163
    return-void

    .line 1161
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendIILMsg(IIIILjava/lang/Object;I)V
    .locals 7
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .line 1110
    if-nez p2, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeMessages(I)V

    goto :goto_0

    .line 1112
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1113
    return-void

    .line 1116
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/server/audio/AudioDeviceBroker;->isMessageHandledUnderWakelock(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1117
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1119
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1122
    goto :goto_1

    .line 1120
    :catch_0
    move-exception v2

    .line 1121
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "AS.AudioDeviceBroker"

    const-string v4, "Exception acquiring wakelock"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1123
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1126
    .end local v0    # "identity":J
    :cond_2
    sget-object v0, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1127
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, p6

    add-long/2addr v1, v3

    .line 1129
    .local v1, "time":J
    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/16 v3, 0x12

    if-eq p1, v3, :cond_3

    const/4 v3, 0x6

    if-eq p1, v3, :cond_3

    const/4 v3, 0x7

    if-eq p1, v3, :cond_3

    const/16 v3, 0x8

    if-eq p1, v3, :cond_3

    const/16 v3, 0xa

    if-eq p1, v3, :cond_3

    const/16 v3, 0xb

    if-eq p1, v3, :cond_3

    goto :goto_2

    .line 1137
    :cond_3
    sget-wide v3, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectMsgTime:J

    cmp-long v3, v3, v1

    if-ltz v3, :cond_4

    .line 1139
    sget-wide v3, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectMsgTime:J

    const-wide/16 v5, 0x1e

    add-long/2addr v3, v5

    move-wide v1, v3

    .line 1141
    :cond_4
    sput-wide v1, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectMsgTime:J

    .line 1142
    nop

    .line 1147
    :goto_2
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {v4, p1, p3, p4, p5}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1149
    nop

    .end local v1    # "time":J
    monitor-exit v0

    .line 1150
    return-void

    .line 1149
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

    .line 1105
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1106
    return-void
.end method

.method private sendIIMsgNoDelay(IIII)V
    .locals 7
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    .line 1093
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1094
    return-void
.end method

.method private sendILMsg(IIILjava/lang/Object;I)V
    .locals 7
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg"    # I
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "delay"    # I

    .line 1073
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1074
    return-void
.end method

.method private sendILMsgNoDelay(IIILjava/lang/Object;)V
    .locals 7
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 1097
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1098
    return-void
.end method

.method private sendIMsg(IIII)V
    .locals 7
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg"    # I
    .param p4, "delay"    # I

    .line 1081
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1082
    return-void
.end method

.method private sendIMsgNoDelay(III)V
    .locals 7
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg"    # I

    .line 1089
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1090
    return-void
.end method

.method private sendLMsg(IILjava/lang/Object;I)V
    .locals 7
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "delay"    # I

    .line 1077
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1078
    return-void
.end method

.method private sendLMsgNoDelay(IILjava/lang/Object;)V
    .locals 7
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1101
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1102
    return-void
.end method

.method private sendMsg(III)V
    .locals 7
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "delay"    # I

    .line 1069
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1070
    return-void
.end method

.method private sendMsgNoDelay(II)V
    .locals 7
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I

    .line 1085
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1086
    return-void
.end method

.method private setupMessaging(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctxt"    # Landroid/content/Context;

    .line 711
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 712
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "handleAudioDeviceEvent"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 714
    new-instance v1, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;

    invoke-direct {v1, p0}, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerThread:Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;

    .line 715
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerThread:Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;->start()V

    .line 716
    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->waitForBrokerHandlerCreation()V

    .line 717
    return-void
.end method

.method private waitForBrokerHandlerCreation()V
    .locals 3

    .line 720
    monitor-enter p0

    .line 721
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 723
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 726
    goto :goto_0

    .line 724
    :catch_0
    move-exception v0

    .line 725
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "AS.AudioDeviceBroker"

    const-string v2, "Interruption while waiting on BrokerHandler"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    nop

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 728
    :cond_0
    monitor-exit p0

    .line 729
    return-void

    .line 728
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method cancelA2dpDeviceConnectionState()V
    .locals 2

    .line 652
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeMessages(I)V

    .line 653
    return-void
.end method

.method cancelA2dpDockTimeout()V
    .locals 2

    .line 626
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeMessages(I)V

    .line 627
    return-void
.end method

.method checkMusicActive(ILjava/lang/String;)V
    .locals 1
    .param p1, "deviceType"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .line 473
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioService;->checkMusicActive(ILjava/lang/String;)V

    .line 474
    return-void
.end method

.method checkVolumeCecOnHdmiConnection(ILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .line 478
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioService;->postCheckVolumeCecOnHdmiConnection(ILjava/lang/String;)V

    .line 479
    return-void
.end method

.method disconnectAllBluetoothProfiles()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1}, Lcom/android/server/audio/BtHelper;->disconnectAllBluetoothProfiles()V

    .line 159
    monitor-exit v0

    .line 160
    return-void

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getA2dpCodec(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 673
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 674
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/BtHelper;->getA2dpCodec(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 675
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

    .line 1211
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioService;->getA2dpVolume(ZI)I

    move-result v0

    return v0
.end method

.method getBluetoothA2dpEnabled()Z
    .locals 2

    .line 667
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 668
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    monitor-exit v0

    return v1

    .line 669
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getCurAudioRoutes()Landroid/media/AudioRoutesInfo;
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 381
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->getCurAudioRoutes()Landroid/media/AudioRoutesInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 382
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

    .line 444
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    return v0
.end method

.method getModeOwnerPid()I
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getModeOwnerPid()I

    move-result v0

    return v0
.end method

.method getVssVolumeForDevice(II)I
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "device"    # I

    .line 436
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioService;->getVssVolumeForDevice(II)I

    move-result v0

    return v0
.end method

.method handleCancelFailureToConnectToBtHeadsetService()V
    .locals 2

    .line 618
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeMessages(I)V

    .line 619
    return-void
.end method

.method handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "connect"    # Z
    .param p2, "device"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;

    .line 582
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 583
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/audio/AudioDeviceInventory;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 584
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

    .line 614
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsg(III)V

    .line 615
    return-void
.end method

.method handleSetA2dpSinkConnectionState(ILcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;)V
    .locals 10
    .param p1, "state"    # I
    .param p2, "btDeviceInfo"    # Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDeviceStateLock"
        }
    .end annotation

    .line 590
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 591
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 592
    .local v1, "intState":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    const/16 v3, 0x80

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntent(III)I

    move-result v0

    .line 595
    .local v0, "delay":I
    if-nez p2, :cond_1

    const-string/jumbo v2, "null"

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getBtDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 598
    .local v2, "addr":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetA2dpSinkConnectionState btDevice= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " state= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is dock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-virtual {p2}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getBtDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 598
    const-string v4, "AS.AudioDeviceBroker"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/4 v5, 0x6

    const/4 v6, 0x2

    move-object v4, p0

    move v7, p1

    move-object v8, p2

    move v9, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsg(IIILjava/lang/Object;I)V

    .line 604
    return-void
.end method

.method hasAudioFocusUsers()Z
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->hasAudioFocusUsers()Z

    move-result v0

    return v0
.end method

.method hasMediaDynamicPolicy()Z
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->hasMediaDynamicPolicy()Z

    move-result v0

    return v0
.end method

.method hasScheduledA2dpDeviceConnectionState()Z
    .locals 2

    .line 647
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method hasScheduledA2dpDockTimeout()Z
    .locals 2

    .line 635
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method hasScheduledA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 640
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    new-instance v1, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    invoke-direct {v1, p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isAvrcpAbsoluteVolumeSupported()Z
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 387
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1}, Lcom/android/server/audio/BtHelper;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 388
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isBluetoothA2dpOn()Z
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 393
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    monitor-exit v0

    return v1

    .line 394
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isBluetoothScoOnForApp()Z
    .locals 4

    .line 314
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 316
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

    .line 319
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

    .line 320
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isEUVersion()Z
    .locals 1

    .line 1214
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->isEUVersion()Z

    move-result v0

    return v0
.end method

.method isInCommunication()Z
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    return v0
.end method

.method isSpeakerphoneOn()Z
    .locals 4

    .line 218
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
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

    .line 222
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 223
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onAudioServerDied()V
    .locals 5

    .line 139
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    const-string/jumbo v2, "onAudioServerDied"

    const/4 v3, 0x0

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->onSetForceUse(IILjava/lang/String;)V

    .line 141
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    const-string/jumbo v4, "onAudioServerDied"

    invoke-direct {p0, v1, v2, v4}, Lcom/android/server/audio/AudioDeviceBroker;->onSetForceUse(IILjava/lang/String;)V

    .line 142
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    const/4 v0, 0x1

    invoke-direct {p0, v0, v3}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 145
    return-void

    .line 142
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

    .line 130
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 132
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper;->onSystemReady()V

    .line 133
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 135
    return-void

    .line 133
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker;
    :try_start_4
    throw v2

    .line 134
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

    .line 631
    const/16 v0, 0x12

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 632
    return-void
.end method

.method postA2dpSinkConnection(ILcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "btDeviceInfo"    # Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    .param p3, "delay"    # I

    .line 497
    const/4 v1, 0x6

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsg(IIILjava/lang/Object;I)V

    .line 499
    return-void
.end method

.method postA2dpSourceConnection(ILcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "btDeviceInfo"    # Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    .param p3, "delay"    # I

    .line 503
    const/4 v1, 0x7

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsg(IIILjava/lang/Object;I)V

    .line 505
    return-void
.end method

.method postAccessoryPlugMediaUnmute(I)V
    .locals 1
    .param p1, "device"    # I

    .line 432
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService;->postAccessoryPlugMediaUnmute(I)V

    .line 433
    return-void
.end method

.method postApplyVolumeOnDevice(IILjava/lang/String;)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "device"    # I
    .param p3, "caller"    # Ljava/lang/String;

    .line 448
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->postApplyVolumeOnDevice(IILjava/lang/String;)V

    .line 449
    return-void
.end method

.method postBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 410
    const/16 v0, 0xb

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 411
    return-void
.end method

.method postBluetoothA2dpDeviceConfigChangeExt(Landroid/bluetooth/BluetoothDevice;IIZI)V
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I
    .param p4, "suppressNoisyIntent"    # Z
    .param p5, "a2dpVolume"    # I

    .line 268
    new-instance v6, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;-><init>(Landroid/bluetooth/BluetoothDevice;IIZI)V

    .line 270
    .local v0, "info":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;
    const/16 v1, 0x1d

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 271
    return-void
.end method

.method postBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)V
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I
    .param p4, "suppressNoisyIntent"    # Z
    .param p5, "a2dpVolume"    # I

    .line 256
    new-instance v6, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;-><init>(Landroid/bluetooth/BluetoothDevice;IIZI)V

    .line 261
    .local v0, "info":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;
    const/16 v1, 0x1b

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 262
    return-void
.end method

.method postBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZILjava/lang/String;)V
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "suppressNoisyIntent"    # Z
    .param p4, "musicDevice"    # I
    .param p5, "eventSource"    # Ljava/lang/String;

    .line 294
    new-instance v6, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;-><init>(Landroid/bluetooth/BluetoothDevice;IZILjava/lang/String;)V

    .line 296
    .local v0, "info":Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;
    const/16 v1, 0x1c

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 297
    return-void
.end method

.method postBroadcastBecomingNoisy()V
    .locals 2

    .line 492
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 493
    return-void
.end method

.method postBroadcastScoConnectionState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 488
    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    .line 489
    return-void
.end method

.method postBtA2dpProfileConnected(Landroid/bluetooth/BluetoothA2dp;)V
    .locals 2
    .param p1, "a2dpProfile"    # Landroid/bluetooth/BluetoothA2dp;

    .line 538
    const/16 v0, 0x17

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 539
    return-void
.end method

.method postBtA2dpSinkProfileConnected(Landroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/bluetooth/BluetoothProfile;

    .line 542
    const/16 v0, 0x18

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 543
    return-void
.end method

.method postBtHearingAidProfileConnected(Landroid/bluetooth/BluetoothHearingAid;)V
    .locals 2
    .param p1, "hearingAidProfile"    # Landroid/bluetooth/BluetoothHearingAid;

    .line 550
    const/16 v0, 0x19

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 552
    return-void
.end method

.method postBtHeasetProfileConnected(Landroid/bluetooth/BluetoothHeadset;)V
    .locals 2
    .param p1, "headsetProfile"    # Landroid/bluetooth/BluetoothHeadset;

    .line 546
    const/16 v0, 0x1a

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 547
    return-void
.end method

.method postCancelAutoPlayback()V
    .locals 1

    .line 1197
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->cancelAutoPlayback()V

    .line 1198
    return-void
.end method

.method postDisconnectA2dp()V
    .locals 2

    .line 522
    const/16 v0, 0x13

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 523
    return-void
.end method

.method postDisconnectA2dpSink()V
    .locals 2

    .line 526
    const/16 v0, 0x14

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 527
    return-void
.end method

.method postDisconnectBluetoothSco(I)V
    .locals 2
    .param p1, "exceptPid"    # I

    .line 406
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    .line 407
    return-void
.end method

.method postDisconnectHeadset()V
    .locals 2

    .line 534
    const/16 v0, 0x16

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 535
    return-void
.end method

.method postDisconnectHearingAid()V
    .locals 2

    .line 530
    const/16 v0, 0x15

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 531
    return-void
.end method

.method postHfpReconnectBroadcast(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1203
    const/16 v0, 0x1f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 1204
    return-void
.end method

.method postObserveDevicesForAllStreams()V
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->postObserveDevicesForAllStreams()V

    .line 458
    return-void
.end method

.method postReportNewRoutes()V
    .locals 2

    .line 622
    const/16 v0, 0xd

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 623
    return-void
.end method

.method postScoClientDied(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 555
    const/16 v0, 0x1e

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 556
    return-void
.end method

.method postSetA2dpSourceConnectionState(ILcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "btDeviceInfo"    # Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    .line 608
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 609
    .local v1, "intState":I
    :goto_0
    const/4 v2, 0x7

    invoke-direct {p0, v2, v0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsgNoDelay(IIILjava/lang/Object;)V

    .line 611
    return-void
.end method

.method postSetAvrcpAbsoluteVolumeIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .line 398
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    .line 399
    return-void
.end method

.method postSetHearingAidConnectionState(ILandroid/bluetooth/BluetoothDevice;I)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "delay"    # I

    .line 515
    const/16 v1, 0x8

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsg(IIILjava/lang/Object;I)V

    .line 519
    return-void
.end method

.method postSetHearingAidVolumeIndex(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "streamType"    # I

    .line 402
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendIIMsgNoDelay(IIII)V

    .line 403
    return-void
.end method

.method postSetVolumeIndexOnDevice(IIILjava/lang/String;)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "vssVolIndex"    # I
    .param p3, "device"    # I
    .param p4, "caller"    # Ljava/lang/String;

    .line 453
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioService;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    .line 454
    return-void
.end method

.method postSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;I)V
    .locals 1
    .param p1, "connectionState"    # Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;
    .param p2, "delay"    # I

    .line 509
    const/4 v0, 0x2

    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsg(IILjava/lang/Object;I)V

    .line 510
    return-void
.end method

.method postStartAutoPlayback(II)V
    .locals 7
    .param p1, "delay"    # I
    .param p2, "device"    # I

    .line 1168
    const-string/jumbo v0, "media_session"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1169
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/session/ISessionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionManager;

    move-result-object v1

    .line 1170
    .local v1, "sessionManagerService":Landroid/media/session/ISessionManager;
    const/4 v2, 0x0

    .line 1171
    .local v2, "packageName":Ljava/lang/String;
    const/4 v3, 0x1

    .line 1173
    .local v3, "sendKey":Z
    :try_start_0
    invoke-interface {v1}, Landroid/media/session/ISessionManager;->getCurrentMediaButtonPackageName()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 1176
    goto :goto_0

    .line 1174
    :catch_0
    move-exception v4

    .line 1175
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "AS.AudioDeviceBroker"

    const-string v6, "can not get MEDIA_SESSION_SERVICE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    const/high16 v4, 0x4000000

    if-ne p2, v4, :cond_0

    .line 1180
    const/16 p1, 0x1f4

    .line 1183
    :cond_0
    if-eqz v2, :cond_2

    const-string v5, "com.tencent.qqmusic"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_2

    .line 1184
    :cond_1
    const/16 p1, 0x708

    .line 1185
    if-ne p2, v4, :cond_2

    .line 1186
    const/16 p1, 0xc1c

    .line 1189
    :cond_2
    if-eqz v2, :cond_3

    const-string/jumbo v4, "tv.danmaku.bili"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1190
    const/4 v3, 0x0

    .line 1192
    :cond_3
    if-eqz v3, :cond_4

    .line 1193
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v4, p1}, Lcom/android/server/audio/AudioService;->startAutoPlayback(I)V

    .line 1195
    :cond_4
    return-void
.end method

.method receiveBtEvent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 169
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 171
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v2, p1}, Lcom/android/server/audio/BtHelper;->receiveBtEvent(Landroid/content/Intent;)V

    .line 172
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 174
    return-void

    .line 172
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

    .line 173
    .restart local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker;
    .restart local p1    # "intent":Landroid/content/Intent;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method setA2dpDockTimeout(Ljava/lang/String;II)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "a2dpCodec"    # I
    .param p3, "delayMs"    # I

    .line 657
    const/16 v1, 0xa

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p2

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsg(IIILjava/lang/Object;I)V

    .line 658
    return-void
.end method

.method setAvrcpAbsoluteVolumeSupported(Z)V
    .locals 2
    .param p1, "supported"    # Z

    .line 661
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 662
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/BtHelper;->setAvrcpAbsoluteVolumeSupported(Z)V

    .line 663
    monitor-exit v0

    .line 664
    return-void

    .line 663
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setBluetoothA2dpOnInt(ZLjava/lang/String;)V
    .locals 4
    .param p1, "on"    # Z
    .param p2, "source"    # Ljava/lang/String;

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setBluetoothA2dpOn("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 567
    const-string v1, ") from u/pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " src:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, "eventSource":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 571
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    .line 572
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeMessages(I)V

    .line 573
    const/4 v2, 0x1

    .line 575
    iget-boolean v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0xa

    .line 573
    :goto_0
    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/audio/AudioDeviceBroker;->onSetForceUse(IILjava/lang/String;)V

    .line 577
    monitor-exit v1

    .line 578
    return-void

    .line 577
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

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    if-ne v1, p1, :cond_0

    .line 179
    monitor-exit v0

    return-void

    .line 181
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    .line 182
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeMessages(I)V

    .line 183
    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 185
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0xa

    :goto_0
    move v7, v1

    .line 183
    move-object v3, p0

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsgNoDelay(IIIILjava/lang/Object;)V

    .line 187
    monitor-exit v0

    .line 188
    return-void

    .line 187
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setBluetoothScoOn(ZLjava/lang/String;)V
    .locals 10
    .param p1, "on"    # Z
    .param p2, "eventSource"    # Ljava/lang/String;

    .line 325
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

    .line 327
    iget-object v7, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v7

    .line 328
    const/16 v0, 0x20

    const/4 v8, 0x3

    const/4 v9, 0x0

    if-eqz p1, :cond_1

    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1}, Lcom/android/server/audio/BtHelper;->isBluetoothScoOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1}, Lcom/android/server/audio/BtHelper;->isBluetoothAudioNotConnectedToEarbud()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    const-string v1, "AS.AudioDeviceBroker"

    const-string/jumbo v2, "setBluetoothScoOn(true) failed because device is not in audio connected mode"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iput v8, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    .line 337
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mScoFailState:Z

    .line 338
    invoke-static {v9, v1}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 339
    const-string v1, "AS.AudioDeviceBroker"

    const-string/jumbo v2, "setBluetoothScoOn setStream STREAM_VOICE_CALL Mute"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/16 v1, 0x3e8

    invoke-direct {p0, v0, v9, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsg(III)V

    .line 342
    monitor-exit v7

    return-void

    .line 345
    :cond_0
    iput v8, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    goto :goto_0

    .line 346
    :cond_1
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    if-ne v1, v8, :cond_2

    .line 347
    iput v9, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    .line 349
    :cond_2
    :goto_0
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    .line 351
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

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BT_SCO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    const-string/jumbo v2, "on"

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "off"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 355
    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsgNoDelay(IIIILjava/lang/Object;)V

    .line 357
    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x2

    iget v5, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsgNoDelay(IIIILjava/lang/Object;)V

    .line 361
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    if-ne v1, v8, :cond_4

    .line 362
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mScoFailState:Z

    if-eqz v1, :cond_4

    .line 363
    const-string v1, "AS.AudioDeviceBroker"

    const-string/jumbo v2, "setBluetoothScoOn sucess setStream STREAM_VOICE_CALL unMute"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-direct {p0, v0, v9, v9}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsg(III)V

    .line 368
    :cond_4
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->postUpdateRingerModeServiceInt()V

    .line 371
    return-void

    .line 368
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method setBluetoothScoOnByApp(Z)V
    .locals 4
    .param p1, "on"    # Z

    .line 301
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    const/4 v1, 0x3

    if-eqz p1, :cond_0

    .line 303
    :try_start_0
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    goto :goto_0

    .line 304
    :cond_0
    iget v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    if-ne v2, v1, :cond_1

    .line 305
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    .line 307
    :cond_1
    :goto_0
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

    .line 310
    monitor-exit v0

    .line 311
    return-void

    .line 310
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

    .line 148
    const/4 v1, 0x4

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsgNoDelay(IIIILjava/lang/Object;)V

    .line 150
    return-void
.end method

.method setSpeakerphoneOn(ZLjava/lang/String;)Z
    .locals 7
    .param p1, "on"    # Z
    .param p2, "eventSource"    # Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isSpeakerphoneOn()Z

    move-result v1

    .line 199
    .local v1, "wasOn":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 200
    iget v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 201
    const/4 v4, 0x2

    invoke-virtual {p0, v4, v3, p2}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 203
    :cond_0
    iput v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    goto :goto_0

    .line 204
    :cond_1
    iget v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    if-ne v4, v2, :cond_2

    .line 205
    iput v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    .line 208
    :cond_2
    :goto_0
    iget v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    iput v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    .line 210
    const-string v4, "AS.AudioDeviceBroker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In setSpeakerphoneOn(), mForcedUseForCommExt: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    invoke-virtual {p0, v3, v4, p2}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isSpeakerphoneOn()Z

    move-result v4

    if-eq v1, v4, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    monitor-exit v0

    return v2

    .line 214
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

    .line 230
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioDeviceInventory;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    monitor-exit v0

    .line 233
    return-void

    .line 232
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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSetModeLock"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 417
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/audio/BtHelper;->startBluetoothScoForClient(Landroid/os/IBinder;ILjava/lang/String;)V

    .line 418
    monitor-exit v0

    .line 419
    return-void

    .line 418
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

    .line 374
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 376
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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSetModeLock"
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 424
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/audio/BtHelper;->stopBluetoothScoForClient(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 425
    monitor-exit v0

    .line 426
    return-void

    .line 425
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method toggleHdmiIfConnected_Async()V
    .locals 2

    .line 153
    const/16 v0, 0x11

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 154
    return-void
.end method
