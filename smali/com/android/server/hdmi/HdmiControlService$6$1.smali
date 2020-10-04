.class Lcom/android/server/hdmi/HdmiControlService$6$1;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$6;->onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$6;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/hdmi/HdmiControlService$6;

    .line 2757
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$6$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2760
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$6$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$6;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$6;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$1100(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecController;->setOption(IZ)V

    .line 2761
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$6$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$6;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$6;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$1100(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecController;->setOption(IZ)V

    .line 2762
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$6$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$6;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$6;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$1300(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object v0

    const/16 v2, 0x67

    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    .line 2763
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$6$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$6;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$6;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$6300(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2764
    return-void
.end method
