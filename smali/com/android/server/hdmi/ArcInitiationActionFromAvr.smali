.class public Lcom/android/server/hdmi/ArcInitiationActionFromAvr;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "ArcInitiationActionFromAvr.java"


# static fields
.field private static final MAX_RETRY_COUNT:I = 0x5

.field private static final STATE_ARC_INITIATED:I = 0x2

.field private static final STATE_WAITING_FOR_INITIATE_ARC_RESPONSE:I = 0x1

.field private static final TIMEOUT_MS:I = 0x3e8


# instance fields
.field private mSendRequestActiveSourceRetryCount:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 1
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 35
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->mSendRequestActiveSourceRetryCount:I

    .line 36
    return-void
.end method

.method private handleInitiateArcTimeout()V
    .locals 3

    .line 102
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "handleInitiateArcTimeout"

    invoke-static {v2, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setArcStatus(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->finish()V

    .line 105
    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .locals 2
    .param p1, "state"    # I

    .line 80
    iget v0, p0, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->mState:I

    if-eq v0, p1, :cond_0

    .line 81
    return-void

    .line 84
    :cond_0
    iget v0, p0, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 86
    :cond_1
    invoke-direct {p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->handleInitiateArcTimeout()V

    .line 89
    :goto_0
    return-void
.end method

.method public synthetic lambda$sendInitiateArc$0$ArcInitiationActionFromAvr(I)V
    .locals 2
    .param p1, "result"    # I

    .line 94
    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setArcStatus(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->finish()V

    .line 98
    :cond_0
    return-void
.end method

.method public synthetic lambda$sendRequestActiveSource$1$ArcInitiationActionFromAvr(I)V
    .locals 2
    .param p1, "result"    # I

    .line 110
    if-eqz p1, :cond_1

    .line 111
    iget v0, p0, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->mSendRequestActiveSourceRetryCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 112
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->mSendRequestActiveSourceRetryCount:I

    .line 113
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->sendRequestActiveSource()V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->finish()V

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->finish()V

    .line 120
    :goto_0
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 49
    iget v0, p0, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 50
    return v2

    .line 52
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v3, 0xc1

    if-eq v0, v3, :cond_2

    const/16 v3, 0xc2

    if-eq v0, v3, :cond_1

    .line 75
    return v2

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setArcStatus(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->finish()V

    .line 64
    return v1

    .line 66
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->mState:I

    .line 67
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    iget v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->getSourcePath()I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 68
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioActivated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->sendRequestActiveSource()V

    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->finish()V

    .line 73
    :goto_0
    return v1

    .line 54
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0xc0

    if-ne v0, v3, :cond_5

    .line 55
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setArcStatus(Z)V

    .line 56
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->finish()V

    .line 57
    return v1

    .line 59
    :cond_5
    return v2
.end method

.method protected sendInitiateArc()V
    .locals 2

    .line 92
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->getSourceAddress()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildInitiateArc(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/-$$Lambda$ArcInitiationActionFromAvr$qaL9xTkYpCTx60O4hdKmzJ-IE6k;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/-$$Lambda$ArcInitiationActionFromAvr$qaL9xTkYpCTx60O4hdKmzJ-IE6k;-><init>(Lcom/android/server/hdmi/ArcInitiationActionFromAvr;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 99
    return-void
.end method

.method protected sendRequestActiveSource()V
    .locals 2

    .line 108
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->getSourceAddress()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRequestActiveSource(I)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/-$$Lambda$ArcInitiationActionFromAvr$ysMwShprSV2Ejk2WTyEkZxajr8c;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/-$$Lambda$ArcInitiationActionFromAvr$ysMwShprSV2Ejk2WTyEkZxajr8c;-><init>(Lcom/android/server/hdmi/ArcInitiationActionFromAvr;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 121
    return-void
.end method

.method start()Z
    .locals 3

    .line 40
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setArcStatus(Z)V

    .line 41
    iput v1, p0, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->mState:I

    .line 42
    iget v0, p0, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->mState:I

    const/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->addTimer(II)V

    .line 43
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->sendInitiateArc()V

    .line 44
    return v1
.end method
