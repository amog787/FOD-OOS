.class abstract Lcom/android/server/hdmi/RequestArcAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "RequestArcAction.java"


# static fields
.field protected static final STATE_WATING_FOR_REQUEST_ARC_REQUEST_RESPONSE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RequestArcAction"


# instance fields
.field protected final mAvrAddress:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V
    .locals 2
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "avrAddress"    # I

    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->getSourceAddress()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)V

    .line 44
    const/4 v0, 0x5

    invoke-static {p2, v0}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)V

    .line 45
    iput p2, p0, Lcom/android/server/hdmi/RequestArcAction;->mAvrAddress:I

    .line 46
    return-void
.end method


# virtual methods
.method protected final disableArcTransmission()V
    .locals 4

    .line 77
    new-instance v0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v1

    iget v2, p0, Lcom/android/server/hdmi/RequestArcAction;->mAvrAddress:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V

    .line 79
    .local v0, "action":Lcom/android/server/hdmi/SetArcTransmissionStateAction;
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/RequestArcAction;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 80
    return-void
.end method

.method final handleTimerEvent(I)V
    .locals 2
    .param p1, "state"    # I

    .line 84
    iget v0, p0, Lcom/android/server/hdmi/RequestArcAction;->mState:I

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[T] RequestArcAction."

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->disableArcTransmission()V

    .line 89
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->finish()V

    .line 90
    return-void

    .line 85
    :cond_1
    :goto_0
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 5
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 50
    iget v0, p0, Lcom/android/server/hdmi/RequestArcAction;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/android/server/hdmi/RequestArcAction;->mAvrAddress:I

    .line 51
    const-string v3, "RequestArcAction"

    invoke-static {p1, v0, v3}, Lcom/android/server/hdmi/HdmiUtils;->checkCommandSource(Lcom/android/server/hdmi/HdmiCecMessage;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    .line 55
    .local v0, "opcode":I
    if-eqz v0, :cond_1

    .line 72
    return v2

    .line 60
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v3

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    .line 61
    .local v3, "originalOpcode":I
    const/16 v4, 0xc4

    if-ne v3, v4, :cond_2

    .line 62
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->disableArcTransmission()V

    .line 63
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->finish()V

    .line 64
    return v1

    .line 65
    :cond_2
    const/16 v4, 0xc3

    if-ne v3, v4, :cond_3

    .line 66
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setArcStatus(Z)Z

    .line 67
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->finish()V

    .line 68
    return v1

    .line 70
    :cond_3
    return v2

    .line 52
    .end local v0    # "opcode":I
    .end local v3    # "originalOpcode":I
    :cond_4
    :goto_0
    return v2
.end method
