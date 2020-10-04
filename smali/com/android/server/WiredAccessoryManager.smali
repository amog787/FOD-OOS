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

.field private static final BIT_UNSUPPORTED:I = 0x40

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

.field private static final SUPPORTED_HEADSETS:I = 0x7f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

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

    .line 62
    const-class v0, Lcom/android/server/WiredAccessoryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    .line 84
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

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    .line 294
    new-instance v0, Lcom/android/server/WiredAccessoryManager$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/android/server/WiredAccessoryManager$1;-><init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    .line 109
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 110
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "WiredAccessoryManager"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 111
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 112
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    .line 113
    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 115
    nop

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11100eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    .line 119
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

    invoke-direct {v1, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mExtconObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

    .line 120
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-direct {v1, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/WiredAccessoryManager;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDevicesState(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .line 61
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/WiredAccessoryManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .line 61
    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager;->onSystemReady()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .line 61
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->DP_AUDIO_CONNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/WiredAccessoryManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .line 61
    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/WiredAccessoryManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .line 61
    iget v0, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900([IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # [I
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 61
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->updateBit([IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onSystemReady()V
    .locals 6

    .line 124
    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    if-eqz v0, :cond_4

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "switchValues":I
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x2

    const/16 v3, -0x100

    const/4 v4, -0x1

    invoke-virtual {v1, v4, v3, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 128
    or-int/lit8 v0, v0, 0x4

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v5, 0x4

    invoke-virtual {v1, v4, v3, v5}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 132
    or-int/lit8 v0, v0, 0x10

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v5, 0x6

    invoke-virtual {v1, v4, v3, v5}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 135
    or-int/lit8 v0, v0, 0x40

    .line 139
    :cond_2
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v5, 0x13

    invoke-virtual {v1, v4, v3, v5}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 140
    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    .line 142
    :cond_3
    const-wide/16 v1, 0x0

    const v3, 0x80054

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/server/WiredAccessoryManager;->notifyWiredAccessoryChanged(JII)V

    .line 147
    .end local v0    # "switchValues":I
    :cond_4
    invoke-static {}, Lcom/android/server/ExtconUEventObserver;->extconExists()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mExtconObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->uEventCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 148
    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    if-eqz v0, :cond_5

    .line 149
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v1, "Both input event and extcon are used for audio jack, please just choose one."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_5
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->init()V

    goto :goto_0

    .line 161
    :cond_6
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->init()V

    .line 163
    :goto_0
    return-void
.end method

.method private setDeviceStateLocked(IIILjava/lang/String;)V
    .locals 10
    .param p1, "headset"    # I
    .param p2, "headsetState"    # I
    .param p3, "prevHeadsetState"    # I
    .param p4, "headsetNameAddr"    # Ljava/lang/String;

    .line 326
    and-int v0, p2, p1

    and-int v1, p3, p1

    if-eq v0, v1, :cond_d

    .line 327
    const/4 v0, 0x0

    .line 328
    .local v0, "outDevice":I
    const/4 v1, 0x0

    .line 331
    .local v1, "inDevice":I
    and-int v2, p2, p1

    if-eqz v2, :cond_0

    .line 332
    const/4 v2, 0x1

    .local v2, "state":I
    goto :goto_0

    .line 334
    .end local v2    # "state":I
    :cond_0
    const/4 v2, 0x0

    .line 338
    .restart local v2    # "state":I
    :goto_0
    const/4 v3, 0x1

    if-eq p1, v3, :cond_7

    const/16 v4, 0x40

    if-ne p1, v4, :cond_1

    goto :goto_1

    .line 342
    :cond_1
    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    .line 343
    const/16 v0, 0x8

    goto :goto_2

    .line 344
    :cond_2
    const/16 v4, 0x20

    if-ne p1, v4, :cond_3

    .line 345
    const/high16 v0, 0x20000

    goto :goto_2

    .line 346
    :cond_3
    const/4 v4, 0x4

    if-ne p1, v4, :cond_4

    .line 347
    const/16 v0, 0x800

    goto :goto_2

    .line 348
    :cond_4
    const/16 v4, 0x8

    if-ne p1, v4, :cond_5

    .line 349
    const/16 v0, 0x1000

    goto :goto_2

    .line 350
    :cond_5
    const/16 v4, 0x10

    if-ne p1, v4, :cond_6

    .line 351
    const/16 v0, 0x400

    goto :goto_2

    .line 353
    :cond_6
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

    .line 340
    :cond_7
    :goto_1
    const/4 v0, 0x4

    .line 341
    const v1, -0x7ffffff0

    .line 358
    :goto_2
    sget-object v4, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "headset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    if-ne v2, v3, :cond_8

    const-string v6, " connected"

    goto :goto_3

    :cond_8
    const-string v6, " disconnected"

    :goto_3
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

    if-eqz v0, :cond_b

    .line 365
    sget-object v7, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Output device address "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v4

    if-le v9, v3, :cond_9

    aget-object v9, v4, v3

    goto :goto_4

    :cond_9
    move-object v9, v6

    :goto_4
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

    if-le v8, v3, :cond_a

    aget-object v8, v4, v3

    goto :goto_5

    :cond_a
    move-object v8, v6

    :goto_5
    aget-object v9, v4, v5

    .line 368
    invoke-virtual {v7, v0, v2, v8, v9}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_b
    if-eqz v1, :cond_d

    .line 373
    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    .line 374
    array-length v8, v4

    if-le v8, v3, :cond_c

    aget-object v6, v4, v3

    :cond_c
    aget-object v3, v4, v5

    .line 373
    invoke-virtual {v7, v1, v2, v6, v3}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 377
    .end local v0    # "outDevice":I
    .end local v1    # "inDevice":I
    .end local v2    # "state":I
    .end local v4    # "hs":[Ljava/lang/String;
    :cond_d
    return-void
.end method

.method private setDevicesState(IILjava/lang/String;)V
    .locals 4
    .param p1, "headsetState"    # I
    .param p2, "prevHeadsetState"    # I
    .param p3, "headsetNameAddr"    # Ljava/lang/String;

    .line 312
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 313
    const/16 v1, 0x7f

    .line 314
    .local v1, "allHeadsets":I
    const/4 v2, 0x1

    .local v2, "curHeadset":I
    :goto_0
    if-eqz v1, :cond_1

    .line 315
    and-int v3, v2, v1

    if-eqz v3, :cond_0

    .line 316
    :try_start_0
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDeviceStateLocked(IIILjava/lang/String;)V

    .line 318
    not-int v3, v2

    and-int/2addr v1, v3

    .line 314
    :cond_0
    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 321
    .end local v1    # "allHeadsets":I
    .end local v2    # "curHeadset":I
    :cond_1
    monitor-exit v0

    .line 322
    return-void

    .line 321
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

    .line 816
    const/4 v0, 0x0

    aget v1, p0, v0

    or-int/2addr v1, p1

    aput v1, p0, v0

    .line 817
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

    .line 818
    aget v1, p0, v0

    or-int/2addr v1, p1

    aput v1, p0, v0

    .line 819
    aget v0, p0, v2

    or-int/2addr v0, p1

    aput v0, p0, v2

    goto :goto_0

    .line 820
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

    .line 821
    aget v1, p0, v0

    or-int/2addr v1, p1

    aput v1, p0, v0

    .line 822
    aget v0, p0, v2

    not-int v1, p1

    and-int/2addr v0, v1

    aput v0, p0, v2

    .line 824
    :cond_1
    :goto_0
    return-void
.end method

.method private updateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .param p1, "newName"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "newState"    # I

    .line 242
    and-int/lit8 v0, p3, 0x7f

    .line 243
    .local v0, "headsetState":I
    and-int/lit8 v1, v0, 0x4

    .line 244
    .local v1, "usb_headset_anlg":I
    and-int/lit8 v2, v0, 0x8

    .line 247
    .local v2, "usb_headset_dgtl":I
    and-int/lit8 v3, v0, 0x63

    .line 249
    .local v3, "h2w_headset":I
    const/4 v4, 0x1

    .line 250
    .local v4, "h2wStateChange":Z
    const/4 v5, 0x1

    .line 252
    .local v5, "usbStateChange":Z
    sget-object v6, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "newName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " newState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " headsetState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " prev headsetState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget v6, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    if-ne v6, v0, :cond_0

    .line 259
    sget-object v6, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v7, "No state change."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void

    .line 266
    :cond_0
    const/16 v6, 0x43

    if-eq v3, v6, :cond_1

    const/16 v6, 0x23

    if-ne v3, v6, :cond_2

    .line 268
    :cond_1
    sget-object v6, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v7, "Invalid combination, unsetting h2w flag"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v4, 0x0

    .line 273
    :cond_2
    const/4 v6, 0x4

    if-ne v1, v6, :cond_3

    const/16 v6, 0x8

    if-ne v2, v6, :cond_3

    .line 274
    sget-object v6, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v7, "Invalid combination, unsetting usb flag"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v5, 0x0

    .line 277
    :cond_3
    if-nez v4, :cond_4

    if-nez v5, :cond_4

    .line 278
    sget-object v6, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v7, "invalid transition, returning ..."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-void

    .line 282
    :cond_4
    iget-object v6, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 284
    sget-object v6, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v7, "MSG_NEW_DEVICE_STATE"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v6, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    iget v8, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v0, v8, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 289
    .local v6, "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 291
    iput v0, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    .line 292
    return-void
.end method


# virtual methods
.method public notifyWiredAccessoryChanged(JII)V
    .locals 5
    .param p1, "whenNanos"    # J
    .param p3, "switchValues"    # I
    .param p4, "switchMask"    # I

    .line 168
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyWiredAccessoryChanged: when="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bits="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-direct {p0, p3, p4}, Lcom/android/server/WiredAccessoryManager;->switchCodeToString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v0, 0x0

    .line 176
    .local v0, "headsetType":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_0
    iget v2, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    not-int v3, p4

    and-int/2addr v2, v3

    or-int/2addr v2, p3

    iput v2, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    .line 179
    iget v2, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    const v3, 0x80054

    and-int/2addr v2, v3

    if-eqz v2, :cond_5

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    const/16 v3, 0x10

    if-eq v2, v3, :cond_3

    const/16 v3, 0x14

    if-eq v2, v3, :cond_2

    const/16 v3, 0x40

    if-eq v2, v3, :cond_1

    const/high16 v3, 0x80000

    if-eq v2, v3, :cond_0

    .line 211
    const/4 v2, 0x0

    .line 212
    .local v2, "headset":I
    const-string v3, "No Device"

    move-object v0, v3

    goto :goto_0

    .line 206
    .end local v2    # "headset":I
    :cond_0
    const/16 v2, 0x40

    .line 207
    .restart local v2    # "headset":I
    const-string v3, "Headset"

    move-object v0, v3

    .line 208
    goto :goto_0

    .line 192
    .end local v2    # "headset":I
    :cond_1
    const/16 v2, 0x20

    .line 193
    .restart local v2    # "headset":I
    const-string v3, "Handset"

    move-object v0, v3

    .line 194
    goto :goto_0

    .line 197
    .end local v2    # "headset":I
    :cond_2
    const/4 v2, 0x1

    .line 198
    .restart local v2    # "headset":I
    const-string v3, "American Headset"

    move-object v0, v3

    .line 199
    goto :goto_0

    .line 202
    .end local v2    # "headset":I
    :cond_3
    const/4 v2, 0x1

    .line 203
    .restart local v2    # "headset":I
    goto :goto_0

    .line 187
    .end local v2    # "headset":I
    :cond_4
    const/4 v2, 0x2

    .line 188
    .restart local v2    # "headset":I
    const-string v3, "Handset"

    move-object v0, v3

    .line 189
    goto :goto_0

    .line 182
    .end local v2    # "headset":I
    :cond_5
    const/4 v2, 0x0

    .line 183
    .restart local v2    # "headset":I
    const-string v3, "No Device"

    move-object v0, v3

    .line 184
    nop

    .line 215
    :goto_0
    const-string v3, ""

    iget v4, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    and-int/lit8 v4, v4, -0x64

    or-int/2addr v4, v2

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 217
    .end local v2    # "headset":I
    monitor-exit v1

    .line 219
    return-void

    .line 217
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public systemReady()V
    .locals 5

    .line 223
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 226
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 227
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 228
    nop

    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 229
    return-void

    .line 228
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
