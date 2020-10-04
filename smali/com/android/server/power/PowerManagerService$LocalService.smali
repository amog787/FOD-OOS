.class final Lcom/android/server/power/PowerManagerService$LocalService;
.super Landroid/os/PowerManagerInternal;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .line 5485
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/os/PowerManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerService$1;

    .line 5485
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$LocalService;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public finishUidChanges()V
    .locals 1

    .line 5574
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->finishUidChangesInternal()V

    .line 5575
    return-void
.end method

.method public getLastWakeup()Landroid/os/PowerManager$WakeData;
    .locals 1

    .line 5609
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$7900(Lcom/android/server/power/PowerManagerService;)Landroid/os/PowerManager$WakeData;

    move-result-object v0

    return-object v0
.end method

.method public getLowPowerState(I)Landroid/os/PowerSaveState;
    .locals 1
    .param p1, "serviceType"    # I

    .line 5539
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$6000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getBatterySaverPolicy(I)Landroid/os/PowerSaveState;

    move-result-object v0

    return-object v0
.end method

.method public powerHint(II)V
    .locals 1
    .param p1, "hintId"    # I
    .param p2, "data"    # I

    .line 5599
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;II)V

    .line 5600
    return-void
.end method

.method public registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/PowerManagerInternal$LowPowerModeListener;

    .line 5544
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5900(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/power/batterysaver/BatterySaverController;->addListener(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 5545
    return-void
.end method

.method public setDeviceIdleMode(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .line 5549
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleModeInternal(Z)Z

    move-result v0

    return v0
.end method

.method public setDeviceIdleTempWhitelist([I)V
    .locals 1
    .param p1, "appids"    # [I

    .line 5564
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleTempWhitelistInternal([I)V

    .line 5565
    return-void
.end method

.method public setDeviceIdleWhitelist([I)V
    .locals 1
    .param p1, "appids"    # [I

    .line 5559
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleWhitelistInternal([I)V

    .line 5560
    return-void
.end method

.method public setDozeOverrideFromDreamManager(II)V
    .locals 1
    .param p1, "screenState"    # I
    .param p2, "screenBrightness"    # I

    .line 5497
    packed-switch p1, :pswitch_data_0

    .line 5507
    const/4 p1, 0x0

    goto :goto_0

    .line 5505
    :pswitch_0
    nop

    .line 5510
    :goto_0
    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    if-le p2, v0, :cond_1

    .line 5512
    :cond_0
    const/4 p2, -0x1

    .line 5514
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$7500(Lcom/android/server/power/PowerManagerService;II)V

    .line 5515
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setDrawWakeLockOverrideFromSidekick(Z)V
    .locals 1
    .param p1, "keepState"    # Z

    .line 5529
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->access$7800(Lcom/android/server/power/PowerManagerService;Z)V

    .line 5530
    return-void
.end method

.method public setLightDeviceIdleMode(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .line 5554
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setLightDeviceIdleModeInternal(Z)Z

    move-result v0

    return v0
.end method

.method public setMaximumScreenOffTimeoutFromDeviceAdmin(IJ)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "timeMs"    # J

    .line 5534
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->setMaximumScreenOffTimeoutFromDeviceAdminInternal(IJ)V

    .line 5535
    return-void
.end method

.method public setScreenBrightnessOverrideFromWindowManager(I)V
    .locals 1
    .param p1, "screenBrightness"    # I

    .line 5488
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    if-le p1, v0, :cond_1

    .line 5490
    :cond_0
    const/4 p1, -0x1

    .line 5492
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->access$7400(Lcom/android/server/power/PowerManagerService;I)V

    .line 5493
    return-void
.end method

.method public setUserActivityTimeoutOverrideFromWindowManager(J)V
    .locals 1
    .param p1, "timeoutMillis"    # J

    .line 5524
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$7700(Lcom/android/server/power/PowerManagerService;J)V

    .line 5525
    return-void
.end method

.method public setUserInactiveOverrideFromWindowManager()V
    .locals 1

    .line 5519
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$7600(Lcom/android/server/power/PowerManagerService;)V

    .line 5520
    return-void
.end method

.method public startUidChanges()V
    .locals 1

    .line 5569
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->startUidChangesInternal()V

    .line 5570
    return-void
.end method

.method public uidActive(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 5589
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->uidActiveInternal(I)V

    .line 5590
    return-void
.end method

.method public uidGone(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 5584
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->uidGoneInternal(I)V

    .line 5585
    return-void
.end method

.method public uidIdle(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 5594
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->uidIdleInternal(I)V

    .line 5595
    return-void
.end method

.method public updateUidProcState(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .line 5579
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->updateUidProcStateInternal(II)V

    .line 5580
    return-void
.end method

.method public wasDeviceIdleFor(J)Z
    .locals 1
    .param p1, "ms"    # J

    .line 5604
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->wasDeviceIdleForInternal(J)Z

    move-result v0

    return v0
.end method
