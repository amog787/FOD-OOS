.class Lcom/android/server/hdmi/HdmiControlService$BinderService$13;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$BinderService;->sendVendorCommand(II[BZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field final synthetic val$deviceType:I

.field final synthetic val$hasVendorId:Z

.field final synthetic val$params:[B

.field final synthetic val$targetAddress:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;IZI[B)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 1855
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;->val$deviceType:I

    iput-boolean p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;->val$hasVendorId:Z

    iput p4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;->val$targetAddress:I

    iput-object p5, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;->val$params:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1858
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$1100(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;->val$deviceType:I

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    .line 1859
    .local v0, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    if-nez v0, :cond_0

    .line 1860
    const-string v1, "HdmiControlService"

    const-string v2, "Local device not available"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    return-void

    .line 1863
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;->val$hasVendorId:Z

    if-eqz v1, :cond_1

    .line 1864
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 1865
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    iget v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;->val$targetAddress:I

    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v4, v4, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 1866
    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;->val$params:[B

    .line 1864
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildVendorCommandWithId(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_0

    .line 1868
    :cond_1
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 1869
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    iget v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;->val$targetAddress:I

    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;->val$params:[B

    .line 1868
    invoke-static {v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildVendorCommand(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1871
    :goto_0
    return-void
.end method
