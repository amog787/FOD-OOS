.class Lcom/android/server/hdmi/HdmiControlService$BinderService$19;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$BinderService;->sendMhlVendorCommand(III[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field final synthetic val$data:[B

.field final synthetic val$length:I

.field final synthetic val$offset:I

.field final synthetic val$portId:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;III[B)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 2188
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$portId:I

    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$offset:I

    iput p4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$length:I

    iput-object p5, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 2191
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    const-string v1, "HdmiControlService"

    if-nez v0, :cond_0

    .line 2192
    const-string v0, "Hdmi control is disabled."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    return-void

    .line 2195
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$1000(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object v0

    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$portId:I

    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v0

    .line 2196
    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-nez v0, :cond_1

    .line 2197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid port id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$portId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    return-void

    .line 2200
    :cond_1
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$1000(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object v1

    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$portId:I

    iget v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$offset:I

    iget v4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$length:I

    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$data:[B

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->sendVendorCommand(III[B)V

    .line 2201
    return-void
.end method
