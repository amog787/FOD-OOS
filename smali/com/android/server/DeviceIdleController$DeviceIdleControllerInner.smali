.class public final Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DeviceIdleControllerInner"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceIdleController:Lcom/android/server/DeviceIdleController;

.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;Landroid/content/Context;Lcom/android/server/DeviceIdleController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "dic"    # Lcom/android/server/DeviceIdleController;

    .line 596
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    iput-object p2, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->mContext:Landroid/content/Context;

    .line 598
    iput-object p3, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    .line 599
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->mHandler:Landroid/os/Handler;

    .line 600
    return-void
.end method


# virtual methods
.method cancelAlarmLocked()V
    .locals 2

    .line 648
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v0

    .line 649
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    .line 650
    monitor-exit v0

    .line 651
    return-void

    .line 650
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getConstants()Lcom/android/server/DeviceIdleController$Constants;
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$200(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v0

    return-object v0
.end method

.method getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getGpsLocationListener()Landroid/location/LocationListener;
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$400(Lcom/android/server/DeviceIdleController;)Landroid/location/LocationListener;

    move-result-object v0

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getLocationManager()Landroid/location/LocationManager;
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$300(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v0

    return-object v0
.end method

.method getService()Lcom/android/server/DeviceIdleController;
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    return-object v0
.end method

.method public getSystemPowerWhitelist()[Ljava/lang/String;
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getSystemPowerWhitelistInternal()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isCharging()Z
    .locals 1

    .line 664
    monitor-enter p0

    .line 665
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$800(Lcom/android/server/DeviceIdleController;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 666
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isPowerSaveMode()Z
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$500(Lcom/android/server/DeviceIdleController;)Z

    move-result v0

    return v0
.end method

.method scheduleAlarm(JZ)V
    .locals 2
    .param p1, "delay"    # J
    .param p3, "idleUntil"    # Z

    .line 641
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v0

    .line 642
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 643
    monitor-exit v0

    .line 644
    return-void

    .line 643
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setHasGps(Z)V
    .locals 1
    .param p1, "on"    # Z

    .line 615
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0, p1}, Lcom/android/server/DeviceIdleController;->access$102(Lcom/android/server/DeviceIdleController;Z)Z

    .line 616
    return-void
.end method

.method setLocating(Z)V
    .locals 1
    .param p1, "on"    # Z

    .line 611
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0, p1}, Lcom/android/server/DeviceIdleController;->access$002(Lcom/android/server/DeviceIdleController;Z)Z

    .line 612
    return-void
.end method

.method updateSmartDozeFlagLocked(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 653
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$500(Lcom/android/server/DeviceIdleController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->this$0:Lcom/android/server/DeviceIdleController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/DeviceIdleController;->access$602(Lcom/android/server/DeviceIdleController;Z)Z

    .line 655
    return-void

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$600(Lcom/android/server/DeviceIdleController;)Z

    move-result v0

    if-eq v0, p1, :cond_2

    .line 658
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$700()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSmartDozeFlagLocked: enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceIdleController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0, p1}, Lcom/android/server/DeviceIdleController;->access$602(Lcom/android/server/DeviceIdleController;Z)Z

    .line 661
    :cond_2
    return-void
.end method
