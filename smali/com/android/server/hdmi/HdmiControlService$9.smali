.class Lcom/android/server/hdmi/HdmiControlService$9;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService;->disableHdmiControlService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiControlService;

    .line 3173
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$9;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 2
    .param p1, "device"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 3176
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$9;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$000(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 3177
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$9;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$800(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$9$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiControlService$9$1;-><init>(Lcom/android/server/hdmi/HdmiControlService$9;)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->flush(Ljava/lang/Runnable;)V

    .line 3186
    return-void
.end method
