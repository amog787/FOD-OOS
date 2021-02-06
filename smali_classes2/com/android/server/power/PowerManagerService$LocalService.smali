.class final Lcom/android/server/power/PowerManagerService$LocalService;
.super Landroid/os/PowerManagerInternal;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .line 5979
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/os/PowerManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public finishUidChanges()V
    .locals 1

    .line 6068
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->finishUidChangesInternal()V

    .line 6069
    return-void
.end method

.method public getLastWakeup()Landroid/os/PowerManager$WakeData;
    .locals 1

    .line 6112
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$8800(Lcom/android/server/power/PowerManagerService;)Landroid/os/PowerManager$WakeData;

    move-result-object v0

    return-object v0
.end method

.method public getLowPowerState(I)Landroid/os/PowerSaveState;
    .locals 1
    .param p1, "serviceType"    # I

    .line 6033
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$6700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getBatterySaverPolicy(I)Landroid/os/PowerSaveState;

    move-result-object v0

    return-object v0
.end method

.method public powerHint(II)V
    .locals 1
    .param p1, "hintId"    # I
    .param p2, "data"    # I

    .line 6093
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$4400(Lcom/android/server/power/PowerManagerService;II)V

    .line 6094
    return-void
.end method

.method public registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/PowerManagerInternal$LowPowerModeListener;

    .line 6038
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$6600(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/power/batterysaver/BatterySaverController;->addListener(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 6039
    return-void
.end method

.method public setDeviceIdleMode(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .line 6043
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleModeInternal(Z)Z

    move-result v0

    return v0
.end method

.method public setDeviceIdleTempWhitelist([I)V
    .locals 1
    .param p1, "appids"    # [I

    .line 6058
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleTempWhitelistInternal([I)V

    .line 6059
    return-void
.end method

.method public setDeviceIdleWhitelist([I)V
    .locals 1
    .param p1, "appids"    # [I

    .line 6053
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleWhitelistInternal([I)V

    .line 6054
    return-void
.end method

.method public setDozeOverrideFromDreamManager(II)V
    .locals 1
    .param p1, "screenState"    # I
    .param p2, "screenBrightness"    # I

    .line 5991
    packed-switch p1, :pswitch_data_0

    .line 6001
    const/4 p1, 0x0

    goto :goto_0

    .line 5999
    :pswitch_0
    nop

    .line 6004
    :goto_0
    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    const/16 v0, 0xff

    if-le p2, v0, :cond_1

    .line 6006
    :cond_0
    const/4 p2, -0x1

    .line 6008
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$8400(Lcom/android/server/power/PowerManagerService;II)V

    .line 6009
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

    .line 6023
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->access$8700(Lcom/android/server/power/PowerManagerService;Z)V

    .line 6024
    return-void
.end method

.method public setLightDeviceIdleMode(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .line 6048
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setLightDeviceIdleModeInternal(Z)Z

    move-result v0

    return v0
.end method

.method public setMaximumScreenOffTimeoutFromDeviceAdmin(IJ)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "timeMs"    # J

    .line 6028
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->setMaximumScreenOffTimeoutFromDeviceAdminInternal(IJ)V

    .line 6029
    return-void
.end method

.method public setPowerBoost(II)V
    .locals 1
    .param p1, "boost"    # I
    .param p2, "durationMs"    # I

    .line 6098
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$5500(Lcom/android/server/power/PowerManagerService;II)V

    .line 6099
    return-void
.end method

.method public setPowerMode(IZ)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "enabled"    # Z

    .line 6103
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;IZ)Z

    .line 6104
    return-void
.end method

.method public setScreenBrightnessOverrideFromWindowManager(F)V
    .locals 1
    .param p1, "screenBrightness"    # F

    .line 5982
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 5984
    :cond_0
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 5986
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->access$8300(Lcom/android/server/power/PowerManagerService;F)V

    .line 5987
    return-void
.end method

.method public setUserActivityTimeoutOverrideFromWindowManager(J)V
    .locals 1
    .param p1, "timeoutMillis"    # J

    .line 6018
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$8600(Lcom/android/server/power/PowerManagerService;J)V

    .line 6019
    return-void
.end method

.method public setUserInactiveOverrideFromWindowManager()V
    .locals 1

    .line 6013
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$8500(Lcom/android/server/power/PowerManagerService;)V

    .line 6014
    return-void
.end method

.method public startUidChanges()V
    .locals 1

    .line 6063
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->startUidChangesInternal()V

    .line 6064
    return-void
.end method

.method public uidActive(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 6083
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->uidActiveInternal(I)V

    .line 6084
    return-void
.end method

.method public uidGone(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 6078
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->uidGoneInternal(I)V

    .line 6079
    return-void
.end method

.method public uidIdle(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 6088
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->uidIdleInternal(I)V

    .line 6089
    return-void
.end method

.method public updateUidProcState(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .line 6073
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->updateUidProcStateInternal(II)V

    .line 6074
    return-void
.end method

.method public wasDeviceIdleFor(J)Z
    .locals 1
    .param p1, "ms"    # J

    .line 6107
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->wasDeviceIdleForInternal(J)Z

    move-result v0

    return v0
.end method
