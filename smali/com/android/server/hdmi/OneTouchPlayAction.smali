.class final Lcom/android/server/hdmi/OneTouchPlayAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "OneTouchPlayAction.java"


# static fields
.field private static final LOOP_COUNTER_MAX:I = 0xa

.field private static final STATE_WAITING_FOR_REPORT_POWER_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OneTouchPlayAction"


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/IHdmiControlCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerStatusCounter:I

.field private final mTargetAddress:I


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 1
    .param p1, "localDevice"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "targetAddress"    # I
    .param p3, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mCallbacks:Ljava/util/List;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mPowerStatusCounter:I

    .line 71
    iput p2, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    .line 72
    invoke-virtual {p0, p3}, Lcom/android/server/hdmi/OneTouchPlayAction;->addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 73
    return-void
.end method

.method private broadcastActiveSource()V
    .locals 4

    .line 86
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->source()Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    move-result-object v0

    .line 87
    .local v0, "source":Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v2, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    .line 88
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->getSourcePath()I

    move-result v3

    .line 87
    invoke-virtual {v1, v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->setAndBroadcastActiveSourceFromOneDeviceType(II)V

    .line 93
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    .line 96
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setRoutingPort(I)V

    .line 97
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setLocalActivePort(I)V

    .line 98
    return-void
.end method

.method static create(Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;ILandroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/OneTouchPlayAction;
    .locals 2
    .param p0, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;
    .param p1, "targetAddress"    # I
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 60
    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    new-instance v0, Lcom/android/server/hdmi/OneTouchPlayAction;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/OneTouchPlayAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    return-object v0

    .line 61
    :cond_1
    :goto_0
    const-string v0, "OneTouchPlayAction"

    const-string v1, "Wrong arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method private invokeCallback(I)V
    .locals 3
    .param p1, "result"    # I

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 148
    .local v1, "callback":Landroid/hardware/hdmi/IHdmiControlCallback;
    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v1    # "callback":Landroid/hardware/hdmi/IHdmiControlCallback;
    goto :goto_0

    .line 152
    :cond_0
    goto :goto_1

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Callback failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneTouchPlayAction"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private queryDevicePowerStatus()V
    .locals 2

    .line 101
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mState:I

    .line 102
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/OneTouchPlayAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 104
    return-void
.end method


# virtual methods
.method public addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 142
    iget-object v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    return-void
.end method

.method handleTimerEvent(I)V
    .locals 3
    .param p1, "state"    # I

    .line 126
    iget v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mState:I

    if-eq v0, p1, :cond_0

    .line 127
    return-void

    .line 129
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 130
    iget v1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mPowerStatusCounter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mPowerStatusCounter:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 131
    invoke-direct {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->queryDevicePowerStatus()V

    .line 132
    iget v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/OneTouchPlayAction;->addTimer(II)V

    goto :goto_0

    .line 135
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/OneTouchPlayAction;->invokeCallback(I)V

    .line 136
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->finish()V

    .line 139
    :cond_2
    :goto_0
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 108
    iget v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    .line 109
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v3, 0x90

    if-ne v0, v3, :cond_2

    .line 113
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    aget-byte v0, v0, v2

    .line 114
    .local v0, "status":I
    if-nez v0, :cond_1

    .line 115
    invoke-direct {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->broadcastActiveSource()V

    .line 116
    invoke-direct {p0, v2}, Lcom/android/server/hdmi/OneTouchPlayAction;->invokeCallback(I)V

    .line 117
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->finish()V

    .line 119
    :cond_1
    return v1

    .line 121
    .end local v0    # "status":I
    :cond_2
    return v2

    .line 110
    :cond_3
    :goto_0
    return v2
.end method

.method start()Z
    .locals 2

    .line 77
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildTextViewOn(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/OneTouchPlayAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 78
    invoke-direct {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->broadcastActiveSource()V

    .line 79
    invoke-direct {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->queryDevicePowerStatus()V

    .line 80
    iget v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/OneTouchPlayAction;->addTimer(II)V

    .line 81
    const/4 v0, 0x1

    return v0
.end method
