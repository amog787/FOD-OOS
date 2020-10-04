.class public Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "DetectTvSystemAudioModeSupportAction.java"


# static fields
.field private static final STATE_WAITING_FOR_FEATURE_ABORT:I = 0x1


# instance fields
.field private mCallback:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;

.field private mState:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;)V
    .locals 0
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "callback"    # Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;

    .line 35
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 36
    iput-object p2, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mCallback:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;

    .line 37
    return-void
.end method

.method private finishAction(Z)V
    .locals 1
    .param p1, "supported"    # Z

    .line 86
    iget-object v0, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mCallback:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;

    invoke-interface {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;->onResult(Z)V

    .line 87
    invoke-virtual {p0}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setTvSystemAudioModeSupport(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->finish()V

    .line 89
    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .locals 2
    .param p1, "state"    # I

    .line 63
    iget v0, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mState:I

    if-eq v0, p1, :cond_0

    .line 64
    return-void

    .line 67
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->finishAction(Z)V

    .line 72
    :goto_0
    return-void
.end method

.method public synthetic lambda$sendSetSystemAudioMode$0$DetectTvSystemAudioModeSupportAction(I)V
    .locals 1
    .param p1, "result"    # I

    .line 79
    if-eqz p1, :cond_0

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->finishAction(Z)V

    .line 82
    :cond_0
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 49
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 50
    iget v0, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 51
    return v1

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0x72

    if-ne v0, v3, :cond_1

    .line 54
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->finishAction(Z)V

    .line 55
    return v2

    .line 58
    :cond_1
    return v1
.end method

.method protected sendSetSystemAudioMode()V
    .locals 3

    .line 75
    nop

    .line 76
    invoke-virtual {p0}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->getSourceAddress()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetSystemAudioMode(IIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/-$$Lambda$DetectTvSystemAudioModeSupportAction$9ZB9uijssEfI695RNRL5G3nnAaM;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/-$$Lambda$DetectTvSystemAudioModeSupportAction$9ZB9uijssEfI695RNRL5G3nnAaM;-><init>(Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;)V

    .line 75
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 83
    return-void
.end method

.method start()Z
    .locals 3

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mState:I

    .line 42
    iget v1, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mState:I

    const/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->addTimer(II)V

    .line 43
    invoke-virtual {p0}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->sendSetSystemAudioMode()V

    .line 44
    return v0
.end method
