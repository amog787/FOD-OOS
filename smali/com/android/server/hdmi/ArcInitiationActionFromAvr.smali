.class public Lcom/android/server/hdmi/ArcInitiationActionFromAvr;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "ArcInitiationActionFromAvr.java"


# static fields
.field private static final STATE_ARC_INITIATED:I = 0x2

.field private static final STATE_WAITING_FOR_INITIATE_ARC_RESPONSE:I = 0x1

.field private static final TIMEOUT_MS:I = 0x3e8


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 0
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 33
    return-void
.end method

.method private handleInitiateArcTimeout()V
    .locals 2

    .line 95
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "handleInitiateArcTimeout"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->finish()V

    .line 97
    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .locals 2
    .param p1, "state"    # I

    .line 72
    iget v0, p0, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->mState:I

    if-eq v0, p1, :cond_0

    .line 73
    return-void

    .line 76
    :cond_0
    iget v0, p0, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    invoke-direct {p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->handleInitiateArcTimeout()V

    .line 81
    :goto_0
    return-void
.end method

.method public synthetic lambda$sendInitiateArc$0$ArcInitiationActionFromAvr(I)V
    .locals 2
    .param p1, "result"    # I

    .line 86
    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setArcStatus(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->finish()V

    .line 90
    :cond_0
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 46
    iget v0, p0, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 47
    return v2

    .line 49
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v3, 0xc1

    if-eq v0, v3, :cond_2

    const/16 v3, 0xc2

    if-eq v0, v3, :cond_1

    .line 67
    return v2

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setArcStatus(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->finish()V

    .line 61
    return v1

    .line 63
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->mState:I

    .line 64
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->finish()V

    .line 65
    return v1

    .line 51
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0xc0

    if-ne v0, v3, :cond_4

    .line 52
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setArcStatus(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->finish()V

    .line 54
    return v1

    .line 56
    :cond_4
    return v2
.end method

.method protected sendInitiateArc()V
    .locals 2

    .line 84
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->getSourceAddress()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildInitiateArc(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/-$$Lambda$ArcInitiationActionFromAvr$qaL9xTkYpCTx60O4hdKmzJ-IE6k;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/-$$Lambda$ArcInitiationActionFromAvr$qaL9xTkYpCTx60O4hdKmzJ-IE6k;-><init>(Lcom/android/server/hdmi/ArcInitiationActionFromAvr;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 91
    return-void
.end method

.method start()Z
    .locals 3

    .line 37
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setArcStatus(Z)V

    .line 38
    iput v1, p0, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->mState:I

    .line 39
    iget v0, p0, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->mState:I

    const/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->addTimer(II)V

    .line 40
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->sendInitiateArc()V

    .line 41
    return v1
.end method
