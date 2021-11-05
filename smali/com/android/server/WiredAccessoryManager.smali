.class final Lcom/android/server/WiredAccessoryManager;
.super Ljava/lang/Object;
.source "WiredAccessoryManager.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;,
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
    }
.end annotation


# static fields
.field private static final BIT_HDMI_AUDIO:I = 0x10

.field private static final BIT_HEADSET:I = 0x1

.field private static final BIT_HEADSET_NO_MIC:I = 0x2

.field private static final BIT_LINEOUT:I = 0x20

.field private static final BIT_USB_HEADSET_ANLG:I = 0x4

.field private static final BIT_USB_HEADSET_DGTL:I = 0x8

.field private static final DP_AUDIO_CONNS:[Ljava/lang/String;

.field private static final LOG:Z = true

.field private static final MSG_NEW_DEVICE_STATE:I = 0x1

.field private static final MSG_SYSTEM_READY:I = 0x2

.field private static final NAME_DP_AUDIO:Ljava/lang/String; = "soc:qcom,msm-ext-disp"

.field private static final NAME_H2W:Ljava/lang/String; = "h2w"

.field private static final NAME_HDMI:Ljava/lang/String; = "hdmi"

.field private static final NAME_HDMI_AUDIO:Ljava/lang/String; = "hdmi_audio"

.field private static final NAME_USB_AUDIO:Ljava/lang/String; = "usb_audio"

.field private static final SUPPORTED_HEADSETS:I = 0x3f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private mDpCount:I

.field private final mExtconObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetState:I

.field private final mInputManager:Lcom/android/server/input/InputManagerService;

.field private final mLock:Ljava/lang/Object;

.field private final mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

.field private mSwitchValues:I

.field private final mUseDevInputEventForAudioJack:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    const-class v0, Lcom/android/server/WiredAccessoryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    .line 75
    const-string/jumbo v0, "soc:qcom,msm-ext-disp/1/0"

    const-string/jumbo v1, "soc:qcom,msm-ext-disp/0/0"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/WiredAccessoryManager;->DP_AUDIO_CONNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputManager"    # Lcom/android/server/input/InputManagerService;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    .line 296
    new-instance v0, Lcom/android/server/WiredAccessoryManager$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/WiredAccessoryManager$1;-><init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    .line 101
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 102
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "WiredAccessoryManager"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 103
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 104
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    .line 105
    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 107
    nop

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11100f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    .line 110
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

    invoke-direct {v1, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mExtconObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

    .line 111
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-direct {v1, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    .line 112
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/WiredAccessoryManager;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDevicesState(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000([IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # [I
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 56
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->updateBit([IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .line 56
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/WiredAccessoryManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .line 56
    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager;->onSystemReady()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .line 56
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/WiredAccessoryManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .line 56
    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    return v0
.end method

.method static synthetic access$700()[Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->DP_AUDIO_CONNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/WiredAccessoryManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .line 56
    iget v0, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private onSystemReady()V
    .locals 6

    .line 115
    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    if-eqz v0, :cond_3

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "switchValues":I
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/16 v4, -0x100

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 119
    or-int/lit8 v0, v0, 0x4

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v5, 0x4

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 123
    or-int/lit8 v0, v0, 0x10

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v5, 0x6

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 126
    or-int/lit8 v0, v0, 0x40

    .line 128
    :cond_2
    const-wide/16 v1, 0x0

    const/16 v3, 0x54

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/server/WiredAccessoryManager;->notifyWiredAccessoryChanged(JII)V

    .line 133
    .end local v0    # "switchValues":I
    :cond_3
    invoke-static {}, Lcom/android/server/ExtconUEventObserver;->extconExists()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mExtconObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->uEventCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 134
    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    if-eqz v0, :cond_4

    .line 135
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v1, "Both input event and extcon are used for audio jack, please just choose one."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_4
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mExtconObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

    invoke-static {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->access$000(Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;)V

    goto :goto_0

    .line 140
    :cond_5
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->init()V

    .line 142
    :goto_0
    return-void
.end method

.method private setDeviceStateLocked(IIILjava/lang/String;)V
    .locals 10
    .param p1, "headset"    # I
    .param p2, "headsetState"    # I
    .param p3, "prevHeadsetState"    # I
    .param p4, "headsetNameAddr"    # Ljava/lang/String;

    .line 328
    and-int v0, p2, p1

    and-int v1, p3, p1

    if-eq v0, v1, :cond_c

    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, "outDevice":I
    const/4 v1, 0x0

    .line 333
    .local v1, "inDevice":I
    and-int v2, p2, p1

    if-eqz v2, :cond_0

    .line 334
    const/4 v2, 0x1

    .local v2, "state":I
    goto :goto_0

    .line 336
    .end local v2    # "state":I
    :cond_0
    const/4 v2, 0x0

    .line 339
    .restart local v2    # "state":I
    :goto_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 340
    const/4 v0, 0x4

    .line 341
    const v1, -0x7ffffff0

    goto :goto_1

    .line 342
    :cond_1
    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    .line 343
    const/16 v0, 0x8

    goto :goto_1

    .line 344
    :cond_2
    const/16 v4, 0x20

    if-ne p1, v4, :cond_3

    .line 345
    const/high16 v0, 0x20000

    goto :goto_1

    .line 346
    :cond_3
    const/4 v4, 0x4

    if-ne p1, v4, :cond_4

    .line 347
    const/16 v0, 0x800

    goto :goto_1

    .line 348
    :cond_4
    const/16 v4, 0x8

    if-ne p1, v4, :cond_5

    .line 349
    const/16 v0, 0x1000

    goto :goto_1

    .line 350
    :cond_5
    const/16 v4, 0x10

    if-ne p1, v4, :cond_b

    .line 351
    const/16 v0, 0x400

    .line 358
    :goto_1
    sget-object v4, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "headset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    if-ne v2, v3, :cond_6

    const-string v6, " connected"

    goto :goto_2

    :cond_6
    const-string v6, " disconnected"

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 358
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-string v4, "/"

    invoke-virtual {p4, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 363
    .local v4, "hs":[Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, ""

    if-eqz v0, :cond_9

    .line 365
    sget-object v7, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Output device address "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v4

    if-le v9, v3, :cond_7

    aget-object v9, v4, v3

    goto :goto_3

    :cond_7
    move-object v9, v6

    :goto_3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v4, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    .line 369
    array-length v8, v4

    if-le v8, v3, :cond_8

    aget-object v8, v4, v3

    goto :goto_4

    :cond_8
    move-object v8, v6

    :goto_4
    aget-object v9, v4, v5

    .line 368
    invoke-virtual {v7, v0, v2, v8, v9}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_9
    if-eqz v1, :cond_c

    .line 373
    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    .line 374
    array-length v8, v4

    if-le v8, v3, :cond_a

    aget-object v6, v4, v3

    :cond_a
    aget-object v3, v4, v5

    .line 373
    invoke-virtual {v7, v1, v2, v6, v3}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 353
    .end local v4    # "hs":[Ljava/lang/String;
    :cond_b
    sget-object v3, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDeviceState() invalid headset type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-void

    .line 377
    .end local v0    # "outDevice":I
    .end local v1    # "inDevice":I
    .end local v2    # "state":I
    :cond_c
    :goto_5
    return-void
.end method

.method private setDevicesState(IILjava/lang/String;)V
    .locals 4
    .param p1, "headsetState"    # I
    .param p2, "prevHeadsetState"    # I
    .param p3, "headsetNameAddr"    # Ljava/lang/String;

    .line 314
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    const/16 v1, 0x3f

    .line 316
    .local v1, "allHeadsets":I
    const/4 v2, 0x1

    .local v2, "curHeadset":I
    :goto_0
    if-eqz v1, :cond_1

    .line 317
    and-int v3, v2, v1

    if-eqz v3, :cond_0

    .line 318
    :try_start_0
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDeviceStateLocked(IIILjava/lang/String;)V

    .line 320
    not-int v3, v2

    and-int/2addr v1, v3

    .line 316
    :cond_0
    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    .end local v1    # "allHeadsets":I
    .end local v2    # "curHeadset":I
    :cond_1
    monitor-exit v0

    .line 324
    return-void

    .line 323
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private switchCodeToString(II)Ljava/lang/String;
    .locals 2
    .param p1, "switchValues"    # I
    .param p2, "switchMask"    # I

    .line 380
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 381
    .local v0, "sb":Ljava/lang/StringBuffer;
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    .line 383
    const-string v1, "SW_HEADPHONE_INSERT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    :cond_0
    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_1

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_1

    .line 387
    const-string v1, "SW_MICROPHONE_INSERT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 389
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static updateBit([IILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "maskAndState"    # [I
    .param p1, "position"    # I
    .param p2, "state"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .line 808
    const/4 v0, 0x0

    aget v1, p0, v0

    or-int/2addr v1, p1

    aput v1, p0, v0

    .line 809
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 810
    aget v1, p0, v0

    or-int/2addr v1, p1

    aput v1, p0, v0

    .line 811
    aget v0, p0, v2

    or-int/2addr v0, p1

    aput v0, p0, v2

    goto :goto_0

    .line 812
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 813
    aget v1, p0, v0

    or-int/2addr v1, p1

    aput v1, p0, v0

    .line 814
    aget v0, p0, v2

    not-int v1, p1

    and-int/2addr v0, v1

    aput v0, p0, v2

    .line 816
    :cond_1
    :goto_0
    return-void
.end method

.method private updateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 16
    .param p1, "newName"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "newState"    # I

    .line 211
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    and-int/lit8 v4, v3, 0x3f

    .line 212
    .local v4, "headsetState":I
    and-int/lit8 v5, v3, 0x10

    .line 213
    .local v5, "newDpState":I
    and-int/lit8 v6, v4, 0x4

    .line 214
    .local v6, "usb_headset_anlg":I
    and-int/lit8 v7, v4, 0x8

    .line 215
    .local v7, "usb_headset_dgtl":I
    and-int/lit8 v8, v4, 0x23

    .line 216
    .local v8, "h2w_headset":I
    const/4 v9, 0x1

    .line 217
    .local v9, "h2wStateChange":Z
    const/4 v10, 0x1

    .line 218
    .local v10, "usbStateChange":Z
    iget v11, v0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    and-int/lit8 v11, v11, 0x10

    const/4 v12, 0x0

    if-lez v11, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    move v11, v12

    .line 219
    .local v11, "dpBitState":Z
    :goto_0
    iget v14, v0, Lcom/android/server/WiredAccessoryManager;->mDpCount:I

    if-nez v14, :cond_1

    goto :goto_1

    :cond_1
    const/4 v12, 0x1

    .line 222
    .local v12, "dpCountState":Z
    :goto_1
    sget-object v14, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "newName="

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " newState="

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " headsetState="

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " prev headsetState="

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " num of active dp conns= "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/server/WiredAccessoryManager;->mDpCount:I

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget v13, v0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    const-string/jumbo v14, "soc:qcom,msm-ext-disp"

    if-ne v13, v4, :cond_2

    invoke-virtual {v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 230
    sget-object v13, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v14, "No state change."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void

    .line 237
    :cond_2
    const/16 v13, 0x23

    if-ne v8, v13, :cond_3

    .line 238
    sget-object v13, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v15, "Invalid combination, unsetting h2w flag"

    invoke-static {v13, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v9, 0x0

    .line 243
    :cond_3
    const/4 v13, 0x4

    if-ne v6, v13, :cond_4

    const/16 v13, 0x8

    if-ne v7, v13, :cond_4

    .line 244
    sget-object v13, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v15, "Invalid combination, unsetting usb flag"

    invoke-static {v13, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v10, 0x0

    .line 247
    :cond_4
    if-nez v9, :cond_5

    if-nez v10, :cond_5

    .line 248
    sget-object v13, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "invalid transition, returning ..."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void

    .line 252
    :cond_5
    invoke-virtual {v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 253
    if-lez v5, :cond_6

    iget v13, v0, Lcom/android/server/WiredAccessoryManager;->mDpCount:I

    sget-object v15, Lcom/android/server/WiredAccessoryManager;->DP_AUDIO_CONNS:[Ljava/lang/String;

    array-length v15, v15

    if-ge v13, v15, :cond_6

    if-ne v11, v12, :cond_6

    .line 257
    const/4 v15, 0x1

    add-int/2addr v13, v15

    iput v13, v0, Lcom/android/server/WiredAccessoryManager;->mDpCount:I

    goto :goto_2

    .line 258
    :cond_6
    if-nez v5, :cond_7

    iget v13, v0, Lcom/android/server/WiredAccessoryManager;->mDpCount:I

    if-lez v13, :cond_7

    .line 259
    const/4 v15, 0x1

    sub-int/2addr v13, v15

    iput v13, v0, Lcom/android/server/WiredAccessoryManager;->mDpCount:I

    goto :goto_2

    .line 261
    :cond_7
    sget-object v13, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v14, "No state change for DP."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void

    .line 266
    :cond_8
    :goto_2
    iget-object v13, v0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 268
    sget-object v13, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v15, "MSG_NEW_DEVICE_STATE"

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 273
    iget v13, v0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    .line 274
    .local v13, "pseudoHeadsetState":I
    if-eqz v11, :cond_9

    if-eqz v5, :cond_9

    .line 276
    iget v14, v0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    and-int/lit8 v13, v14, -0x11

    .line 278
    :cond_9
    iget-object v14, v0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "soc:qcom,msm-ext-disp/"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v15, 0x1

    invoke-virtual {v14, v15, v4, v13, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 282
    .local v3, "msg":Landroid/os/Message;
    if-nez v4, :cond_a

    iget v14, v0, Lcom/android/server/WiredAccessoryManager;->mDpCount:I

    if-eqz v14, :cond_a

    .line 284
    or-int/lit8 v4, v4, 0x10

    .line 286
    .end local v13    # "pseudoHeadsetState":I
    :cond_a
    goto :goto_3

    .line 287
    .end local v3    # "msg":Landroid/os/Message;
    :cond_b
    iget-object v3, v0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    iget v13, v0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v3, v15, v4, v13, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 291
    .restart local v3    # "msg":Landroid/os/Message;
    :goto_3
    iget-object v13, v0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v13, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 293
    iput v4, v0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    .line 294
    return-void
.end method


# virtual methods
.method public notifyWiredAccessoryChanged(JII)V
    .locals 5
    .param p1, "whenNanos"    # J
    .param p3, "switchValues"    # I
    .param p4, "switchMask"    # I

    .line 147
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyWiredAccessoryChanged: when="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bits="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-direct {p0, p3, p4}, Lcom/android/server/WiredAccessoryManager;->switchCodeToString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_0
    iget v1, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    not-int v2, p4

    and-int/2addr v1, v2

    or-int/2addr v1, p3

    iput v1, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    .line 155
    and-int/lit8 v1, v1, 0x54

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    const/16 v2, 0x14

    if-eq v1, v2, :cond_1

    const/16 v2, 0x40

    if-eq v1, v2, :cond_0

    .line 178
    const/4 v1, 0x0

    .local v1, "headset":I
    goto :goto_0

    .line 166
    .end local v1    # "headset":I
    :cond_0
    const/16 v1, 0x20

    .line 167
    .restart local v1    # "headset":I
    goto :goto_0

    .line 170
    .end local v1    # "headset":I
    :cond_1
    const/4 v1, 0x1

    .line 171
    .restart local v1    # "headset":I
    goto :goto_0

    .line 174
    .end local v1    # "headset":I
    :cond_2
    const/4 v1, 0x1

    .line 175
    .restart local v1    # "headset":I
    goto :goto_0

    .line 162
    .end local v1    # "headset":I
    :cond_3
    const/4 v1, 0x2

    .line 163
    .restart local v1    # "headset":I
    goto :goto_0

    .line 158
    .end local v1    # "headset":I
    :cond_4
    const/4 v1, 0x0

    .line 159
    .restart local v1    # "headset":I
    nop

    .line 182
    :goto_0
    const-string v2, "h2w"

    const-string v3, ""

    iget v4, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    and-int/lit8 v4, v4, -0x24

    or-int/2addr v4, v1

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 184
    .end local v1    # "headset":I
    monitor-exit v0

    .line 185
    return-void

    .line 184
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public systemReady()V
    .locals 5

    .line 189
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 192
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 193
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 194
    nop

    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 195
    return-void

    .line 194
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
