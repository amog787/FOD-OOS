.class Lcom/android/server/hdmi/HdmiControlService$3;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService;->addHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field final synthetic val$listener:Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiControlService;

    .line 2439
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$3;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$3;->val$listener:Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2443
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$3;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2200(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2445
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$3;->val$listener:Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$3;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->access$5200(Lcom/android/server/hdmi/HdmiControlService;)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;->onHdmiCecVolumeControlFeature(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2449
    goto :goto_0

    .line 2450
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2446
    :catch_0
    move-exception v1

    .line 2447
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "HdmiControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to report HdmiControlVolumeControlStatusChange: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$3;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 2448
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiControlService;->access$5200(Lcom/android/server/hdmi/HdmiControlService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2447
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2450
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 2451
    return-void

    .line 2450
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
