.class Lcom/android/server/hdmi/HdmiControlService$BinderService$1;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$BinderService;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field final synthetic val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field final synthetic val$deviceId:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 1484
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$deviceId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1487
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    const-string v1, "HdmiControlService"

    if-nez v0, :cond_0

    .line 1488
    const-string v0, "Callback cannot be null"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    return-void

    .line 1491
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    .line 1492
    .local v0, "tv":Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    if-nez v0, :cond_3

    .line 1493
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v2, v2, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->access$1600(Lcom/android/server/hdmi/HdmiControlService;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1494
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/SelectRequestBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v2, v2, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$deviceId:I

    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-static {v2, v3, v4}, Lcom/android/server/hdmi/SelectRequestBuffer;->newDeviceSelect(Lcom/android/server/hdmi/HdmiControlService;ILandroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/SelectRequestBuffer$DeviceSelectRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/SelectRequestBuffer;->set(Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;)V

    .line 1496
    return-void

    .line 1498
    :cond_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v2, v2, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1499
    const-string v2, "Local tv device not available"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    return-void

    .line 1502
    :cond_2
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->access$3000(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 1503
    return-void

    .line 1505
    :cond_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$1300(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object v1

    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$deviceId:I

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDeviceById(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v1

    .line 1506
    .local v1, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v1, :cond_5

    .line 1507
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getPortId()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 1508
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v2, v2, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/server/hdmi/HdmiControlService;->access$3000(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 1509
    return-void

    .line 1514
    :cond_4
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->turnOn(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1515
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getPortId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1516
    return-void

    .line 1518
    :cond_5
    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$deviceId:I

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1519
    return-void
.end method
