.class Lcom/android/server/hdmi/HdmiControlService$BinderService$4;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$BinderService;->sendVolumeKeyEvent(IIZ)V
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
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;IIZ)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 1767
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$4;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$4;->val$deviceType:I

    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$4;->val$keyCode:I

    iput-boolean p4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$4;->val$isPressed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1770
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$4;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$800(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v0

    const-string v1, "HdmiControlService"

    if-nez v0, :cond_0

    .line 1771
    const-string v0, "CEC controller not available to send volume key event."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    return-void

    .line 1774
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$4;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$800(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v0

    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$4;->val$deviceType:I

    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    .line 1775
    .local v0, "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    if-nez v0, :cond_1

    .line 1776
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Local device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$4;->val$deviceType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not available to send volume key event."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    return-void

    .line 1780
    :cond_1
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$4;->val$keyCode:I

    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$4;->val$isPressed:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendVolumeKeyEvent(IZ)V

    .line 1781
    return-void
.end method
