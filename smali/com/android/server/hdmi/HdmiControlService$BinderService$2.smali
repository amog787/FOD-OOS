.class Lcom/android/server/hdmi/HdmiControlService$BinderService$2;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$BinderService;->portSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field final synthetic val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field final synthetic val$portId:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 1526
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->val$portId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1529
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    const-string v1, "HdmiControlService"

    if-nez v0, :cond_0

    .line 1530
    const-string v0, "Callback cannot be null"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    return-void

    .line 1533
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    .line 1534
    .local v0, "tv":Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    if-eqz v0, :cond_1

    .line 1535
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->val$portId:I

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1536
    return-void

    .line 1538
    :cond_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v2, v2, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v2

    .line 1539
    .local v2, "audioSystem":Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;
    if-eqz v2, :cond_2

    .line 1540
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->val$portId:I

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1541
    return-void

    .line 1544
    :cond_2
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v3, v3, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v3}, Lcom/android/server/hdmi/HdmiControlService;->access$1600(Lcom/android/server/hdmi/HdmiControlService;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1545
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/SelectRequestBuffer;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v3, v3, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget v4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->val$portId:I

    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-static {v3, v4, v5}, Lcom/android/server/hdmi/SelectRequestBuffer;->newPortSelect(Lcom/android/server/hdmi/HdmiControlService;ILandroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/hdmi/SelectRequestBuffer;->set(Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;)V

    .line 1547
    return-void

    .line 1549
    :cond_3
    const-string v3, "Local device not available"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    const/4 v4, 0x2

    invoke-static {v1, v3, v4}, Lcom/android/server/hdmi/HdmiControlService;->access$3000(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 1551
    return-void
.end method
