.class final Lcom/android/server/hdmi/RequestArcTerminationAction;
.super Lcom/android/server/hdmi/RequestArcAction;
.source "RequestArcTerminationAction.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestArcTerminationAction"


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V
    .locals 0
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "avrAddress"    # I

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/RequestArcAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    .line 36
    return-void
.end method


# virtual methods
.method start()Z
    .locals 3

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/RequestArcTerminationAction;->mState:I

    .line 41
    iget v1, p0, Lcom/android/server/hdmi/RequestArcTerminationAction;->mState:I

    const/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/RequestArcTerminationAction;->addTimer(II)V

    .line 43
    nop

    .line 44
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcTerminationAction;->getSourceAddress()I

    move-result v1

    iget v2, p0, Lcom/android/server/hdmi/RequestArcTerminationAction;->mAvrAddress:I

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRequestArcTermination(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    .line 45
    .local v1, "command":Lcom/android/server/hdmi/HdmiCecMessage;
    new-instance v2, Lcom/android/server/hdmi/RequestArcTerminationAction$1;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/RequestArcTerminationAction$1;-><init>(Lcom/android/server/hdmi/RequestArcTerminationAction;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/RequestArcTerminationAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 56
    return v0
.end method
