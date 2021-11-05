.class Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;
.super Landroid/media/tv/TvInputManager$TvInputCallback;
.source "HdmiCecLocalDeviceTv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 138
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-direct {p0}, Landroid/media/tv/TvInputManager$TvInputCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputAdded(Ljava/lang/String;)V
    .locals 4
    .param p1, "inputId"    # Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getTvInputManager()Landroid/media/tv/TvInputManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager;->getTvInputInfo(Ljava/lang/String;)Landroid/media/tv/TvInputInfo;

    move-result-object v0

    .line 142
    .local v0, "tvInfo":Landroid/media/tv/TvInputInfo;
    if-nez v0, :cond_0

    return-void

    .line 143
    :cond_0
    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    .line 144
    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v1, :cond_1

    return-void

    .line 145
    :cond_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v3

    invoke-static {v2, p1, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->access$000(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Ljava/lang/String;I)V

    .line 146
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isCecDevice()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 147
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->processDelayedActiveSource(I)V

    .line 149
    :cond_2
    return-void
.end method

.method public onInputRemoved(Ljava/lang/String;)V
    .locals 1
    .param p1, "inputId"    # Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->access$100(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Ljava/lang/String;)V

    .line 154
    return-void
.end method
