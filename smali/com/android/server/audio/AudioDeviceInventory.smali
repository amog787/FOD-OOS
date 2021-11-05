.class public Lcom/android/server/audio/AudioDeviceInventory;
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
.field private static final BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONNECT_INTENT_KEY_ADDRESS:Ljava/lang/String; = "address"

.field private static final CONNECT_INTENT_KEY_DEVICE_CLASS:Ljava/lang/String; = "class"

.field private static final CONNECT_INTENT_KEY_HAS_CAPTURE:Ljava/lang/String; = "hasCapture"

.field private static final CONNECT_INTENT_KEY_HAS_MIDI:Ljava/lang/String; = "hasMIDI"

.field private static final CONNECT_INTENT_KEY_HAS_PLAYBACK:Ljava/lang/String; = "hasPlayback"

.field private static final CONNECT_INTENT_KEY_PORT_NAME:Ljava/lang/String; = "portName"

.field private static final CONNECT_INTENT_KEY_STATE:Ljava/lang/String; = "state"

.field private static final DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AS.AudioDeviceInventory"

.field private static final autoPlayBlackListedAddr:[Ljava/lang/String;

.field private static final mMetricsId:Ljava/lang/String; = "audio.device."

.field static prevDisconnectedDeviceAddress:Ljava/lang/String;


# instance fields
.field private final mApmConnectedDevices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

.field private final mConnectedDevices:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

.field private mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

.field private final mDevicesLock:Ljava/lang/Object;

.field private mPostA2dpDeviceConfigChange:Z

.field final mPrefDevDispatchers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/media/IStrategyPreferredDeviceDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferredDevices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation
.end field

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
    .locals 5

    .line 184
    const-string v0, "48:F0:7B"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/AudioDeviceInventory;->autoPlayBlackListedAddr:[Ljava/lang/String;

    .line 189
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/audio/AudioDeviceInventory;->prevDisconnectedDeviceAddress:Ljava/lang/String;

    .line 642
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioDeviceInventory;->DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET:Ljava/util/Set;

    .line 643
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 644
    sget-object v0, Lcom/android/server/audio/AudioDeviceInventory;->DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET:Ljava/util/Set;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 645
    sget-object v0, Lcom/android/server/audio/AudioDeviceInventory;->DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET:Ljava/util/Set;

    const/high16 v3, 0x20000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 646
    sget-object v0, Lcom/android/server/audio/AudioDeviceInventory;->DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET:Ljava/util/Set;

    sget-object v4, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_USB_SET:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1293
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioDeviceInventory;->BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;

    .line 1294
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1295
    sget-object v0, Lcom/android/server/audio/AudioDeviceInventory;->BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1296
    sget-object v0, Lcom/android/server/audio/AudioDeviceInventory;->BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;

    const/16 v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1297
    sget-object v0, Lcom/android/server/audio/AudioDeviceInventory;->BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;

    const/16 v1, 0x800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1298
    sget-object v0, Lcom/android/server/audio/AudioDeviceInventory;->BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;

    const/16 v1, 0x1000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1299
    sget-object v0, Lcom/android/server/audio/AudioDeviceInventory;->BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1300
    sget-object v0, Lcom/android/server/audio/AudioDeviceInventory;->BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;

    const/high16 v1, 0x8000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1301
    sget-object v0, Lcom/android/server/audio/AudioDeviceInventory;->BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;

    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1302
    sget-object v0, Lcom/android/server/audio/AudioDeviceInventory;->BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;

    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_USB_SET:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1303
    return-void
.end method

.method constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;)V
    .locals 1
    .param p1, "broker"    # Lcom/android/server/audio/AudioDeviceBroker;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 82
    new-instance v0, Lcom/android/server/audio/AudioDeviceInventory$1;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioDeviceInventory$1;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 145
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Landroid/util/ArrayMap;

    .line 149
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    .line 157
    new-instance v0, Landroid/media/AudioRoutesInfo;

    invoke-direct {v0}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 158
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    .line 162
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPostA2dpDeviceConfigChange:Z

    .line 166
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 167
    invoke-static {}, Lcom/android/server/audio/AudioSystemAdapter;->getDefaultAdapter()Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 168
    return-void
.end method

.method constructor <init>(Lcom/android/server/audio/AudioSystemAdapter;)V
    .locals 1
    .param p1, "audioSystem"    # Lcom/android/server/audio/AudioSystemAdapter;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 82
    new-instance v0, Lcom/android/server/audio/AudioDeviceInventory$1;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioDeviceInventory$1;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 145
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Landroid/util/ArrayMap;

    .line 149
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    .line 157
    new-instance v0, Landroid/media/AudioRoutesInfo;

    invoke-direct {v0}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 158
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    .line 162
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPostA2dpDeviceConfigChange:Z

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 174
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 175
    return-void
.end method

.method private checkSendBecomingNoisyIntentInt(III)I
    .locals 8
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "musicDevice"    # I

    .line 1311
    new-instance v0, Landroid/media/MediaMetrics$Item;

    const-string v1, "audio.device.checkSendBecomingNoisyIntentInt"

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    .line 1313
    invoke-static {p1}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    .line 1315
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 1316
    const-string v2, "connected"

    goto :goto_0

    :cond_0
    const-string v2, "disconnected"

    .line 1314
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 1317
    .local v0, "mmi":Landroid/media/MediaMetrics$Item;
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 1318
    sget-object v2, Landroid/media/MediaMetrics$Property;->DELAY_MS:Landroid/media/MediaMetrics$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 1319
    return v1

    .line 1321
    :cond_1
    sget-object v2, Lcom/android/server/audio/AudioDeviceInventory;->BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1322
    sget-object v2, Landroid/media/MediaMetrics$Property;->DELAY_MS:Landroid/media/MediaMetrics$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 1323
    return v1

    .line 1325
    :cond_2
    const/4 v2, 0x0

    .line 1326
    .local v2, "delay":I
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1327
    .local v3, "devices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 1328
    .local v5, "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    iget v6, v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/high16 v7, -0x80000000

    and-int/2addr v6, v7

    if-nez v6, :cond_3

    sget-object v6, Lcom/android/server/audio/AudioDeviceInventory;->BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;

    iget v7, v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 1329
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1330
    iget v6, v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1332
    .end local v5    # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    :cond_3
    goto :goto_1

    .line 1333
    :cond_4
    const/4 v4, 0x3

    if-nez p3, :cond_5

    .line 1334
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v5, v4}, Lcom/android/server/audio/AudioDeviceBroker;->getDeviceForStream(I)I

    move-result p3

    .line 1340
    :cond_5
    if-eq p1, p3, :cond_6

    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioDeviceBroker;->isInCommunication()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1341
    :cond_6
    invoke-static {v3, p1}, Landroid/media/AudioSystem;->isSingleAudioDeviceType(Ljava/util/Set;I)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1342
    invoke-virtual {v5}, Lcom/android/server/audio/AudioDeviceBroker;->hasMediaDynamicPolicy()Z

    move-result v5

    if-nez v5, :cond_8

    const v5, 0x8000

    if-eq p3, v5, :cond_8

    .line 1344
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v5, v4, v1}, Lcom/android/server/audio/AudioSystemAdapter;->isStreamActive(II)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1345
    invoke-virtual {v4}, Lcom/android/server/audio/AudioDeviceBroker;->hasAudioFocusUsers()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1348
    sget-object v4, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v5, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v6, "dropping ACTION_AUDIO_BECOMING_NOISY"

    invoke-direct {v5, v6}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1349
    const-string v6, "AS.AudioDeviceInventory"

    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v5

    .line 1348
    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1350
    sget-object v4, Landroid/media/MediaMetrics$Property;->DELAY_MS:Landroid/media/MediaMetrics$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 1351
    return v1

    .line 1353
    :cond_7
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->postBroadcastBecomingNoisy()V

    .line 1354
    const/16 v1, 0x2bc

    const-string v4, "audio.sys.noisy.broadcast.delay"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1357
    :cond_8
    sget-object v1, Landroid/media/MediaMetrics$Property;->DELAY_MS:Landroid/media/MediaMetrics$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 1358
    return v2
.end method

.method private configureHdmiPlugIntent(Landroid/content/Intent;I)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "state"    # I

    .line 1485
    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1486
    const-string v2, "android.media.extra.AUDIO_PLUG_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1487
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1488
    return-void

    .line 1490
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1491
    .local v3, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    new-array v4, v2, [I

    .line 1492
    .local v4, "portGeneration":[I
    invoke-static {v3, v4}, Landroid/media/AudioSystem;->listAudioPorts(Ljava/util/ArrayList;[I)I

    move-result v5

    .line 1493
    .local v5, "status":I
    if-eqz v5, :cond_1

    .line 1494
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

    .line 1495
    return-void

    .line 1497
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

    .line 1498
    .local v7, "port":Landroid/media/AudioPort;
    instance-of v8, v7, Landroid/media/AudioDevicePort;

    if-nez v8, :cond_2

    .line 1499
    goto :goto_0

    .line 1501
    :cond_2
    move-object v8, v7

    check-cast v8, Landroid/media/AudioDevicePort;

    .line 1502
    .local v8, "devicePort":Landroid/media/AudioDevicePort;
    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->type()I

    move-result v9

    const/16 v10, 0x400

    if-eq v9, v10, :cond_3

    .line 1503
    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->type()I

    move-result v9

    const/high16 v10, 0x40000

    if-eq v9, v10, :cond_3

    .line 1504
    goto :goto_0

    .line 1507
    :cond_3
    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v9

    invoke-static {v9}, Landroid/media/AudioFormat;->filterPublicFormats([I)[I

    move-result-object v9

    .line 1508
    .local v9, "formats":[I
    array-length v10, v9

    const/4 v11, 0x0

    if-lez v10, :cond_6

    .line 1509
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1510
    .local v10, "encodingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v12, v9

    move v13, v11

    :goto_1
    if-ge v13, v12, :cond_5

    aget v14, v9, v13

    .line 1512
    .local v14, "format":I
    if-eqz v14, :cond_4

    .line 1513
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1510
    .end local v14    # "format":I
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1516
    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v12

    sget-object v13, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$BF-h0pJdMg-xR5-FyHERBLWDjA0;->INSTANCE:Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$BF-h0pJdMg-xR5-FyHERBLWDjA0;

    invoke-interface {v12, v13}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v12

    .line 1517
    .local v12, "encodingArray":[I
    const-string v13, "android.media.extra.ENCODINGS"

    invoke-virtual {v0, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1520
    .end local v10    # "encodingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12    # "encodingArray":[I
    :cond_6
    const/4 v10, 0x0

    .line 1521
    .local v10, "maxChannels":I
    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v12

    array-length v13, v12

    :goto_2
    if-ge v11, v13, :cond_8

    aget v14, v12, v11

    .line 1522
    .local v14, "mask":I
    invoke-static {v14}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v15

    .line 1523
    .local v15, "channelCount":I
    if-le v15, v10, :cond_7

    .line 1524
    move v10, v15

    .line 1521
    .end local v14    # "mask":I
    .end local v15    # "channelCount":I
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1527
    :cond_8
    const-string v11, "android.media.extra.MAX_CHANNEL_COUNT"

    invoke-virtual {v0, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1528
    .end local v7    # "port":Landroid/media/AudioPort;
    .end local v8    # "devicePort":Landroid/media/AudioDevicePort;
    .end local v9    # "formats":[I
    .end local v10    # "maxChannels":I
    goto :goto_0

    .line 1529
    :cond_9
    return-void
.end method

.method private dispatchPreferredDevice(ILandroid/media/AudioDeviceAttributes;)V
    .locals 3
    .param p1, "strategy"    # I
    .param p2, "device"    # Landroid/media/AudioDeviceAttributes;

    .line 1532
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1533
    .local v0, "nbDispatchers":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1535
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/IStrategyPreferredDeviceDispatcher;

    invoke-interface {v2, p1, p2}, Landroid/media/IStrategyPreferredDeviceDispatcher;->dispatchPrefDeviceChanged(ILandroid/media/AudioDeviceAttributes;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1537
    goto :goto_1

    .line 1536
    :catch_0
    move-exception v2

    .line 1533
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1539
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1540
    return-void
.end method

.method private isCurrentDeviceConnected()Z
    .locals 2

    .line 1282
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$_CdHBhvBDErZWSm39GafCXJiOqQ;

    invoke-direct {v1, p0}, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$_CdHBhvBDErZWSm39GafCXJiOqQ;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$configureHdmiPlugIntent$11(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "i"    # Ljava/lang/Integer;

    .line 1516
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic lambda$disconnectA2dp$4(Landroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .locals 2
    .param p0, "toRemove"    # Landroid/util/ArraySet;
    .param p1, "deviceInfo"    # Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 831
    iget v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 832
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 834
    :cond_0
    return-void
.end method

.method static synthetic lambda$disconnectA2dpSink$6(Landroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .locals 2
    .param p0, "toRemove"    # Landroid/util/ArraySet;
    .param p1, "deviceInfo"    # Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 853
    iget v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/high16 v1, -0x7ffe0000

    if-ne v0, v1, :cond_0

    .line 854
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 856
    :cond_0
    return-void
.end method

.method static synthetic lambda$disconnectHearingAid$8(Landroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .locals 2
    .param p0, "toRemove"    # Landroid/util/ArraySet;
    .param p1, "deviceInfo"    # Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 868
    iget v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/high16 v1, 0x8000000

    if-ne v0, v1, :cond_0

    .line 869
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 871
    :cond_0
    return-void
.end method

.method static synthetic lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Integer;Landroid/media/AudioDeviceAttributes;)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "strategy"    # Ljava/lang/Integer;
    .param p3, "device"    # Landroid/media/AudioDeviceAttributes;

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "strategy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$dump$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "deviceInfo"    # Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$dump$2(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "keyType"    # Ljava/lang/Integer;
    .param p3, "valueAddress"    # Ljava/lang/String;

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") addr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method private makeA2dpDeviceAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "eventSource"    # Ljava/lang/String;
    .param p4, "a2dpCodec"    # I

    .line 1065
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1, p3}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(ZZLjava/lang/String;)V

    .line 1068
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/16 v3, 0x80

    const/4 v4, 0x1

    move-object v5, p1

    move-object v6, p2

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1073
    .local v0, "res":I
    const-string v2, "AS.AudioDeviceInventory"

    if-eqz v0, :cond_0

    .line 1074
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APM failed to make available A2DP device addr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1076
    invoke-virtual {v3, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    .line 1074
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1077
    return-void

    .line 1079
    :cond_0
    sget-object v3, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v4, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A2DP device addr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " now available"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1080
    invoke-virtual {v4, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v4

    .line 1079
    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1083
    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    const/16 v4, 0x80

    invoke-direct {v3, v4, p2, p1, p4}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1085
    .local v3, "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 1086
    .local v5, "diKey":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v5, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Landroid/util/ArrayMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v6, v4}, Lcom/android/server/audio/AudioDeviceBroker;->postAccessoryPlugMediaUnmute(I)V

    .line 1093
    invoke-direct {p0, p2, v1}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    .line 1098
    new-array v1, v1, [I

    const/16 v6, 0x8d

    const/4 v7, 0x0

    aput v6, v1, v7

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1099
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v6, Lcom/android/server/audio/AudioDeviceInventory;->autoPlayBlackListedAddr:[Ljava/lang/String;

    array-length v8, v6

    if-ge v1, v8, :cond_2

    .line 1100
    aget-object v6, v6, v1

    .line 1101
    .local v6, "addr":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1102
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Is auto play blacklist device:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    return-void

    .line 1099
    .end local v6    # "addr":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1110
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->getAutoPlayFlag()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1111
    const-string v1, "A2dp connected, postStartAutoPlayback!"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, v7, v4}, Lcom/android/server/audio/AudioDeviceBroker;->postStartAutoPlayback(II)V

    .line 1113
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, v7}, Lcom/android/server/audio/AudioDeviceBroker;->setAutoPlayFlag(Z)V

    .line 1118
    :cond_3
    return-void
.end method

.method private makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "delayMs"    # I

    .line 1189
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const-string v1, "A2dpSuspended=true"

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    .line 1191
    nop

    .line 1192
    const/16 v0, 0x80

    invoke-static {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1193
    .local v0, "deviceKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 1194
    .local v1, "deviceInfo":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    if-eqz v1, :cond_0

    iget v2, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    goto :goto_0

    .line 1195
    :cond_0
    const/4 v2, 0x0

    :goto_0
    nop

    .line 1197
    .local v2, "a2dpCodec":I
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3, p1, v2, p2}, Lcom/android/server/audio/AudioDeviceBroker;->setA2dpTimeout(Ljava/lang/String;II)V

    .line 1200
    return-void
.end method

.method private makeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V
    .locals 13
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "a2dpCodec"    # I

    .line 1122
    new-instance v0, Landroid/media/MediaMetrics$Item;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio.device.a2dp."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->ENCODING:Landroid/media/MediaMetrics$Key;

    .line 1123
    invoke-static {p2}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 1124
    const-string/jumbo v2, "makeA2dpDeviceUnavailableNow"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 1126
    .local v0, "mmi":Landroid/media/MediaMetrics$Item;
    if-nez p1, :cond_0

    .line 1127
    sget-object v1, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string v2, "address null"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 1128
    return-void

    .line 1133
    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/16 v3, 0x8d

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1136
    const/4 v2, 0x0

    .line 1137
    .local v2, "isTypeCConnected":Z
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 1138
    .local v5, "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    iget v6, v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/high16 v7, 0x4000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_1

    .line 1139
    const/4 v2, 0x1

    .line 1140
    goto :goto_1

    .line 1142
    .end local v5    # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    :cond_1
    goto :goto_0

    .line 1143
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 1144
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceBroker;->postCancelAutoPlayback()V

    .line 1149
    .end local v2    # "isTypeCConnected":Z
    :cond_3
    nop

    .line 1150
    const/16 v2, 0x80

    invoke-static {v2, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1152
    .local v3, "deviceToRemoveKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Landroid/util/ArrayMap;

    .line 1154
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "AS.AudioDeviceInventory"

    if-nez v5, :cond_4

    .line 1156
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A2DP device "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " made unavailable, was not used"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1157
    invoke-virtual {v2, v6}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    .line 1156
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1158
    sget-object v1, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string v2, "A2DP device made unavailable, was not used"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    .line 1160
    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 1161
    return-void

    .line 1165
    :cond_4
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v5, v4}, Lcom/android/server/audio/AudioDeviceBroker;->setAvrcpAbsoluteVolumeSupported(Z)V

    .line 1166
    iget-object v7, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/16 v8, 0x80

    const/4 v9, 0x0

    const-string v11, ""

    move-object v10, p1

    move v12, p2

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 1169
    .local v4, "res":I
    if-eqz v4, :cond_5

    .line 1170
    sget-object v5, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v7, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "APM failed to make unavailable A2DP device addr="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " error="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1172
    invoke-virtual {v7, v6}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v6

    .line 1170
    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    goto :goto_2

    .line 1176
    :cond_5
    sget-object v5, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v7, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "A2DP device addr="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " made unavailable"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1177
    invoke-virtual {v7, v6}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v6

    .line 1176
    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1179
    :goto_2
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    .line 1182
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 1183
    return-void
.end method

.method private makeA2dpSrcAvailable(Ljava/lang/String;)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;

    .line 1205
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/high16 v1, -0x7ffe0000

    const/4 v2, 0x1

    const-string v4, ""

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    .line 1208
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 1209
    invoke-static {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    const-string v4, ""

    invoke-direct {v3, v1, v4, p1, v5}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1208
    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    return-void
.end method

.method private makeA2dpSrcUnavailable(Ljava/lang/String;)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;

    .line 1216
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/high16 v1, -0x7ffe0000

    const/4 v2, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    .line 1219
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 1220
    invoke-static {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1219
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    return-void
.end method

.method private makeHearingAidDeviceAvailable(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "streamType"    # I
    .param p4, "eventSource"    # Ljava/lang/String;

    .line 1226
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/high16 v1, 0x8000000

    invoke-virtual {v0, p3, v1}, Lcom/android/server/audio/AudioDeviceBroker;->getVssVolumeForDevice(II)I

    move-result v0

    .line 1228
    .local v0, "hearingAidVolIndex":I
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, v0, p3}, Lcom/android/server/audio/AudioDeviceBroker;->postSetHearingAidVolumeIndex(II)V

    .line 1230
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/high16 v4, 0x8000000

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    .line 1233
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 1234
    invoke-static {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v1, p2, p1, v5}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1233
    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postAccessoryPlugMediaUnmute(I)V

    .line 1238
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v3, "makeHearingAidDeviceAvailable"

    invoke-virtual {v2, p3, v1, v3}, Lcom/android/server/audio/AudioDeviceBroker;->postApplyVolumeOnDevice(IILjava/lang/String;)V

    .line 1240
    invoke-direct {p0, p2, v5}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    .line 1241
    new-instance v2, Landroid/media/MediaMetrics$Item;

    const-string v3, "audio.device.makeHearingAidDeviceAvailable"

    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    .line 1242
    if-eqz p1, :cond_0

    move-object v4, p1

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    sget-object v3, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    .line 1244
    invoke-static {v1}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v1

    .line 1243
    invoke-virtual {v2, v3, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    .line 1245
    invoke-virtual {v1, v2, p2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->STREAM_TYPE:Landroid/media/MediaMetrics$Key;

    .line 1247
    invoke-static {p3}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v3

    .line 1246
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    .line 1248
    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 1249
    return-void
.end method

.method private makeHearingAidDeviceUnavailable(Ljava/lang/String;)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;

    .line 1253
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/high16 v1, 0x8000000

    const/4 v2, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    .line 1256
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 1257
    invoke-static {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1256
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    .line 1260
    new-instance v0, Landroid/media/MediaMetrics$Item;

    const-string v2, "audio.device.makeHearingAidDeviceUnavailable"

    invoke-direct {v0, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    .line 1261
    if-eqz p1, :cond_0

    move-object v3, p1

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v2, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    .line 1263
    invoke-static {v1}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v1

    .line 1262
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 1264
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 1265
    return-void
.end method

.method private sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;

    .line 1373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendDeviceConnectionIntent(dev:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1374
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

    .line 1373
    const-string v1, "AS.AudioDeviceInventory"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1379
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, ""

    const/high16 v2, 0x4000000

    const/16 v3, 0x400

    const/high16 v4, -0x7e000000

    const/4 v5, 0x0

    const-string/jumbo v6, "microphone"

    const-string v7, "android.intent.action.HEADSET_PLUG"

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

    .line 1390
    :cond_0
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1391
    nop

    .line 1393
    nop

    .line 1392
    invoke-static {v4, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v1

    if-ne v1, v8, :cond_1

    .line 1393
    move v1, v8

    goto :goto_0

    :cond_1
    move v1, v5

    .line 1391
    :goto_0
    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1394
    goto :goto_1

    .line 1407
    :cond_2
    invoke-direct {p0, v0, p2}, Lcom/android/server/audio/AudioDeviceInventory;->configureHdmiPlugIntent(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1386
    :cond_3
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1387
    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1388
    goto :goto_1

    .line 1381
    :cond_4
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1382
    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1383
    goto :goto_1

    .line 1396
    :cond_5
    invoke-static {v2, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v1

    if-ne v1, v8, :cond_8

    .line 1398
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1399
    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1411
    :goto_1
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    .line 1412
    return-void

    .line 1415
    :cond_6
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1416
    const-string v1, "address"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1417
    const-string/jumbo v1, "portName"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1419
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1421
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1429
    .local v1, "ident":J
    const/4 v6, -0x1

    :try_start_0
    invoke-static {v0, v6}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1432
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1433
    nop

    .line 1437
    new-array v6, v8, [I

    const/16 v7, 0x8d

    aput v7, v6, v5

    invoke-static {v6}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1438
    if-eq p1, v4, :cond_7

    if-eq p1, v3, :cond_7

    if-ne p2, v8, :cond_7

    .line 1439
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3, v5, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postStartAutoPlayback(II)V

    .line 1444
    :cond_7
    return-void

    .line 1432
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1433
    throw v3

    .line 1402
    .end local v1    # "ident":J
    :cond_8
    return-void
.end method

.method private setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fromA2dp"    # Z

    .line 1269
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v0

    .line 1270
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1271
    monitor-exit v0

    return-void

    .line 1273
    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceInventory;->isCurrentDeviceConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1274
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput-object p1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 1275
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postReportNewRoutes(Z)V

    .line 1277
    :cond_2
    monitor-exit v0

    .line 1278
    return-void

    .line 1277
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateAudioRoutes(II)V
    .locals 5
    .param p1, "device"    # I
    .param p2, "state"    # I

    .line 1447
    const/4 v0, 0x0

    .line 1449
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

    .line 1463
    :cond_0
    const/16 v0, 0x10

    goto :goto_0

    .line 1459
    :cond_1
    const/16 v0, 0x8

    .line 1460
    goto :goto_0

    .line 1455
    :cond_2
    const/4 v0, 0x2

    .line 1456
    goto :goto_0

    .line 1451
    :cond_3
    const/4 v0, 0x1

    .line 1452
    nop

    .line 1467
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v1

    .line 1468
    if-nez v0, :cond_4

    .line 1469
    :try_start_0
    monitor-exit v1

    return-void

    .line 1471
    :cond_4
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v2, v2, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 1472
    .local v2, "newConn":I
    if-eqz p2, :cond_5

    .line 1473
    or-int/2addr v2, v0

    goto :goto_1

    .line 1475
    :cond_5
    not-int v3, v0

    and-int/2addr v2, v3

    .line 1477
    :goto_1
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v3, v3, Landroid/media/AudioRoutesInfo;->mainType:I

    if-eq v2, v3, :cond_6

    .line 1478
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput v2, v3, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 1479
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->postReportNewRoutes(Z)V

    .line 1481
    .end local v2    # "newConn":I
    :cond_6
    monitor-exit v1

    .line 1482
    return-void

    .line 1481
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

    .line 890
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 891
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v1

    monitor-exit v0

    return v1

    .line 892
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method disconnectA2dp()V
    .locals 5

    .line 827
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 828
    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 830
    .local v1, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$BMFj2tw2PdB9dFQB6gMjDjefzwg;

    invoke-direct {v3, v1}, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$BMFj2tw2PdB9dFQB6gMjDjefzwg;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 835
    new-instance v2, Landroid/media/MediaMetrics$Item;

    const-string v3, "audio.device.disconnectA2dp"

    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 836
    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 837
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 838
    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v3}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v2

    .line 841
    .local v2, "delay":I
    invoke-virtual {v1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$Jg62meZgoWI_a0zxOvpWdJWRPfI;

    invoke-direct {v4, p0, v2}, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$Jg62meZgoWI_a0zxOvpWdJWRPfI;-><init>(Lcom/android/server/audio/AudioDeviceInventory;I)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 845
    .end local v1    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v2    # "delay":I
    :cond_0
    monitor-exit v0

    .line 846
    return-void

    .line 845
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method disconnectA2dpSink()V
    .locals 4

    .line 849
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 850
    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 852
    .local v1, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$Kq15BolmuFXaWWabjDNQiScRxjo;

    invoke-direct {v3, v1}, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$Kq15BolmuFXaWWabjDNQiScRxjo;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 857
    new-instance v2, Landroid/media/MediaMetrics$Item;

    const-string v3, "audio.device.disconnectA2dpSink"

    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 858
    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 859
    invoke-virtual {v1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$A06w_GDNkrLVK3IhlqiuSJkZdos;

    invoke-direct {v3, p0}, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$A06w_GDNkrLVK3IhlqiuSJkZdos;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 860
    .end local v1    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    monitor-exit v0

    .line 861
    return-void

    .line 860
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method disconnectHearingAid()V
    .locals 5

    .line 864
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 865
    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 867
    .local v1, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$2HRlO1Fuzgf97A2Y249yqOtNAlc;

    invoke-direct {v3, v1}, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$2HRlO1Fuzgf97A2Y249yqOtNAlc;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 872
    new-instance v2, Landroid/media/MediaMetrics$Item;

    const-string v3, "audio.device.disconnectHearingAid"

    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 873
    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 874
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 875
    const/high16 v2, 0x8000000

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v3}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v2

    .line 877
    .local v2, "delay":I
    invoke-virtual {v1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$7s2_dtMUrYgHtM2Mpc1sS0XgWCw;

    invoke-direct {v4, p0}, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$7s2_dtMUrYgHtM2Mpc1sS0XgWCw;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 882
    .end local v1    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v2    # "delay":I
    :cond_0
    monitor-exit v0

    .line 883
    return-void

    .line 882
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Preferred devices for strategy:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$X6RLjT4CIM4r8i0wBWo1TE_1qak;

    invoke-direct {v2, p1, p2}, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$X6RLjT4CIM4r8i0wBWo1TE_1qak;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Connected devices:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    new-instance v2, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$YxgcWZ4jspoxzltUgvW9l8k40io;

    invoke-direct {v2, p1, p2}, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$YxgcWZ4jspoxzltUgvW9l8k40io;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "APM Connected device (A2DP sink only):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$7CtpUHI2aS8Sdar40vc2ScvU1zA;

    invoke-direct {v1, p1, p2}, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$7CtpUHI2aS8Sdar40vc2ScvU1zA;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 266
    return-void
.end method

.method getCurAudioRoutes()Landroid/media/AudioRoutesInfo;
    .locals 1

    .line 904
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    return-object v0
.end method

.method handleBluetoothA2dpActiveDeviceChangeExt(Landroid/bluetooth/BluetoothDevice;IIZI)V
    .locals 10
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I
    .param p4, "suppressNoisyIntent"    # Z
    .param p5, "a2dpVolume"    # I

    .line 969
    if-nez p2, :cond_0

    .line 970
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)V

    .line 974
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/AudioDeviceInventory;->prevDisconnectedDeviceAddress:Ljava/lang/String;

    .line 976
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->SetA2dpActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 977
    return-void

    .line 980
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 981
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 982
    .local v1, "address":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, p1}, Lcom/android/server/audio/AudioDeviceBroker;->getA2dpCodec(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 983
    .local v2, "a2dpCodec":I
    const/16 v3, 0x80

    invoke-static {v3, v1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 985
    .local v4, "deviceKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 986
    .local v5, "deviceInfo":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    if-eqz v5, :cond_2

    .line 989
    sget-object v3, Lcom/android/server/audio/AudioDeviceInventory;->prevDisconnectedDeviceAddress:Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/audio/AudioDeviceInventory;->prevDisconnectedDeviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 990
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPostA2dpDeviceConfigChange:Z

    .line 994
    :cond_1
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V

    .line 995
    monitor-exit v0

    return-void

    .line 997
    :cond_2
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 998
    .local v7, "existingDevice":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    iget v8, v8, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    if-eq v8, v3, :cond_3

    .line 999
    goto :goto_0

    .line 1002
    :cond_3
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    new-instance v8, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 1004
    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v3, v9, v1, v2}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1003
    invoke-virtual {v6, v4, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    iget-object v3, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/android/server/audio/BtHelper;->isTwsPlusSwitch(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1007
    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->SetA2dpActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 1009
    const-string v3, "AS.AudioDeviceInventory"

    const-string v6, "TWS+ device switch"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    monitor-exit v0

    return-void

    .line 1013
    :cond_4
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v6, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    invoke-direct {v6, p1, p5, v2}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;II)V

    invoke-virtual {v3, v6}, Lcom/android/server/audio/AudioDeviceBroker;->postA2dpActiveDeviceChange(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;)V

    .line 1016
    monitor-exit v0

    return-void

    .line 1018
    .end local v1    # "address":Ljava/lang/String;
    .end local v2    # "a2dpCodec":I
    .end local v4    # "deviceKey":Ljava/lang/String;
    .end local v5    # "deviceInfo":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .end local v7    # "existingDevice":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;>;"
    :cond_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1020
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)V

    .line 1022
    return-void

    .line 1018
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z
    .locals 18
    .param p1, "connect"    # Z
    .param p2, "device"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;

    .line 771
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDeviceConnection("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " dev:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " address:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " name:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 771
    const-string v3, "AS.AudioDeviceInventory"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    new-instance v0, Landroid/media/MediaMetrics$Item;

    const-string v3, "audio.device.handleDeviceConnection"

    invoke-direct {v0, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    .line 776
    invoke-virtual {v0, v3, v10}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v3, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    .line 777
    invoke-static/range {p2 .. p2}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v3, Landroid/media/MediaMetrics$Property;->MODE:Landroid/media/MediaMetrics$Key;

    .line 778
    if-eqz v2, :cond_0

    .line 779
    const-string v4, "connect"

    goto :goto_0

    :cond_0
    const-string v4, "disconnect"

    .line 778
    :goto_0
    invoke-virtual {v0, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v3, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    .line 780
    invoke-virtual {v0, v3, v11}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v12

    .line 781
    .local v12, "mmi":Landroid/media/MediaMetrics$Item;
    iget-object v13, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v13

    .line 782
    :try_start_0
    invoke-static/range {p2 .. p3}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 784
    .local v0, "deviceKey":Ljava/lang/String;
    const-string v3, "AS.AudioDeviceInventory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deviceKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v3, v1, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-object v14, v3

    .line 787
    .local v14, "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    const/4 v8, 0x0

    if-eqz v14, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v8

    :goto_1
    move v7, v3

    .line 789
    .local v7, "isConnected":Z
    const-string v3, "AS.AudioDeviceInventory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deviceInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is(already)Connected:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    if-eqz v2, :cond_3

    if-nez v7, :cond_3

    .line 792
    iget-object v3, v1, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/4 v5, 0x1

    const/16 v16, 0x0

    move/from16 v4, p2

    move-object/from16 v6, p3

    move/from16 v17, v7

    .end local v7    # "isConnected":Z
    .local v17, "isConnected":Z
    move-object/from16 v7, p4

    move v15, v8

    move/from16 v8, v16

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 795
    .local v3, "res":I
    if-eqz v3, :cond_2

    .line 796
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not connecting device 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " due to command error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 798
    .local v4, "reason":Ljava/lang/String;
    const-string v5, "AS.AudioDeviceInventory"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    sget-object v5, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v12, v5, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v5

    sget-object v6, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    const-string v7, "disconnected"

    .line 800
    invoke-virtual {v5, v6, v7}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v5

    .line 801
    invoke-virtual {v5}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 802
    monitor-exit v13

    return v15

    .line 804
    .end local v4    # "reason":Ljava/lang/String;
    :cond_2
    iget-object v4, v1, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    new-instance v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-direct {v5, v9, v11, v10, v15}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v4, v0, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    iget-object v4, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v4, v9}, Lcom/android/server/audio/AudioDeviceBroker;->postAccessoryPlugMediaUnmute(I)V

    .line 807
    sget-object v4, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    const-string v5, "connected"

    invoke-virtual {v12, v4, v5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 808
    monitor-exit v13

    const/4 v4, 0x1

    return v4

    .line 791
    .end local v3    # "res":I
    .end local v17    # "isConnected":Z
    .restart local v7    # "isConnected":Z
    :cond_3
    move/from16 v17, v7

    move v15, v8

    .line 809
    .end local v7    # "isConnected":Z
    .restart local v17    # "isConnected":Z
    if-nez v2, :cond_4

    if-eqz v17, :cond_4

    .line 810
    iget-object v3, v1, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    .line 814
    iget-object v3, v1, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    sget-object v3, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    const-string v4, "connected"

    invoke-virtual {v12, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 816
    monitor-exit v13

    const/4 v3, 0x1

    return v3

    .line 818
    :cond_4
    const-string v3, "AS.AudioDeviceInventory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleDeviceConnection() failed, deviceKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", deviceSpec="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", connect="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    nop

    .end local v0    # "deviceKey":Ljava/lang/String;
    .end local v14    # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .end local v17    # "isConnected":Z
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    sget-object v0, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    const-string v3, "disconnected"

    invoke-virtual {v12, v0, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 822
    return v15

    .line 820
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isA2dpDeviceConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1552
    nop

    .line 1553
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1552
    const/16 v1, 0x80

    invoke-static {v1, v0}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1554
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1555
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v1

    return v2

    .line 1556
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public synthetic lambda$disconnectA2dp$5$AudioDeviceInventory(ILjava/lang/String;)V
    .locals 0
    .param p1, "delay"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .line 842
    invoke-direct {p0, p2, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$disconnectA2dpSink$7$AudioDeviceInventory(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 859
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$disconnectHearingAid$9$AudioDeviceInventory(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 879
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeHearingAidDeviceUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$isCurrentDeviceConnected$10$AudioDeviceInventory(Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)Z
    .locals 2
    .param p1, "deviceInfo"    # Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 1283
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$onRestoreDevices$3$AudioDeviceInventory(Ljava/lang/Integer;Landroid/media/AudioDeviceAttributes;)V
    .locals 2
    .param p1, "strategy"    # Ljava/lang/Integer;
    .param p2, "device"    # Landroid/media/AudioDeviceAttributes;

    .line 290
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/audio/AudioSystemAdapter;->setPreferredDeviceForStrategy(ILandroid/media/AudioDeviceAttributes;)I

    return-void
.end method

.method onBluetoothA2dpActiveDeviceChange(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V
    .locals 19
    .param p1, "btInfo"    # Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    .param p2, "event"    # I

    .line 473
    move-object/from16 v8, p0

    move/from16 v9, p2

    new-instance v0, Landroid/media/MediaMetrics$Item;

    const-string v1, "audio.device.onBluetoothA2dpActiveDeviceChange"

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 475
    invoke-static/range {p2 .. p2}, Lcom/android/server/audio/BtHelper;->a2dpDeviceEventToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v10

    .line 477
    .local v10, "mmi":Landroid/media/MediaMetrics$Item;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getBtDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v11

    .line 480
    .local v11, "btDevice":Landroid/bluetooth/BluetoothDevice;
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/android/server/audio/AudioDeviceInventory;->mPostA2dpDeviceConfigChange:Z

    .line 482
    if-nez v11, :cond_0

    .line 483
    sget-object v0, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string v1, "btDevice null"

    invoke-virtual {v10, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 484
    return-void

    .line 487
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBluetoothA2dpActiveDeviceChange btDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioDeviceInventory"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getVolume()I

    move-result v12

    .line 490
    .local v12, "a2dpVolume":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getCodec()I

    move-result v13

    .line 492
    .local v13, "a2dpCodec":I
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, "address":Ljava/lang/String;
    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 494
    const-string v1, ""

    move-object v14, v1

    goto :goto_0

    .line 493
    :cond_1
    move-object v14, v1

    .line 496
    .end local v1    # "address":Ljava/lang/String;
    .local v14, "address":Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onBluetoothA2dpActiveDeviceChange addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-static/range {p2 .. p2}, Lcom/android/server/audio/BtHelper;->a2dpDeviceEventToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 500
    iget-object v15, v8, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v15

    .line 501
    :try_start_0
    iget-object v1, v8, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, v11}, Lcom/android/server/audio/AudioDeviceBroker;->hasScheduledA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_2

    .line 502
    :try_start_1
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v2, "A2dp config change ignored (scheduled connection change)"

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "AS.AudioDeviceInventory"

    .line 504
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    .line 502
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 505
    sget-object v0, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string v1, "A2dp config change ignored"

    invoke-virtual {v10, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 506
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 507
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 608
    :catchall_0
    move-exception v0

    move-object/from16 v18, v10

    goto/16 :goto_5

    .line 509
    :cond_2
    const/16 v1, 0x80

    :try_start_2
    invoke-static {v1, v14}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    .line 511
    .local v7, "key":Ljava/lang/String;
    iget-object v2, v8, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v5, v2

    .line 512
    .local v5, "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    if-nez v5, :cond_3

    .line 513
    :try_start_3
    const-string v0, "AS.AudioDeviceInventory"

    const-string/jumbo v1, "invalid null DeviceInfo in onBluetoothA2dpActiveDeviceChange"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    sget-object v0, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v1, "null DeviceInfo"

    invoke-virtual {v10, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 515
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    .line 518
    :cond_3
    :try_start_4
    sget-object v2, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v10, v2, v14}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    sget-object v3, Landroid/media/MediaMetrics$Property;->ENCODING:Landroid/media/MediaMetrics$Key;

    .line 520
    invoke-static {v13}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    move-result-object v4

    .line 519
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    sget-object v3, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    .line 521
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    sget-object v3, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    iget-object v4, v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    .line 522
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 524
    const/4 v3, 0x1

    if-ne v9, v3, :cond_a

    .line 526
    iget-object v4, v8, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v7}, Landroid/util/ArrayMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    const/4 v4, -0x1

    if-eq v12, v4, :cond_6

    .line 530
    iget-object v4, v8, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v4}, Lcom/android/server/audio/AudioDeviceBroker;->isEUVersion()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 531
    mul-int/lit8 v4, v12, 0xa

    .line 532
    .local v4, "persistA2dpVolume":I
    iget-object v6, v8, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v6}, Lcom/android/server/audio/AudioDeviceBroker;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v6

    .line 533
    .local v6, "isAvrcpAbsVolSupported":Z
    iget-object v3, v8, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3, v0, v4}, Lcom/android/server/audio/AudioDeviceBroker;->getA2dpVolume(ZI)I

    move-result v3

    .line 534
    .local v3, "finalA2dpVolume":I
    const-string v0, "AS.AudioDeviceInventory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBluetoothA2dpActiveDeviceChange persistA2dpVolume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " finalA2dpVolume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isAvrcpAbsVolSupported:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v0, v8, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v1, "onBluetoothA2dpActiveDeviceChange"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v18, v10

    const/4 v2, 0x3

    const/16 v10, 0x80

    .end local v10    # "mmi":Landroid/media/MediaMetrics$Item;
    .local v18, "mmi":Landroid/media/MediaMetrics$Item;
    :try_start_5
    invoke-virtual {v0, v2, v3, v10, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    .line 541
    if-eq v4, v3, :cond_4

    if-eqz v6, :cond_4

    .line 542
    iget-object v0, v8, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    div-int/lit8 v1, v3, 0xa

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postSetAvrcpAbsoluteVolumeIndex(I)V

    .line 544
    .end local v3    # "finalA2dpVolume":I
    .end local v4    # "persistA2dpVolume":I
    .end local v6    # "isAvrcpAbsVolSupported":Z
    :cond_4
    goto :goto_1

    .line 545
    .end local v18    # "mmi":Landroid/media/MediaMetrics$Item;
    .restart local v10    # "mmi":Landroid/media/MediaMetrics$Item;
    :cond_5
    move-object/from16 v18, v10

    .end local v10    # "mmi":Landroid/media/MediaMetrics$Item;
    .restart local v18    # "mmi":Landroid/media/MediaMetrics$Item;
    iget-object v0, v8, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    mul-int/lit8 v1, v12, 0xa

    const-string/jumbo v2, "onBluetoothA2dpActiveDeviceChange"

    const/4 v3, 0x3

    const/16 v4, 0x80

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    goto :goto_1

    .line 527
    .end local v18    # "mmi":Landroid/media/MediaMetrics$Item;
    .restart local v10    # "mmi":Landroid/media/MediaMetrics$Item;
    :cond_6
    move-object/from16 v18, v10

    .line 564
    .end local v10    # "mmi":Landroid/media/MediaMetrics$Item;
    .restart local v18    # "mmi":Landroid/media/MediaMetrics$Item;
    :goto_1
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x8d

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 565
    const/4 v0, 0x0

    .line 566
    .local v0, "autoPlayBlackDevice":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget-object v2, Lcom/android/server/audio/AudioDeviceInventory;->autoPlayBlackListedAddr:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 567
    sget-object v2, Lcom/android/server/audio/AudioDeviceInventory;->autoPlayBlackListedAddr:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 568
    .local v2, "addr":Ljava/lang/String;
    if-eqz v14, :cond_7

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 569
    const-string v3, "AS.AudioDeviceInventory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Is auto play blacklist device:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v0, 0x1

    .line 566
    .end local v2    # "addr":Ljava/lang/String;
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 573
    .end local v1    # "i":I
    :cond_8
    if-nez v0, :cond_9

    .line 574
    iget-object v1, v8, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/16 v2, 0x320

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/AudioDeviceBroker;->postStartAutoPlayback(II)V

    .line 576
    .end local v0    # "autoPlayBlackDevice":Z
    :cond_9
    goto :goto_3

    .line 579
    .end local v18    # "mmi":Landroid/media/MediaMetrics$Item;
    .restart local v10    # "mmi":Landroid/media/MediaMetrics$Item;
    :cond_a
    move-object/from16 v18, v10

    .end local v10    # "mmi":Landroid/media/MediaMetrics$Item;
    .restart local v18    # "mmi":Landroid/media/MediaMetrics$Item;
    if-nez v9, :cond_b

    .line 580
    iget v0, v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    if-eq v0, v13, :cond_b

    .line 581
    iput v13, v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    .line 582
    iget-object v0, v8, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v7, v5}, Ljava/util/LinkedHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    :cond_b
    :goto_3
    iget-object v0, v8, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 587
    invoke-static {v11}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    .line 585
    const/16 v2, 0x80

    invoke-virtual {v0, v2, v14, v1, v13}, Lcom/android/server/audio/AudioSystemAdapter;->handleDeviceConfigChange(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 589
    .local v0, "res":I
    if-eqz v0, :cond_c

    .line 590
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APM handleDeviceConfigChange failed for A2DP device addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " codec="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-static {v13}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v3, "AS.AudioDeviceInventory"

    .line 593
    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    .line 590
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 595
    iget-object v1, v8, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->getDeviceForStream(I)I

    move-result v6

    .line 598
    .local v6, "musicDevice":I
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v10, 0x0

    const/16 v16, -0x1

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v17, v5

    .end local v5    # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .local v17, "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    move v5, v10

    move-object v10, v7

    .end local v7    # "key":Ljava/lang/String;
    .local v10, "key":Ljava/lang/String;
    move/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioDeviceInventory;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IIZII)V

    .line 602
    .end local v6    # "musicDevice":I
    goto :goto_4

    .line 603
    .end local v10    # "key":Ljava/lang/String;
    .end local v17    # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .restart local v5    # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .restart local v7    # "key":Ljava/lang/String;
    :cond_c
    move-object/from16 v17, v5

    move-object v10, v7

    .end local v5    # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .end local v7    # "key":Ljava/lang/String;
    .restart local v10    # "key":Ljava/lang/String;
    .restart local v17    # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APM handleDeviceConfigChange success for A2DP device addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " codec="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    invoke-static {v13}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v3, "AS.AudioDeviceInventory"

    .line 606
    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    .line 603
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 608
    .end local v0    # "res":I
    .end local v10    # "key":Ljava/lang/String;
    .end local v17    # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    :goto_4
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 609
    invoke-virtual/range {v18 .. v18}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 610
    return-void

    .line 608
    .end local v18    # "mmi":Landroid/media/MediaMetrics$Item;
    .local v10, "mmi":Landroid/media/MediaMetrics$Item;
    :catchall_1
    move-exception v0

    move-object/from16 v18, v10

    .end local v10    # "mmi":Landroid/media/MediaMetrics$Item;
    .restart local v18    # "mmi":Landroid/media/MediaMetrics$Item;
    :goto_5
    :try_start_6
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_5
.end method

.method onMakeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "a2dpCodec"    # I

    .line 613
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 614
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V

    .line 615
    monitor-exit v0

    .line 616
    return-void

    .line 615
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onReportNewRoutes()V
    .locals 4

    .line 619
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 620
    .local v0, "n":I
    if-lez v0, :cond_0

    .line 621
    new-instance v1, Landroid/media/MediaMetrics$Item;

    const-string v2, "audio.device.onReportNewRoutes"

    invoke-direct {v1, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/media/MediaMetrics$Property;->OBSERVERS:Landroid/media/MediaMetrics$Key;

    .line 622
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    .line 623
    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 625
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v1

    .line 626
    :try_start_0
    new-instance v2, Landroid/media/AudioRoutesInfo;

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v2, v3}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 627
    .local v2, "routes":Landroid/media/AudioRoutesInfo;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    :goto_0
    if-lez v0, :cond_0

    .line 629
    add-int/lit8 v0, v0, -0x1

    .line 630
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/media/IAudioRoutesObserver;

    .line 632
    .local v1, "obs":Landroid/media/IAudioRoutesObserver;
    :try_start_1
    invoke-interface {v1, v2}, Landroid/media/IAudioRoutesObserver;->dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 633
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    .line 634
    .end local v1    # "obs":Landroid/media/IAudioRoutesObserver;
    :goto_2
    goto :goto_0

    .line 627
    .end local v2    # "routes":Landroid/media/AudioRoutesInfo;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 636
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 637
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->postObserveDevicesForAllStreams()V

    .line 638
    return-void
.end method

.method onRestoreDevices()V
    .locals 9

    .line 277
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 280
    .local v2, "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    iget v4, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/4 v5, 0x1

    iget-object v6, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    iget-object v7, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    iget v8, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    .line 286
    nop

    .end local v2    # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    goto :goto_0

    .line 287
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 288
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 289
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$rVjCbPoeHeOpk1Tf1e7TcZZH4rw;

    invoke-direct {v2, p0}, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$rVjCbPoeHeOpk1Tf1e7TcZZH4rw;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 291
    monitor-exit v1

    .line 292
    return-void

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 287
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method onSaveRemovePreferredDevice(I)V
    .locals 2
    .param p1, "strategy"    # I

    .line 720
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->dispatchPreferredDevice(ILandroid/media/AudioDeviceAttributes;)V

    .line 722
    return-void
.end method

.method onSaveSetPreferredDevice(ILandroid/media/AudioDeviceAttributes;)V
    .locals 2
    .param p1, "strategy"    # I
    .param p2, "device"    # Landroid/media/AudioDeviceAttributes;

    .line 715
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->dispatchPreferredDevice(ILandroid/media/AudioDeviceAttributes;)V

    .line 717
    return-void
.end method

.method public onSetA2dpSinkConnectionState(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V
    .locals 17
    .param p1, "btInfo"    # Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    .param p2, "state"    # I

    .line 299
    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getBtDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 300
    .local v3, "btDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getVolume()I

    move-result v4

    .line 302
    .local v4, "a2dpVolume":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSetA2dpSinkConnectionState btDevice="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " state="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " vol="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "AS.AudioDeviceInventory"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "address":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 307
    const-string v0, ""

    .line 309
    :cond_0
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 310
    const-string v0, ""

    move-object v5, v0

    goto :goto_0

    .line 309
    :cond_1
    move-object v5, v0

    .line 314
    .end local v0    # "address":Ljava/lang/String;
    .local v5, "address":Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_2

    sget-object v0, Lcom/android/server/audio/AudioDeviceInventory;->prevDisconnectedDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 316
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, v1, Lcom/android/server/audio/AudioDeviceInventory;->mPostA2dpDeviceConfigChange:Z

    if-eqz v0, :cond_2

    .line 318
    const-string v0, "AS.AudioDeviceInventory"

    const-string v6, "The same device for mPostA2dpDeviceConfigChange is true,skip A2DP disconnection!"

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-void

    .line 323
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getCodec()I

    move-result v6

    .line 325
    .local v6, "a2dpCodec":I
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v7, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "A2DP sink connected: device addr="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " codec="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-static {v6}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " vol="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v0, v7}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 330
    new-instance v0, Landroid/media/MediaMetrics$Item;

    const-string v7, "audio.device.a2dp"

    invoke-direct {v0, v7}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v7, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    .line 331
    invoke-virtual {v0, v7, v5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v7, Landroid/media/MediaMetrics$Property;->ENCODING:Landroid/media/MediaMetrics$Key;

    .line 332
    invoke-static {v6}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v7, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 333
    const-string/jumbo v8, "onSetA2dpSinkConnectionState"

    invoke-virtual {v0, v7, v8}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v7, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    .line 334
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v7, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    .line 336
    const/4 v8, 0x2

    if-ne v2, v8, :cond_3

    .line 337
    const-string v9, "connected"

    goto :goto_1

    :cond_3
    const-string v9, "disconnected"

    .line 335
    :goto_1
    invoke-virtual {v0, v7, v9}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 340
    iget-object v7, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 341
    nop

    .line 342
    :try_start_0
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 341
    const/16 v9, 0x80

    invoke-static {v9, v0}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "key":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 344
    .local v10, "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    const/4 v11, 0x0

    if-eqz v10, :cond_4

    const/4 v12, 0x1

    goto :goto_2

    :cond_4
    move v12, v11

    .line 346
    .local v12, "isConnected":Z
    :goto_2
    if-eqz v12, :cond_6

    .line 347
    if-ne v2, v8, :cond_5

    .line 350
    iget v8, v10, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    if-eq v6, v8, :cond_b

    .line 351
    iget-object v8, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v8, v3}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_4

    .line 354
    :cond_5
    iget v8, v10, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    invoke-direct {v1, v5, v8}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 356
    :cond_6
    if-ne v2, v8, :cond_a

    .line 358
    const/4 v8, -0x1

    if-eq v4, v8, :cond_9

    .line 361
    iget-object v8, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v8}, Lcom/android/server/audio/AudioDeviceBroker;->isEUVersion()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 362
    mul-int/lit8 v8, v4, 0xa

    .line 363
    .local v8, "persistA2dpVolume":I
    iget-object v14, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v14}, Lcom/android/server/audio/AudioDeviceBroker;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v14

    .line 364
    .local v14, "isAvrcpAbsVolSupported":Z
    iget-object v15, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v15, v11, v8}, Lcom/android/server/audio/AudioDeviceBroker;->getA2dpVolume(ZI)I

    move-result v11

    .line 365
    .local v11, "finalA2dpVolume":I
    const-string v15, "AS.AudioDeviceInventory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "onSetA2dpSinkConnectionState persistA2dpVolume:"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " finalA2dpVolume:"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " isAvrcpAbsVolSupported:"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v15, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v9, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v13, "onSetA2dpSinkConnectionState"

    move-object/from16 v16, v0

    const/16 v0, 0x80

    const/4 v15, 0x3

    .end local v0    # "key":Ljava/lang/String;
    .local v16, "key":Ljava/lang/String;
    invoke-virtual {v9, v15, v11, v0, v13}, Lcom/android/server/audio/AudioDeviceBroker;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    .line 371
    if-eq v8, v11, :cond_7

    if-eqz v14, :cond_7

    .line 372
    iget-object v0, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    div-int/lit8 v9, v11, 0xa

    invoke-virtual {v0, v9}, Lcom/android/server/audio/AudioDeviceBroker;->postSetAvrcpAbsoluteVolumeIndex(I)V

    .line 374
    .end local v8    # "persistA2dpVolume":I
    .end local v11    # "finalA2dpVolume":I
    .end local v14    # "isAvrcpAbsVolSupported":Z
    :cond_7
    goto :goto_3

    .line 375
    .end local v16    # "key":Ljava/lang/String;
    .restart local v0    # "key":Ljava/lang/String;
    :cond_8
    move-object/from16 v16, v0

    .end local v0    # "key":Ljava/lang/String;
    .restart local v16    # "key":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    mul-int/lit8 v8, v4, 0xa

    const-string/jumbo v9, "onSetA2dpSinkConnectionState"

    const/4 v11, 0x3

    const/16 v13, 0x80

    invoke-virtual {v0, v11, v8, v13, v9}, Lcom/android/server/audio/AudioDeviceBroker;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    goto :goto_3

    .line 358
    .end local v16    # "key":Ljava/lang/String;
    .restart local v0    # "key":Ljava/lang/String;
    :cond_9
    move-object/from16 v16, v0

    .line 389
    .end local v0    # "key":Ljava/lang/String;
    .restart local v16    # "key":Ljava/lang/String;
    :goto_3
    invoke-static {v3}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "onSetA2dpSinkConnectionState"

    invoke-direct {v1, v5, v0, v8, v6}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 394
    iget-object v0, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/16 v8, 0x80

    invoke-virtual {v0, v8, v5}, Lcom/android/server/audio/AudioDeviceBroker;->checkMusicActive(ILjava/lang/String;)V

    goto :goto_4

    .line 356
    .end local v16    # "key":Ljava/lang/String;
    .restart local v0    # "key":Ljava/lang/String;
    :cond_a
    move-object/from16 v16, v0

    .line 397
    .end local v0    # "key":Ljava/lang/String;
    .end local v10    # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .end local v12    # "isConnected":Z
    :cond_b
    :goto_4
    monitor-exit v7

    .line 398
    return-void

    .line 397
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onSetA2dpSourceConnectionState(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V
    .locals 10
    .param p1, "btInfo"    # Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    .param p2, "state"    # I

    .line 402
    invoke-virtual {p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getBtDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 404
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

    .line 407
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, "address":Ljava/lang/String;
    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 409
    const-string v1, ""

    .line 412
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 413
    const/high16 v3, -0x7ffe0000

    :try_start_0
    invoke-static {v3, v1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 415
    .local v4, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 416
    .local v5, "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    if-eqz v5, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 418
    .local v6, "isConnected":Z
    :goto_0
    new-instance v7, Landroid/media/MediaMetrics$Item;

    const-string v8, "audio.device.onSetA2dpSourceConnectionState"

    invoke-direct {v7, v8}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    .line 419
    invoke-virtual {v7, v8, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v7

    sget-object v8, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    .line 421
    invoke-static {v3}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v3

    .line 420
    invoke-virtual {v7, v8, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    sget-object v7, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    .line 423
    const/4 v8, 0x2

    if-ne p2, v8, :cond_2

    .line 424
    const-string v9, "connected"

    goto :goto_1

    :cond_2
    const-string v9, "disconnected"

    .line 422
    :goto_1
    invoke-virtual {v3, v7, v9}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    .line 425
    invoke-virtual {v3}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 427
    if-eqz v6, :cond_3

    if-eq p2, v8, :cond_3

    .line 428
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    goto :goto_2

    .line 429
    :cond_3
    if-nez v6, :cond_4

    if-ne p2, v8, :cond_4

    .line 430
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpSrcAvailable(Ljava/lang/String;)V

    .line 432
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .end local v6    # "isConnected":Z
    :cond_4
    :goto_2
    monitor-exit v2

    .line 433
    return-void

    .line 432
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

    .line 437
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 439
    const-string v0, ""

    .line 441
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

    .line 444
    new-instance v1, Landroid/media/MediaMetrics$Item;

    const-string v2, "audio.device.onSetHearingAidConnectionState"

    invoke-direct {v1, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    .line 445
    invoke-virtual {v1, v2, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    const/high16 v3, -0x7ffe0000

    .line 447
    invoke-static {v3}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v3

    .line 446
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    .line 449
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 450
    const-string v4, "connected"

    goto :goto_0

    :cond_1
    const-string v4, "disconnected"

    .line 448
    :goto_0
    invoke-virtual {v1, v2, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->STREAM_TYPE:Landroid/media/MediaMetrics$Key;

    .line 452
    invoke-static {p3}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v4

    .line 451
    invoke-virtual {v1, v2, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    .line 453
    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 455
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 456
    const/high16 v2, 0x8000000

    .line 457
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 456
    invoke-static {v2, v4}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 458
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 459
    .local v4, "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    if-eqz v4, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 461
    .local v5, "isConnected":Z
    :goto_1
    if-eqz v5, :cond_3

    if-eq p2, v3, :cond_3

    .line 462
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->makeHearingAidDeviceUnavailable(Ljava/lang/String;)V

    goto :goto_2

    .line 463
    :cond_3
    if-nez v5, :cond_4

    if-ne p2, v3, :cond_4

    .line 464
    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "onSetHearingAidConnectionState"

    invoke-direct {p0, v0, v3, p3, v6}, Lcom/android/server/audio/AudioDeviceInventory;->makeHearingAidDeviceAvailable(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 467
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .end local v5    # "isConnected":Z
    :cond_4
    :goto_2
    monitor-exit v1

    .line 468
    return-void

    .line 467
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

    .line 651
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;

    invoke-direct {v1, p1}, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;-><init>(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 653
    new-instance v0, Landroid/media/MediaMetrics$Item;

    const-string v1, "audio.device.onSetWiredDeviceConnectionState"

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    iget-object v2, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAddress:Ljava/lang/String;

    .line 655
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    iget v2, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    .line 656
    invoke-static {v2}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    .line 658
    iget v2, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    if-nez v2, :cond_0

    .line 659
    const-string v2, "disconnected"

    goto :goto_0

    :cond_0
    const-string v2, "connected"

    .line 657
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 660
    .local v0, "mmi":Landroid/media/MediaMetrics$Item;
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 661
    :try_start_0
    iget v2, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/server/audio/AudioDeviceInventory;->DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET:Ljava/util/Set;

    iget v5, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    .line 662
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 663
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v5, "onSetWiredDeviceConnectionState state DISCONNECTED"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(ZZLjava/lang/String;)V

    .line 667
    :cond_1
    iget v2, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    iget v2, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    iget-object v5, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAddress:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mName:Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v5, v6}, Lcom/android/server/audio/AudioDeviceInventory;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 670
    sget-object v2, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string v3, "change of connection state failed"

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    .line 671
    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 672
    monitor-exit v1

    return-void

    .line 674
    :cond_3
    iget v2, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    if-eqz v2, :cond_5

    .line 675
    sget-object v2, Lcom/android/server/audio/AudioDeviceInventory;->DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET:Ljava/util/Set;

    iget v3, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 676
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v3, "onSetWiredDeviceConnectionState state not DISCONNECTED"

    invoke-virtual {v2, v4, v4, v3}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(ZZLjava/lang/String;)V

    .line 679
    :cond_4
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget v3, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    iget-object v4, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->checkMusicActive(ILjava/lang/String;)V

    .line 681
    :cond_5
    iget v2, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    const/16 v3, 0x400

    if-ne v2, v3, :cond_6

    .line 682
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget v3, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    iget-object v4, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->checkVolumeCecOnHdmiConnection(ILjava/lang/String;)V

    .line 684
    :cond_6
    iget v2, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    iget v3, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    iget-object v4, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAddress:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mName:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/audio/AudioDeviceInventory;->sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V

    .line 685
    iget v2, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    iget v3, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/audio/AudioDeviceInventory;->updateAudioRoutes(II)V

    .line 686
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 688
    return-void

    .line 686
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method onToggleHdmi()V
    .locals 10

    .line 691
    new-instance v0, Landroid/media/MediaMetrics$Item;

    const-string v1, "audio.device.onToggleHdmi"

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    .line 693
    const/16 v2, 0x400

    invoke-static {v2}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v3

    .line 692
    invoke-virtual {v0, v1, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v7

    .line 694
    .local v7, "mmi":Landroid/media/MediaMetrics$Item;
    iget-object v8, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 696
    :try_start_0
    const-string v0, ""

    invoke-static {v2, v0}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 697
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-object v9, v1

    .line 698
    .local v9, "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    if-nez v9, :cond_0

    .line 699
    const-string v1, "AS.AudioDeviceInventory"

    const-string/jumbo v2, "invalid null DeviceInfo in onToggleHdmi"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    sget-object v1, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v2, "invalid null DeviceInfo"

    invoke-virtual {v7, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 701
    monitor-exit v8

    return-void

    .line 704
    :cond_0
    const/16 v2, 0x400

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, ""

    const-string v6, "android"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioDeviceInventory;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const/16 v2, 0x400

    const/4 v3, 0x1

    const-string v4, ""

    const-string v5, ""

    const-string v6, "android"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioDeviceInventory;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    nop

    .end local v0    # "key":Ljava/lang/String;
    .end local v9    # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    invoke-virtual {v7}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 712
    return-void

    .line 710
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method registerStrategyPreferredDeviceDispatcher(Landroid/media/IStrategyPreferredDeviceDispatcher;)V
    .locals 1
    .param p1, "dispatcher"    # Landroid/media/IStrategyPreferredDeviceDispatcher;

    .line 752
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 753
    return-void
.end method

.method removePreferredDeviceForStrategySync(I)I
    .locals 4
    .param p1, "strategy"    # I

    .line 740
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 741
    .local v0, "identity":J
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v2, p1}, Lcom/android/server/audio/AudioSystemAdapter;->removePreferredDeviceForStrategy(I)I

    move-result v2

    .line 742
    .local v2, "status":I
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 744
    if-nez v2, :cond_0

    .line 745
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postSaveRemovePreferredDeviceForStrategy(I)V

    .line 747
    :cond_0
    return v2
.end method

.method public setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IIZII)V
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I
    .param p4, "suppressNoisyIntent"    # Z
    .param p5, "musicDevice"    # I
    .param p6, "a2dpVolume"    # I

    .line 914
    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/16 v1, 0xb

    if-ne p3, v1, :cond_0

    goto :goto_0

    .line 915
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 917
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 918
    const/16 v2, 0x80

    if-ne p3, v0, :cond_3

    if-nez p4, :cond_3

    .line 920
    if-ne p2, v0, :cond_2

    .line 921
    const/4 v3, 0x1

    goto :goto_1

    .line 922
    :cond_2
    const/4 v3, 0x0

    :goto_1
    nop

    .line 923
    .local v3, "asState":I
    :try_start_0
    invoke-direct {p0, v2, v3, p5}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v4

    move v3, v4

    .line 925
    .local v3, "delay":I
    goto :goto_2

    .line 926
    .end local v3    # "delay":I
    :cond_3
    const/4 v3, 0x0

    .line 930
    .restart local v3    # "delay":I
    :goto_2
    if-nez p2, :cond_5

    .line 931
    nop

    .line 932
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 931
    invoke-static {v2, v4}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 933
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 934
    .local v4, "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    if-eqz v4, :cond_4

    .line 935
    iget v5, v4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    .line 940
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .local v5, "a2dpCodec":I
    goto :goto_3

    .line 937
    .end local v5    # "a2dpCodec":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v4    # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    :cond_4
    const-string v0, "AS.AudioDeviceInventory"

    const-string/jumbo v5, "invalid null DeviceInfo in setBluetoothA2dpDeviceConnectionState"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    monitor-exit v1

    return-void

    .line 941
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    :cond_5
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, p1}, Lcom/android/server/audio/AudioDeviceBroker;->getA2dpCodec(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    move v5, v2

    .line 945
    .restart local v5    # "a2dpCodec":I
    :goto_3
    const-string v2, "AS.AudioDeviceInventory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBluetoothA2dpDeviceConnectionState device: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " state: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " delay(ms): "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " codec:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " suppressNoisyIntent: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 945
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    new-instance v2, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    invoke-direct {v2, p1, p6, v5}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;II)V

    .line 953
    .local v2, "a2dpDeviceInfo":Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    if-ne p3, v0, :cond_6

    .line 954
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p2, v2, v3}, Lcom/android/server/audio/AudioDeviceBroker;->postA2dpSinkConnection(ILcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V

    goto :goto_4

    .line 958
    :cond_6
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p2, v2, v3}, Lcom/android/server/audio/AudioDeviceBroker;->postA2dpSourceConnection(ILcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V

    .line 962
    .end local v2    # "a2dpDeviceInfo":Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    .end local v5    # "a2dpCodec":I
    :goto_4
    monitor-exit v1

    .line 963
    return-void

    .line 962
    .end local v3    # "delay":I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZI)I
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "suppressNoisyIntent"    # Z
    .param p4, "musicDevice"    # I

    .line 1039
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1040
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez p3, :cond_1

    .line 1041
    if-ne p2, v3, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v2

    .line 1042
    .local v4, "intState":I
    :goto_0
    const/high16 v5, 0x8000000

    :try_start_0
    invoke-direct {p0, v5, v4, p4}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v5

    move v4, v5

    .line 1044
    .local v4, "delay":I
    goto :goto_1

    .line 1045
    .end local v4    # "delay":I
    :cond_1
    const/4 v4, 0x0

    .line 1047
    .restart local v4    # "delay":I
    :goto_1
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v5, p2, p1, v4}, Lcom/android/server/audio/AudioDeviceBroker;->postSetHearingAidConnectionState(ILandroid/bluetooth/BluetoothDevice;I)V

    .line 1048
    if-ne p2, v3, :cond_2

    .line 1049
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string v5, "HEARING_AID set to CONNECTED"

    invoke-virtual {v3, v1, v2, v5}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 1052
    :cond_2
    monitor-exit v0

    return v4

    .line 1053
    .end local v4    # "delay":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setDeviceBroker(Lcom/android/server/audio/AudioDeviceBroker;)V
    .locals 0
    .param p1, "broker"    # Lcom/android/server/audio/AudioDeviceBroker;

    .line 178
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 179
    return-void
.end method

.method setPreferredDeviceForStrategySync(ILandroid/media/AudioDeviceAttributes;)I
    .locals 4
    .param p1, "strategy"    # I
    .param p2, "device"    # Landroid/media/AudioDeviceAttributes;

    .line 729
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 730
    .local v0, "identity":J
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/audio/AudioSystemAdapter;->setPreferredDeviceForStrategy(ILandroid/media/AudioDeviceAttributes;)I

    move-result v2

    .line 731
    .local v2, "status":I
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 733
    if-nez v2, :cond_0

    .line 734
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postSaveSetPreferredDeviceForStrategy(ILandroid/media/AudioDeviceAttributes;)V

    .line 736
    :cond_0
    return v2
.end method

.method setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 14
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    .line 1026
    move-object v8, p0

    iget-object v9, v8, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1027
    const/4 v0, 0x0

    move v10, p1

    move/from16 v11, p2

    :try_start_0
    invoke-direct {p0, p1, v11, v0}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v0

    .line 1028
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

    .line 1031
    monitor-exit v9

    return v0

    .line 1032
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

    .line 896
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v0

    .line 897
    :try_start_0
    new-instance v1, Landroid/media/AudioRoutesInfo;

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v1, v2}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 898
    .local v1, "routes":Landroid/media/AudioRoutesInfo;
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 899
    monitor-exit v0

    return-object v1

    .line 900
    .end local v1    # "routes":Landroid/media/AudioRoutesInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method unregisterStrategyPreferredDeviceDispatcher(Landroid/media/IStrategyPreferredDeviceDispatcher;)V
    .locals 1
    .param p1, "dispatcher"    # Landroid/media/IStrategyPreferredDeviceDispatcher;

    .line 757
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 758
    return-void
.end method
