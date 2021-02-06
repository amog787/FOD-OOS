.class public Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;
.super Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;
.source "SelectRequestBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/SelectRequestBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PortSelectRequest"
.end annotation


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiControlService;ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0
    .param p1, "srv"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p2, "id"    # I
    .param p3, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;-><init>(Lcom/android/server/hdmi/HdmiControlService;ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 106
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiControlService;ILandroid/hardware/hdmi/IHdmiControlCallback;Lcom/android/server/hdmi/SelectRequestBuffer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .param p4, "x3"    # Lcom/android/server/hdmi/SelectRequestBuffer$1;

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;-><init>(Lcom/android/server/hdmi/HdmiControlService;ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 4

    .line 110
    invoke-virtual {p0}, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;->isLocalDeviceReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calling delayed portSelect id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SelectRequestBuffer"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    .line 113
    .local v0, "tv":Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    if-eqz v0, :cond_0

    .line 114
    iget v1, p0, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;->mId:I

    iget-object v2, p0, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 115
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v1

    .line 118
    .local v1, "audioSystem":Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;
    if-eqz v1, :cond_1

    .line 119
    iget v2, p0, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;->mId:I

    iget-object v3, p0, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 122
    .end local v0    # "tv":Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .end local v1    # "audioSystem":Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;
    :cond_1
    return-void
.end method
