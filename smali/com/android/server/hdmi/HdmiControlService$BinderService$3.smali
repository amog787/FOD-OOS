.class Lcom/android/server/hdmi/HdmiControlService$BinderService$3;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$BinderService;->sendKeyEvent(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field final synthetic val$deviceType:I

.field final synthetic val$isPressed:Z

.field final synthetic val$keyCode:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;IZI)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 1559
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$keyCode:I

    iput-boolean p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$isPressed:Z

    iput p4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$deviceType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1562
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$1300(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$3100(Lcom/android/server/hdmi/HdmiControlService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v0

    .line 1563
    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v0, :cond_0

    .line 1564
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$keyCode:I

    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$isPressed:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->sendKeyEvent(IZ)V

    .line 1565
    return-void

    .line 1567
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$1100(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1568
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$1100(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v1

    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$deviceType:I

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v1

    .line 1569
    .local v1, "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    if-nez v1, :cond_1

    .line 1570
    const-string v2, "HdmiControlService"

    const-string v3, "Local device not available to send key event."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    return-void

    .line 1573
    :cond_1
    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$keyCode:I

    iget-boolean v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$isPressed:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendKeyEvent(IZ)V

    .line 1575
    .end local v1    # "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_2
    return-void
.end method
