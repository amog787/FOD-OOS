.class Lcom/android/server/hdmi/HdmiControlService$5;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "HdmiControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService;->invokeHdmiControlStatusChangeListenerLocked(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field final synthetic val$isEnabled:Z

.field final synthetic val$listener:Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiControlService;

    .line 2706
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$5;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$5;->val$listener:Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    iput-boolean p3, p0, Lcom/android/server/hdmi/HdmiControlService$5;->val$isEnabled:Z

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 4
    .param p1, "status"    # I

    .line 2708
    const/4 v0, 0x1

    .line 2709
    .local v0, "isAvailable":Z
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 2712
    :cond_0
    const/4 v0, 0x0

    .line 2716
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$5;->val$listener:Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService$5;->val$isEnabled:Z

    invoke-interface {v1, v2, v0}, Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;->onStatusChange(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2720
    goto :goto_0

    .line 2717
    :catch_0
    move-exception v1

    .line 2718
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to report HdmiControlStatusChange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/hdmi/HdmiControlService$5;->val$isEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HdmiControlService"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2721
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
