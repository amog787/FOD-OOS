.class final Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;
.super Landroid/hardware/TriggerEventListener;
.source "GestureLauncherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GestureLauncherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CameraLiftTriggerEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GestureLauncherService;


# direct methods
.method private constructor <init>(Lcom/android/server/GestureLauncherService;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/GestureLauncherService;Lcom/android/server/GestureLauncherService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/GestureLauncherService;
    .param p2, "x1"    # Lcom/android/server/GestureLauncherService$1;

    .line 584
    invoke-direct {p0, p1}, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;-><init>(Lcom/android/server/GestureLauncherService;)V

    return-void
.end method


# virtual methods
.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/TriggerEvent;

    .line 589
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->access$1500(Lcom/android/server/GestureLauncherService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    return-void

    .line 594
    :cond_0
    iget-object v0, p1, Landroid/hardware/TriggerEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->access$1600(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 595
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->access$400(Lcom/android/server/GestureLauncherService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 596
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->access$400(Lcom/android/server/GestureLauncherService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 598
    .local v1, "sensorManager":Landroid/hardware/SensorManager;
    iget-object v2, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    .line 599
    invoke-static {v2}, Lcom/android/server/GestureLauncherService;->access$1700(Lcom/android/server/GestureLauncherService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardShowingAndNotOccluded()Z

    move-result v2

    .line 600
    .local v2, "keyguardShowingAndNotOccluded":Z
    iget-object v3, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v3}, Lcom/android/server/GestureLauncherService;->access$1800(Lcom/android/server/GestureLauncherService;)Landroid/os/PowerManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    .line 607
    .local v3, "interactive":Z
    if-nez v2, :cond_1

    if-nez v3, :cond_2

    .line 608
    :cond_1
    iget-object v4, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Lcom/android/server/GestureLauncherService;->handleCameraGesture(ZI)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 610
    iget-object v4, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v4}, Lcom/android/server/GestureLauncherService;->access$400(Lcom/android/server/GestureLauncherService;)Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x3dd

    invoke-static {v4, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 616
    :cond_2
    iget-object v4, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    .line 617
    invoke-static {v4}, Lcom/android/server/GestureLauncherService;->access$1900(Lcom/android/server/GestureLauncherService;)Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v6}, Lcom/android/server/GestureLauncherService;->access$1600(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;

    move-result-object v6

    .line 616
    invoke-virtual {v1, v5, v6}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/GestureLauncherService;->access$1502(Lcom/android/server/GestureLauncherService;Z)Z

    .line 621
    return-void

    .line 623
    .end local v0    # "resources":Landroid/content/res/Resources;
    .end local v1    # "sensorManager":Landroid/hardware/SensorManager;
    .end local v2    # "keyguardShowingAndNotOccluded":Z
    .end local v3    # "interactive":Z
    :cond_3
    return-void
.end method
