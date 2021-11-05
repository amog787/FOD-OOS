.class abstract Lcom/android/server/hdmi/HdmiCecLocalDevice;
.super Ljava/lang/Object;
.source "HdmiCecLocalDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;,
        Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    }
.end annotation


# static fields
.field private static final DEVICE_CLEANUP_TIMEOUT:I = 0x1388

.field private static final FOLLOWER_SAFETY_TIMEOUT:I = 0x226

.field private static final MSG_DISABLE_DEVICE_TIMEOUT:I = 0x1

.field private static final MSG_USER_CONTROL_RELEASE_TIMEOUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HdmiCecLocalDevice"


# instance fields
.field final mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveRoutingPath:I

.field protected mAddress:I

.field protected final mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

.field protected mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

.field protected final mDeviceType:I

.field private final mHandler:Landroid/os/Handler;

.field protected mLastKeyRepeatCount:I

.field protected mLastKeycode:I

.field protected final mLock:Ljava/lang/Object;

.field protected mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

.field protected mPreferredAddress:I

.field protected final mService:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method protected constructor <init>(Lcom/android/server/hdmi/HdmiControlService;I)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p2, "deviceType"    # I

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeyRepeatCount:I

    .line 143
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessageCache;

    invoke-direct {v0}, Lcom/android/server/hdmi/HdmiCecMessageCache;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    .line 151
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$1;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    .line 177
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 178
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceType:I

    .line 179
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    .line 180
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLock()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    .line 181
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 50
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleDisableDeviceTimeout()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/hdmi/HdmiCecLocalDevice;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 50
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static create(Lcom/android/server/hdmi/HdmiControlService;I)Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .locals 1
    .param p0, "service"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "deviceType"    # I

    .line 185
    if-eqz p1, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 193
    const/4 v0, 0x0

    return-object v0

    .line 191
    :cond_0
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    return-object v0

    .line 189
    :cond_1
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    return-object v0

    .line 187
    :cond_2
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    return-object v0
.end method

.method private dispatchMessageToAction(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 5
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 352
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 353
    const/4 v0, 0x0

    .line 355
    .local v0, "processed":Z
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 357
    .local v2, "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v3

    .line 358
    .local v3, "result":Z
    if-nez v0, :cond_1

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    :goto_2
    move v0, v4

    .line 359
    .end local v2    # "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    .end local v3    # "result":Z
    goto :goto_0

    .line 360
    :cond_2
    return v0
.end method

.method private handleDisableDeviceTimeout()V
    .locals 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 995
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 999
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1000
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/hdmi/HdmiCecFeatureAction;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1001
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 1002
    .local v1, "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 1003
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1004
    .end local v1    # "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    goto :goto_0

    .line 1005
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    if-eqz v1, :cond_1

    .line 1006
    invoke-interface {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;->onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 1008
    :cond_1
    return-void
.end method

.method static injectKeyEvent(JIII)V
    .locals 13
    .param p0, "time"    # J
    .param p2, "action"    # I
    .param p3, "keycode"    # I
    .param p4, "repeat"    # I

    .line 592
    nop

    .line 593
    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/16 v10, 0x8

    const v11, 0x2000001

    const/4 v12, 0x0

    move-wide v0, p0

    move-wide v2, p0

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v0

    .line 605
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    .line 606
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 607
    invoke-virtual {v0}, Landroid/view/KeyEvent;->recycle()V

    .line 608
    return-void
.end method

.method static isPowerOffOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4
    .param p0, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 619
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    .line 620
    .local v0, "params":[B
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x44

    if-ne v1, v3, :cond_1

    aget-byte v1, v0, v2

    const/16 v3, 0x6c

    if-eq v1, v3, :cond_0

    aget-byte v1, v0, v2

    const/16 v3, 0x6b

    if-ne v1, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method static isPowerOnOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4
    .param p0, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 611
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    .line 612
    .local v0, "params":[B
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x44

    if-ne v1, v3, :cond_1

    aget-byte v1, v0, v2

    const/16 v3, 0x40

    if-eq v1, v3, :cond_0

    aget-byte v1, v0, v2

    const/16 v3, 0x6d

    if-eq v1, v3, :cond_0

    aget-byte v1, v0, v2

    const/16 v3, 0x6b

    if-ne v1, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method static isVolumeOrMuteCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4
    .param p0, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 626
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    .line 627
    .local v0, "params":[B
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x44

    if-ne v1, v3, :cond_1

    aget-byte v1, v0, v2

    const/16 v3, 0x42

    if-eq v1, v3, :cond_0

    aget-byte v1, v0, v2

    const/16 v3, 0x41

    if-eq v1, v3, :cond_0

    aget-byte v1, v0, v2

    const/16 v3, 0x43

    if-eq v1, v3, :cond_0

    aget-byte v1, v0, v2

    const/16 v3, 0x65

    if-eq v1, v3, :cond_0

    aget-byte v1, v0, v2

    const/16 v3, 0x66

    if-ne v1, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method


# virtual methods
.method addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V
    .locals 2
    .param p1, "action"    # Lcom/android/server/hdmi/HdmiCecFeatureAction;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 772
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 773
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandby()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isAddressAllocated()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 778
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->start()Z

    .line 779
    return-void

    .line 775
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not ready to start action. Queued for deferred start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HdmiCecLocalDevice"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    return-void
.end method

.method protected assertRunOnServiceThread()V
    .locals 2

    .line 867
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 870
    return-void

    .line 868
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should run on service thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected buildAndSendSetOsdName(I)V
    .locals 3
    .param p1, "dest"    # I

    .line 437
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 439
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 438
    invoke-static {v0, p1, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetOsdNameCommand(IILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 440
    .local v0, "cecMessage":Lcom/android/server/hdmi/HdmiCecMessage;
    if-eqz v0, :cond_0

    .line 441
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v2, Lcom/android/server/hdmi/HdmiCecLocalDevice$2;

    invoke-direct {v2, p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$2;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/HdmiCecMessage;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    goto :goto_0

    .line 450
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to build <Get Osd Name>:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HdmiCecLocalDevice"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :goto_0
    return-void
.end method

.method protected canGoToStandby()Z
    .locals 1

    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method protected checkIfPendingActionsCleared()V
    .locals 2

    .line 858
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    .line 861
    .local v0, "callback":Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    .line 862
    invoke-interface {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;->onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 864
    .end local v0    # "callback":Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;
    :cond_0
    return-void
.end method

.method clearAddress()V
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 766
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 767
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    .line 768
    return-void
.end method

.method protected disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .locals 4
    .param p1, "initiatedByCec"    # Z
    .param p2, "originalCallback"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    .line 981
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$3;

    invoke-direct {v0, p0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice$3;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    .line 989
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    .line 990
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 989
    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 991
    return-void
.end method

.method dispatchMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 2
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 242
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 243
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    .line 244
    .local v0, "dest":I
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    if-eq v0, v1, :cond_0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    .line 245
    const/4 v1, 0x0

    return v1

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageCache;->cacheMessage(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 249
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v1

    return v1
.end method

.method protected dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDeviceType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPreferredAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPreferredAddress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDeviceInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1130
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveRoutingPath:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "mActiveRoutingPath: 0x%04x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1131
    return-void
.end method

.method protected findAudioReceiverAddress()I
    .locals 2

    .line 1099
    const-string v0, "HdmiCecLocalDevice"

    const-string v1, "findAudioReceiverAddress is not implemented"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    const/4 v0, -0x1

    return v0
.end method

.method protected findKeyReceiverAddress()I
    .locals 2

    .line 1088
    const-string v0, "HdmiCecLocalDevice"

    const-string v1, "findKeyReceiverAddress is not implemented"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    const/4 v0, -0x1

    return v0
.end method

.method getActions(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 808
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 809
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 810
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 811
    .local v2, "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 812
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 813
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 815
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 817
    .end local v2    # "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    :cond_1
    goto :goto_0

    .line 818
    :cond_2
    return-object v0
.end method

.method getActivePath()I
    .locals 2

    .line 910
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 911
    :try_start_0
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveRoutingPath:I

    monitor-exit v0

    return v1

    .line 912
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getActivePathOnSwitchFromActivePortId(I)I
    .locals 4
    .param p1, "activePortId"    # I

    .line 1143
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v0

    .line 1144
    .local v0, "myPhysicalAddress":I
    shl-int/lit8 v1, p1, 0x8

    .line 1146
    .local v1, "finalMask":I
    const/16 v2, 0xf00

    .local v2, "mask":I
    :goto_0
    const/16 v3, 0xf

    if-le v2, v3, :cond_1

    .line 1147
    and-int v3, v0, v2

    if-nez v3, :cond_0

    .line 1148
    goto :goto_1

    .line 1150
    :cond_0
    shr-int/lit8 v1, v1, 0x4

    .line 1146
    shr-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 1153
    :cond_1
    :goto_1
    or-int v3, v1, v0

    return v3
.end method

.method getActivePortId()I
    .locals 3

    .line 927
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 928
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveRoutingPath:I

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 929
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .locals 1

    .line 893
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    return-object v0
.end method

.method getCecMessageCache()Lcom/android/server/hdmi/HdmiCecMessageCache;
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 950
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 951
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    return-object v0
.end method

.method getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 2

    .line 744
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 745
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    monitor-exit v0

    return-object v1

    .line 746
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getPortId(I)I
    .locals 1
    .param p1, "physicalAddress"    # I

    .line 945
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v0

    return v0
.end method

.method protected abstract getPreferredAddress()I
.end method

.method final getService()Lcom/android/server/hdmi/HdmiControlService;
    .locals 1

    .line 883
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    return-object v0
.end method

.method getType()I
    .locals 1

    .line 739
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceType:I

    return v0
.end method

.method protected handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 398
    const/4 v0, 0x0

    return v0
.end method

.method final handleAddressAllocated(II)V
    .locals 0
    .param p1, "logicalAddress"    # I
    .param p2, "reason"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 732
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 733
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPreferredAddress:I

    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    .line 734
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onAddressAllocated(II)V

    .line 735
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setPreferredAddress(I)V

    .line 736
    return-void
.end method

.method protected handleGetCecVersion(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 387
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 388
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    move-result v0

    .line 389
    .local v0, "version":I
    nop

    .line 391
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    .line 390
    invoke-static {v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCecVersion(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    .line 392
    .local v1, "cecMessage":Lcom/android/server/hdmi/HdmiCecMessage;
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 393
    const/4 v2, 0x1

    return v2
.end method

.method protected handleGetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 2
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 413
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only TV can handle <Get Menu Language>:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HdmiCecLocalDevice"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/4 v0, 0x0

    return v0
.end method

.method protected handleGiveAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 515
    const/4 v0, 0x0

    return v0
.end method

.method protected handleGiveDevicePowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 648
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    .line 650
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getPowerStatus()I

    move-result v3

    .line 649
    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportPowerStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    .line 648
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 651
    const/4 v0, 0x1

    return v0
.end method

.method protected handleGiveDeviceVendorId(Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)Z
    .locals 3
    .param p1, "callback"    # Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 377
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 378
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    move-result v0

    .line 379
    .local v0, "vendorId":I
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    .line 380
    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    .line 381
    .local v1, "cecMessage":Lcom/android/server/hdmi/HdmiCecMessage;
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 382
    const/4 v2, 0x1

    return v2
.end method

.method protected handleGiveOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 429
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 432
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->buildAndSendSetOsdName(I)V

    .line 433
    const/4 v0, 0x1

    return v0
.end method

.method protected handleGivePhysicalAddress(Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)Z
    .locals 3
    .param p1, "callback"    # Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 365
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 367
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v0

    .line 368
    .local v0, "physicalAddress":I
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceType:I

    .line 369
    invoke-static {v1, v0, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    .line 371
    .local v1, "cecMessage":Lcom/android/server/hdmi/HdmiCecMessage;
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 372
    const/4 v2, 0x1

    return v2
.end method

.method protected handleGiveSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 475
    const/4 v0, 0x0

    return v0
.end method

.method protected handleImageViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 640
    const/4 v0, 0x0

    return v0
.end method

.method protected handleInactiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 403
    const/4 v0, 0x0

    return v0
.end method

.method protected handleInitiateArc(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 491
    const/4 v0, 0x0

    return v0
.end method

.method protected handleMenuRequest(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 656
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    .line 658
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    .line 657
    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportMenuStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    .line 656
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 659
    const/4 v0, 0x1

    return v0
.end method

.method protected handleMenuStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 663
    const/4 v0, 0x0

    return v0
.end method

.method protected handleRecordStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 727
    const/4 v0, 0x0

    return v0
.end method

.method protected handleRecordTvScreen(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 2
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 710
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 711
    const/4 v0, 0x1

    return v0
.end method

.method protected handleReportArcInitiate(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 503
    const/4 v0, 0x0

    return v0
.end method

.method protected handleReportArcTermination(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 507
    const/4 v0, 0x0

    return v0
.end method

.method protected handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 511
    const/4 v0, 0x0

    return v0
.end method

.method protected handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 467
    const/4 v0, 0x0

    return v0
.end method

.method protected handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 719
    const/4 v0, 0x0

    return v0
.end method

.method protected handleReportShortAudioDescriptor(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 523
    const/4 v0, 0x0

    return v0
.end method

.method protected handleRequestActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 408
    const/4 v0, 0x0

    return v0
.end method

.method protected handleRequestArcInitiate(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 495
    const/4 v0, 0x0

    return v0
.end method

.method protected handleRequestArcTermination(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 499
    const/4 v0, 0x0

    return v0
.end method

.method protected handleRequestShortAudioDescriptor(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 519
    const/4 v0, 0x0

    return v0
.end method

.method protected handleRoutingChange(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 457
    const/4 v0, 0x0

    return v0
.end method

.method protected handleRoutingInformation(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 463
    const/4 v0, 0x0

    return v0
.end method

.method protected handleSetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 2
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 421
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only Playback device can handle <Set Menu Language>:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HdmiCecLocalDevice"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v0, 0x0

    return v0
.end method

.method protected handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 704
    const/4 v0, 0x1

    return v0
.end method

.method protected handleSetStreamPath(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 644
    const/4 v0, 0x0

    return v0
.end method

.method protected handleSetSystemAudioMode(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 479
    const/4 v0, 0x0

    return v0
.end method

.method protected handleStandby(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 528
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 530
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 531
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isProhibitMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 532
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerOnOrTransient()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->standby()V

    .line 534
    const/4 v0, 0x1

    return v0

    .line 536
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected handleSystemAudioModeRequest(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 483
    const/4 v0, 0x0

    return v0
.end method

.method protected handleSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 471
    const/4 v0, 0x0

    return v0
.end method

.method protected handleTerminateArc(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 487
    const/4 v0, 0x0

    return v0
.end method

.method protected handleTextViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 636
    const/4 v0, 0x0

    return v0
.end method

.method protected handleTimerClearedStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 715
    const/4 v0, 0x0

    return v0
.end method

.method protected handleTimerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 723
    const/4 v0, 0x0

    return v0
.end method

.method protected handleUserControlPressed(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 10
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 541
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 542
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 543
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerOnOrTransient()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isPowerOffOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->standby()V

    .line 545
    return v2

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isPowerOnOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 548
    return v2

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isHdmiCecVolumeControlEnabled()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isVolumeOrMuteCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 550
    return v3

    .line 553
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 554
    .local v4, "downTime":J
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    .line 555
    .local v0, "params":[B
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecKeycode;->cecKeycodeAndParamsToAndroidKey([B)I

    move-result v6

    .line 556
    .local v6, "keycode":I
    const/4 v7, 0x0

    .line 557
    .local v7, "keyRepeatCount":I
    iget v8, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    .line 558
    if-ne v6, v8, :cond_3

    .line 559
    iget v8, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeyRepeatCount:I

    add-int/lit8 v7, v8, 0x1

    goto :goto_0

    .line 561
    :cond_3
    invoke-static {v4, v5, v2, v8, v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->injectKeyEvent(JIII)V

    .line 564
    :cond_4
    :goto_0
    iput v6, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    .line 565
    iput v7, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeyRepeatCount:I

    .line 567
    if-eq v6, v9, :cond_5

    .line 568
    invoke-static {v4, v5, v3, v6, v7}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->injectKeyEvent(JIII)V

    .line 569
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    .line 570
    invoke-static {v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v8, 0x226

    .line 569
    invoke-virtual {v3, v1, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 572
    return v2

    .line 574
    :cond_5
    return v3
.end method

.method protected handleUserControlReleased()Z
    .locals 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 579
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 580
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 581
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeyRepeatCount:I

    .line 582
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 583
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 584
    .local v3, "upTime":J
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    const/4 v5, 0x1

    invoke-static {v3, v4, v5, v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->injectKeyEvent(JIII)V

    .line 585
    iput v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    .line 586
    return v5

    .line 588
    .end local v3    # "upTime":J
    :cond_0
    return v0
.end method

.method protected handleVendorCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 6
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 667
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceType:I

    .line 669
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    .line 670
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v3

    .line 671
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v4

    .line 667
    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnReceived(III[BZ)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 677
    :cond_0
    return v1
.end method

.method protected handleVendorCommandWithId(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 9
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 681
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v6

    .line 682
    .local v6, "params":[B
    invoke-static {v6}, Lcom/android/server/hdmi/HdmiUtils;->threeBytesToInt([B)I

    move-result v7

    .line 683
    .local v7, "vendorId":I
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    move-result v0

    const/4 v8, 0x1

    if-ne v7, v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceType:I

    .line 685
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v3

    const/4 v5, 0x1

    .line 684
    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnReceived(III[BZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 686
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, v8}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    goto :goto_0

    .line 688
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    const-string v1, "HdmiCecLocalDevice"

    const/16 v2, 0xf

    if-eq v0, v2, :cond_1

    .line 689
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 690
    const-string v0, "Wrong direct vendor command. Replying with <Feature Abort>"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    goto :goto_0

    .line 693
    :cond_1
    const-string v0, "Wrong broadcast vendor command. Ignoring"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_2
    :goto_0
    return v8
.end method

.method hasAction(Ljava/lang/Class;)Z
    .locals 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 796
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 797
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 798
    .local v1, "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 799
    const/4 v0, 0x1

    return v0

    .line 801
    .end local v1    # "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    :cond_0
    goto :goto_0

    .line 802
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method init()V
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 199
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 200
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getPreferredAddress()I

    move-result v0

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPreferredAddress:I

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    .line 202
    return-void
.end method

.method invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .param p2, "result"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1105
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1106
    if-nez p1, :cond_0

    .line 1107
    return-void

    .line 1110
    :cond_0
    :try_start_0
    invoke-interface {p1, p2}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1113
    goto :goto_0

    .line 1111
    :catch_0
    move-exception v0

    .line 1112
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invoking callback failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HdmiCecLocalDevice"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method isAddressOf(I)Z
    .locals 1
    .param p1, "addr"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 759
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 760
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isConnectedToArcPort(I)Z
    .locals 1
    .param p1, "path"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 888
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 889
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->isConnectedToArcPort(I)Z

    move-result v0

    return v0
.end method

.method protected isInputReady(I)Z
    .locals 1
    .param p1, "deviceId"    # I

    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract onAddressAllocated(II)V
.end method

.method onHotplug(IZ)V
    .locals 0
    .param p1, "portId"    # I
    .param p2, "connected"    # Z

    .line 880
    return-void
.end method

.method protected final onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 2
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 254
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 255
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dispatchMessageToAction(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const/4 v0, 0x1

    return v0

    .line 258
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    const/16 v1, 0xa

    if-eq v0, v1, :cond_f

    const/16 v1, 0xd

    if-eq v0, v1, :cond_e

    const/16 v1, 0xf

    if-eq v0, v1, :cond_d

    const/16 v1, 0x32

    if-eq v0, v1, :cond_c

    const/16 v1, 0x7a

    if-eq v0, v1, :cond_b

    const/16 v1, 0x89

    if-eq v0, v1, :cond_a

    const/16 v1, 0x9d

    if-eq v0, v1, :cond_9

    const/16 v1, 0x35

    if-eq v0, v1, :cond_8

    const/16 v1, 0x36

    if-eq v0, v1, :cond_7

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_6

    const/16 v1, 0x7e

    if-eq v0, v1, :cond_5

    const/16 v1, 0x9f

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa3

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa4

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    .line 346
    const/4 v0, 0x0

    return v0

    .line 290
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleTerminateArc(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 286
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRequestArcTermination(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 284
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRequestArcInitiate(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 294
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleReportArcTermination(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 292
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleReportArcInitiate(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 288
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleInitiateArc(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 266
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 336
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 320
    :pswitch_8
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGiveDevicePowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 324
    :pswitch_9
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleMenuStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 322
    :pswitch_a
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleMenuRequest(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 274
    :pswitch_b
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGiveDeviceVendorId(Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)Z

    move-result v0

    return v0

    .line 318
    :pswitch_c
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleSetStreamPath(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 264
    :pswitch_d
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRequestActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 278
    :pswitch_e
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 270
    :pswitch_f
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGivePhysicalAddress(Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)Z

    move-result v0

    return v0

    .line 260
    :pswitch_10
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 282
    :pswitch_11
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRoutingInformation(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 280
    :pswitch_12
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRoutingChange(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 298
    :pswitch_13
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleSetSystemAudioMode(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 304
    :pswitch_14
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGiveAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 296
    :pswitch_15
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleSystemAudioModeRequest(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 330
    :pswitch_16
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 272
    :pswitch_17
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGiveOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 316
    :pswitch_18
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleUserControlReleased()Z

    move-result v0

    return v0

    .line 314
    :pswitch_19
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleUserControlPressed(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 334
    :pswitch_1a
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleTimerClearedStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 342
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRequestShortAudioDescriptor(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 344
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleReportShortAudioDescriptor(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 328
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleVendorCommandWithId(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 276
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGetCecVersion(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 300
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 302
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGiveSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 308
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleStandby(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 338
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleTimerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 262
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleInactiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 326
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleVendorCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 306
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 268
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleSetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 332
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRecordTvScreen(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 310
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleTextViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 340
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRecordStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 312
    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleImageViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x70
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x80
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x8c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xc0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onStandby(ZI)V
    .locals 0
    .param p1, "initiatedByCec"    # Z
    .param p2, "standbyAction"    # I

    .line 968
    return-void
.end method

.method pathToPortId(I)I
    .locals 1
    .param p1, "newPath"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 956
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 957
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v0

    return v0
.end method

.method removeAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V
    .locals 1
    .param p1, "action"    # Lcom/android/server/hdmi/HdmiCecFeatureAction;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 828
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 829
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 830
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 831
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->checkIfPendingActionsCleared()V

    .line 832
    return-void
.end method

.method removeAction(Ljava/lang/Class;)V
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 837
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 838
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 839
    return-void
.end method

.method removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V
    .locals 3
    .param p2, "exception"    # Lcom/android/server/hdmi/HdmiCecFeatureAction;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ")V"
        }
    .end annotation

    .line 845
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 846
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 847
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/hdmi/HdmiCecFeatureAction;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 848
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 849
    .local v1, "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    if-eq v1, p2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 850
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 851
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 853
    .end local v1    # "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    :cond_0
    goto :goto_0

    .line 854
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->checkIfPendingActionsCleared()V

    .line 855
    return-void
.end method

.method protected sendKeyEvent(IZ)V
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "isPressed"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1020
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1021
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecKeycode;->isSupportedKeycode(I)Z

    move-result v0

    const-string v1, "HdmiCecLocalDevice"

    if-nez v0, :cond_0

    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    return-void

    .line 1025
    :cond_0
    const-class v0, Lcom/android/server/hdmi/SendKeyAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 1026
    .local v0, "action":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/SendKeyAction;>;"
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->findKeyReceiverAddress()I

    move-result v2

    .line 1027
    .local v2, "logicalAddress":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    iget v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 1037
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1038
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/SendKeyAction;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/hdmi/SendKeyAction;->processKeyEvent(IZ)V

    goto :goto_1

    .line 1039
    :cond_2
    if-eqz p2, :cond_4

    .line 1040
    new-instance v1, Lcom/android/server/hdmi/SendKeyAction;

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/hdmi/SendKeyAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;II)V

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_1

    .line 1029
    :cond_3
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discard key event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pressed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", receiverAddr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :cond_4
    :goto_1
    return-void
.end method

.method protected sendStandby(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .line 700
    return-void
.end method

.method sendUserControlPressedAndReleased(II)V
    .locals 2
    .param p1, "targetAddress"    # I
    .param p2, "cecKeycode"    # I

    .line 1117
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    .line 1118
    invoke-static {v1, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlPressed(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    .line 1117
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1119
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    .line 1120
    invoke-static {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlReleased(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    .line 1119
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1121
    return-void
.end method

.method protected sendVolumeKeyEvent(IZ)V
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "isPressed"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1054
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1055
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isHdmiCecVolumeControlEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1056
    return-void

    .line 1058
    :cond_0
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecKeycode;->isVolumeKeycode(I)Z

    move-result v0

    const-string v1, "HdmiCecLocalDevice"

    if-nez v0, :cond_1

    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a volume key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    return-void

    .line 1062
    :cond_1
    const-class v0, Lcom/android/server/hdmi/SendKeyAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 1063
    .local v0, "action":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/SendKeyAction;>;"
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->findAudioReceiverAddress()I

    move-result v2

    .line 1064
    .local v2, "logicalAddress":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    iget v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    if-ne v2, v3, :cond_2

    goto :goto_0

    .line 1074
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1075
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/SendKeyAction;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/hdmi/SendKeyAction;->processKeyEvent(IZ)V

    goto :goto_1

    .line 1076
    :cond_3
    if-eqz p2, :cond_5

    .line 1077
    new-instance v1, Lcom/android/server/hdmi/SendKeyAction;

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/hdmi/SendKeyAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;II)V

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_1

    .line 1066
    :cond_4
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discard volume key event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pressed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", receiverAddr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :cond_5
    :goto_1
    return-void
.end method

.method setActivePath(I)V
    .locals 2
    .param p1, "path"    # I

    .line 916
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 917
    :try_start_0
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveRoutingPath:I

    .line 918
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 919
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->pathToPortId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->setActivePortId(I)V

    .line 920
    return-void

    .line 918
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method setActivePortId(I)V
    .locals 1
    .param p1, "portId"    # I

    .line 940
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActivePath(I)V

    .line 941
    return-void
.end method

.method setActiveSource(II)V
    .locals 2
    .param p1, "logicalAddress"    # I
    .param p2, "physicalAddress"    # I

    .line 905
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->setActiveSource(II)V

    .line 906
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->setLastInputForMhl(I)V

    .line 907
    return-void
.end method

.method setActiveSource(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 901
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActiveSource(II)V

    .line 902
    return-void
.end method

.method setActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)V
    .locals 2
    .param p1, "newActive"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 897
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    iget v1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActiveSource(II)V

    .line 898
    return-void
.end method

.method setAutoDeviceOff(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 872
    return-void
.end method

.method setDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 751
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 752
    :try_start_0
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 753
    monitor-exit v0

    .line 754
    return-void

    .line 753
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract setPreferredAddress(I)V
.end method

.method startQueuedActions()V
    .locals 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 783
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 785
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 786
    .local v1, "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->started()Z

    move-result v2

    if-nez v2, :cond_0

    .line 787
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting queued action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HdmiCecLocalDevice"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->start()Z

    .line 790
    .end local v1    # "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    :cond_0
    goto :goto_0

    .line 791
    :cond_1
    return-void
.end method
