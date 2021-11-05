.class abstract Lcom/android/server/hdmi/SystemAudioAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "SystemAudioAction.java"


# static fields
.field private static final MAX_SEND_RETRY_COUNT:I = 0x2

.field private static final OFF_TIMEOUT_MS:I = 0x7d0

.field private static final ON_TIMEOUT_MS:I = 0x1388

.field private static final STATE_CHECK_ROUTING_IN_PRGRESS:I = 0x1

.field private static final STATE_WAIT_FOR_SET_SYSTEM_AUDIO_MODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SystemAudioAction"


# instance fields
.field protected final mAvrLogicalAddress:I

.field private final mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field private mSendRetryCount:I

.field protected mTargetAudioStatus:Z


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 1
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "avrAddress"    # I
    .param p3, "targetStatus"    # Z
    .param p4, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/SystemAudioAction;->mSendRetryCount:I

    .line 68
    const/4 v0, 0x5

    invoke-static {p2, v0}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)V

    .line 69
    iput p2, p0, Lcom/android/server/hdmi/SystemAudioAction;->mAvrLogicalAddress:I

    .line 70
    iput-boolean p3, p0, Lcom/android/server/hdmi/SystemAudioAction;->mTargetAudioStatus:Z

    .line 71
    iput-object p4, p0, Lcom/android/server/hdmi/SystemAudioAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/SystemAudioAction;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/SystemAudioAction;

    .line 31
    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioAction;->sendSystemAudioModeRequestInternal()V

    return-void
.end method

.method private getSystemAudioModeRequestParam()I
    .locals 2

    .line 116
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    iget v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    return v0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    move-result v0

    .line 120
    .local v0, "param":I
    const v1, 0xffff

    if-eq v0, v1, :cond_1

    .line 121
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 120
    :goto_0
    return v1
.end method

.method private handleSendSystemAudioModeRequestTimeout()V
    .locals 3

    .line 125
    iget-boolean v0, p0, Lcom/android/server/hdmi/SystemAudioAction;->mTargetAudioStatus:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/hdmi/SystemAudioAction;->mSendRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/hdmi/SystemAudioAction;->mSendRetryCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->sendSystemAudioModeRequest()V

    .line 133
    return-void

    .line 127
    :cond_1
    :goto_0
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "[T]:wait for <Set System Audio Mode>."

    invoke-static {v2, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/SystemAudioAction;->setSystemAudioMode(Z)V

    .line 129
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/SystemAudioAction;->finishWithCallback(I)V

    .line 130
    return-void
.end method

.method private sendSystemAudioModeRequestInternal()V
    .locals 4

    .line 93
    nop

    .line 94
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/SystemAudioAction;->mAvrLogicalAddress:I

    .line 95
    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioAction;->getSystemAudioModeRequestParam()I

    move-result v2

    iget-boolean v3, p0, Lcom/android/server/hdmi/SystemAudioAction;->mTargetAudioStatus:Z

    .line 93
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSystemAudioModeRequest(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 96
    .local v0, "command":Lcom/android/server/hdmi/HdmiCecMessage;
    new-instance v1, Lcom/android/server/hdmi/SystemAudioAction$2;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/SystemAudioAction$2;-><init>(Lcom/android/server/hdmi/SystemAudioAction;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/SystemAudioAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 106
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/hdmi/SystemAudioAction;->mState:I

    .line 107
    iget v1, p0, Lcom/android/server/hdmi/SystemAudioAction;->mState:I

    iget-boolean v2, p0, Lcom/android/server/hdmi/SystemAudioAction;->mTargetAudioStatus:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x1388

    goto :goto_0

    :cond_0
    const/16 v2, 0x7d0

    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/SystemAudioAction;->addTimer(II)V

    .line 108
    return-void
.end method


# virtual methods
.method protected finishWithCallback(I)V
    .locals 3
    .param p1, "returnCode"    # I

    .line 201
    iget-object v0, p0, Lcom/android/server/hdmi/SystemAudioAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    if-eqz v0, :cond_0

    .line 203
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SystemAudioAction"

    const-string v2, "Failed to invoke callback."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->finish()V

    .line 209
    return-void
.end method

.method final handleTimerEvent(I)V
    .locals 2
    .param p1, "state"    # I

    .line 188
    iget v0, p0, Lcom/android/server/hdmi/SystemAudioAction;->mState:I

    if-eq v0, p1, :cond_0

    .line 189
    return-void

    .line 191
    :cond_0
    iget v0, p0, Lcom/android/server/hdmi/SystemAudioAction;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 196
    return-void

    .line 193
    :cond_1
    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioAction;->handleSendSystemAudioModeRequestTimeout()V

    .line 194
    return-void
.end method

.method final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 5
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 141
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/SystemAudioAction;->mAvrLogicalAddress:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 142
    return v2

    .line 144
    :cond_0
    iget v0, p0, Lcom/android/server/hdmi/SystemAudioAction;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 172
    return v2

    .line 146
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v3, 0x5

    if-nez v0, :cond_2

    .line 147
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v4, 0x70

    if-ne v0, v4, :cond_2

    .line 149
    new-array v0, v2, [Ljava/lang/Object;

    const-string v4, "Failed to start system audio mode request."

    invoke-static {v4, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/SystemAudioAction;->setSystemAudioMode(Z)V

    .line 151
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/SystemAudioAction;->finishWithCallback(I)V

    .line 152
    return v1

    .line 154
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v4, 0x72

    if-ne v0, v4, :cond_5

    iget v0, p0, Lcom/android/server/hdmi/SystemAudioAction;->mAvrLogicalAddress:I

    .line 155
    const-string v4, "SystemAudioAction"

    invoke-static {p1, v0, v4}, Lcom/android/server/hdmi/HdmiUtils;->checkCommandSource(Lcom/android/server/hdmi/HdmiCecMessage;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 158
    :cond_3
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    .line 159
    .local v0, "receivedStatus":Z
    iget-boolean v4, p0, Lcom/android/server/hdmi/SystemAudioAction;->mTargetAudioStatus:Z

    if-ne v0, v4, :cond_4

    .line 160
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/SystemAudioAction;->setSystemAudioMode(Z)V

    .line 161
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->startAudioStatusAction()V

    .line 162
    return v1

    .line 164
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected system audio mode request:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/SystemAudioAction;->finishWithCallback(I)V

    .line 169
    return v2

    .line 156
    .end local v0    # "receivedStatus":Z
    :cond_5
    :goto_0
    return v2
.end method

.method protected removeSystemAudioActionInProgress()V
    .locals 1

    .line 182
    const-class v0, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    invoke-virtual {p0, v0, p0}, Lcom/android/server/hdmi/SystemAudioAction;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 183
    const-class v0, Lcom/android/server/hdmi/SystemAudioActionFromAvr;

    invoke-virtual {p0, v0, p0}, Lcom/android/server/hdmi/SystemAudioAction;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 184
    return-void
.end method

.method protected sendSystemAudioModeRequest()V
    .locals 3

    .line 76
    const-class v0, Lcom/android/server/hdmi/RoutingControlAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/SystemAudioAction;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 77
    .local v0, "routingActions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/RoutingControlAction;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/hdmi/SystemAudioAction;->mState:I

    .line 80
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/RoutingControlAction;

    .line 81
    .local v1, "routingAction":Lcom/android/server/hdmi/RoutingControlAction;
    new-instance v2, Lcom/android/server/hdmi/SystemAudioAction$1;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/SystemAudioAction$1;-><init>(Lcom/android/server/hdmi/SystemAudioAction;)V

    invoke-virtual {v1, p0, v2}, Lcom/android/server/hdmi/RoutingControlAction;->addOnFinishedCallback(Lcom/android/server/hdmi/HdmiCecFeatureAction;Ljava/lang/Runnable;)V

    .line 87
    return-void

    .line 89
    .end local v1    # "routingAction":Lcom/android/server/hdmi/RoutingControlAction;
    :cond_0
    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioAction;->sendSystemAudioModeRequestInternal()V

    .line 90
    return-void
.end method

.method protected setSystemAudioMode(Z)V
    .locals 1
    .param p1, "mode"    # Z

    .line 136
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(Z)V

    .line 137
    return-void
.end method

.method protected startAudioStatusAction()V
    .locals 4

    .line 177
    new-instance v0, Lcom/android/server/hdmi/SystemAudioStatusAction;

    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    iget v2, p0, Lcom/android/server/hdmi/SystemAudioAction;->mAvrLogicalAddress:I

    iget-object v3, p0, Lcom/android/server/hdmi/SystemAudioAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/hdmi/SystemAudioStatusAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/SystemAudioAction;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->finish()V

    .line 179
    return-void
.end method
