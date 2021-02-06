.class public Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "SystemAudioInitiationActionFromAvr.java"


# static fields
.field static final MAX_RETRY_COUNT:I = 0x5

.field private static final STATE_WAITING_FOR_ACTIVE_SOURCE:I = 0x1

.field private static final STATE_WAITING_FOR_TV_SUPPORT:I = 0x2


# instance fields
.field private mSendRequestActiveSourceRetryCount:I

.field private mSendSetSystemAudioModeRetryCount:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 1
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->mSendRequestActiveSourceRetryCount:I

    .line 36
    iput v0, p0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->mSendSetSystemAudioModeRetryCount:I

    .line 40
    return-void
.end method

.method private handleActiveSourceTimeout()V
    .locals 3

    .line 117
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Cannot get active source."

    invoke-static {v2, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/16 v1, 0xf

    .line 122
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->getSourcePath()I

    move-result v2

    .line 121
    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->setAndBroadcastActiveSourceFromOneDeviceType(II)V

    .line 123
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->mState:I

    .line 124
    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->queryTvSystemAudioModeSupport()V

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    .line 128
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->finish()V

    .line 129
    return-void
.end method

.method private queryTvSystemAudioModeSupport()V
    .locals 2

    .line 132
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/-$$Lambda$SystemAudioInitiationActionFromAvr$Kp6VigLqlvVoDJpkhSkGpu8E8NQ;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/-$$Lambda$SystemAudioInitiationActionFromAvr$Kp6VigLqlvVoDJpkhSkGpu8E8NQ;-><init>(Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->queryTvSystemAudioModeSupport(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;)V

    .line 144
    return-void
.end method

.method private switchToRelevantInputForDeviceAt(I)V
    .locals 0
    .param p1, "physicalAddress"    # I

    .line 148
    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .locals 2
    .param p1, "state"    # I

    .line 75
    iget v0, p0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->mState:I

    if-eq v0, p1, :cond_0

    .line 76
    return-void

    .line 79
    :cond_0
    iget v0, p0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->handleActiveSourceTimeout()V

    .line 84
    :goto_0
    return-void
.end method

.method public synthetic lambda$queryTvSystemAudioModeSupport$2$SystemAudioInitiationActionFromAvr(Z)V
    .locals 2
    .param p1, "supported"    # Z

    .line 134
    if-eqz p1, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const/16 v0, 0xf

    invoke-virtual {p0, v1, v0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->sendSetSystemAudioMode(ZI)V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->finish()V

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    .line 141
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->finish()V

    .line 143
    :goto_0
    return-void
.end method

.method public synthetic lambda$sendRequestActiveSource$0$SystemAudioInitiationActionFromAvr(I)V
    .locals 2
    .param p1, "result"    # I

    .line 89
    if-eqz p1, :cond_1

    .line 90
    iget v0, p0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->mSendRequestActiveSourceRetryCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 91
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->mSendRequestActiveSourceRetryCount:I

    .line 92
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->sendRequestActiveSource()V

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    .line 95
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->finish()V

    .line 98
    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$sendSetSystemAudioMode$1$SystemAudioInitiationActionFromAvr(ZII)V
    .locals 2
    .param p1, "on"    # Z
    .param p2, "dest"    # I
    .param p3, "result"    # I

    .line 104
    if-eqz p3, :cond_1

    .line 105
    iget v0, p0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->mSendSetSystemAudioModeRetryCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 106
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->mSendSetSystemAudioModeRetryCount:I

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->sendSetSystemAudioMode(ZI)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    .line 110
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->finish()V

    .line 113
    :cond_1
    :goto_0
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 57
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x82

    if-eq v0, v2, :cond_0

    .line 70
    return v1

    .line 60
    :cond_0
    iget v0, p0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->mState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 61
    return v1

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    .line 65
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 66
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->mState:I

    .line 67
    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->queryTvSystemAudioModeSupport()V

    .line 68
    return v2
.end method

.method protected sendRequestActiveSource()V
    .locals 2

    .line 87
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->getSourceAddress()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRequestActiveSource(I)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/-$$Lambda$SystemAudioInitiationActionFromAvr$f4MXnpVbndKtwah7RVztUtj3RoU;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/-$$Lambda$SystemAudioInitiationActionFromAvr$f4MXnpVbndKtwah7RVztUtj3RoU;-><init>(Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 99
    return-void
.end method

.method protected sendSetSystemAudioMode(ZI)V
    .locals 2
    .param p1, "on"    # Z
    .param p2, "dest"    # I

    .line 102
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->getSourceAddress()I

    move-result v0

    invoke-static {v0, p2, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetSystemAudioMode(IIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/-$$Lambda$SystemAudioInitiationActionFromAvr$aPH0zHEfcwbPVrfqva9MSL3cLbI;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/hdmi/-$$Lambda$SystemAudioInitiationActionFromAvr$aPH0zHEfcwbPVrfqva9MSL3cLbI;-><init>(Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;ZI)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 114
    return-void
.end method

.method start()Z
    .locals 3

    .line 44
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    iget v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    const/4 v1, 0x1

    const v2, 0xffff

    if-ne v0, v2, :cond_0

    .line 45
    iput v1, p0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->mState:I

    .line 46
    iget v0, p0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->mState:I

    const/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->addTimer(II)V

    .line 47
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->sendRequestActiveSource()V

    goto :goto_0

    .line 49
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->mState:I

    .line 50
    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->queryTvSystemAudioModeSupport()V

    .line 52
    :goto_0
    return v1
.end method
