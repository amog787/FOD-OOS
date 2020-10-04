.class final Lcom/android/server/display/color/ColorDisplayService$BinderService;
.super Landroid/hardware/display/IColorDisplayManager$Stub;
.source "ColorDisplayService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/color/ColorDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;


# direct methods
.method constructor <init>(Lcom/android/server/display/color/ColorDisplayService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 1629
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-direct {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1879
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ColorDisplayService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1880
    return-void

    .line 1883
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1885
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2, p2}, Lcom/android/server/display/color/ColorDisplayService;->access$4600(Lcom/android/server/display/color/ColorDisplayService;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1887
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1888
    nop

    .line 1889
    return-void

    .line 1887
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getColorMode()I
    .locals 3

    .line 1646
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1648
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$1500(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1650
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1648
    return v2

    .line 1650
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getNightDisplayAutoMode()I
    .locals 3

    .line 1787
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to get night display auto mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1790
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1792
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$900(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1794
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1792
    return v2

    .line 1794
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getNightDisplayAutoModeRaw()I
    .locals 3

    .line 1800
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1802
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$4200(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1804
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1802
    return v2

    .line 1804
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getNightDisplayColorTemperature()I
    .locals 3

    .line 1764
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1766
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperature()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1768
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1766
    return v2

    .line 1768
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getNightDisplayCustomEndTime()Landroid/hardware/display/Time;
    .locals 3

    .line 1846
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1848
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$1300(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1850
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1848
    return-object v2

    .line 1850
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getNightDisplayCustomStartTime()Landroid/hardware/display/Time;
    .locals 3

    .line 1823
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1825
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$1100(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1827
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1825
    return-object v2

    .line 1827
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getTransformCapabilities()I
    .locals 3

    .line 1714
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to query transform capabilities"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1719
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$4000(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1721
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1719
    return v2

    .line 1721
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isDeviceColorManaged()Z
    .locals 3

    .line 1656
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1658
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$3800(Lcom/android/server/display/color/ColorDisplayService;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1660
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1658
    return v2

    .line 1660
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isDisplayWhiteBalanceEnabled()Z
    .locals 3

    .line 1869
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1871
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$3100(Lcom/android/server/display/color/ColorDisplayService;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1873
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1871
    return v2

    .line 1873
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isNightDisplayActivated()Z
    .locals 3

    .line 1741
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1743
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivated()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1745
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1743
    return v2

    .line 1745
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isSaturationActivated()Z
    .locals 3

    .line 1688
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to get display saturation level"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1693
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$3400(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/TintController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/color/TintController;->isActivatedStateNotSet()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 1694
    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$3400(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/TintController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/color/TintController;->isActivated()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1696
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1693
    return v2

    .line 1696
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setAppSaturationLevel(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "level"    # I

    .line 1702
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to set display saturation level"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1707
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2, p1, p2}, Lcom/android/server/display/color/ColorDisplayService;->access$3900(Lcom/android/server/display/color/ColorDisplayService;Ljava/lang/String;I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1709
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1707
    return v2

    .line 1709
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setColorMode(I)V
    .locals 3
    .param p1, "colorMode"    # I

    .line 1633
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to set display color mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1638
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2, p1}, Lcom/android/server/display/color/ColorDisplayService;->access$3700(Lcom/android/server/display/color/ColorDisplayService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1640
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1641
    nop

    .line 1642
    return-void

    .line 1640
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setDisplayWhiteBalanceEnabled(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .line 1856
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to set night display activated"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1861
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2, p1}, Lcom/android/server/display/color/ColorDisplayService;->access$4500(Lcom/android/server/display/color/ColorDisplayService;Z)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1863
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1861
    return v2

    .line 1863
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setNightDisplayActivated(Z)Z
    .locals 4
    .param p1, "activated"    # Z

    .line 1727
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to set night display activated"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1732
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setActivated(Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1733
    const/4 v2, 0x1

    .line 1735
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1733
    return v2

    .line 1735
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setNightDisplayAutoMode(I)Z
    .locals 3
    .param p1, "autoMode"    # I

    .line 1774
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to set night display auto mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1779
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2, p1}, Lcom/android/server/display/color/ColorDisplayService;->access$4100(Lcom/android/server/display/color/ColorDisplayService;I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1781
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1779
    return v2

    .line 1781
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setNightDisplayColorTemperature(I)Z
    .locals 3
    .param p1, "temperature"    # I

    .line 1751
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to set night display temperature"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1756
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setColorTemperature(I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1758
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1756
    return v2

    .line 1758
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setNightDisplayCustomEndTime(Landroid/hardware/display/Time;)Z
    .locals 3
    .param p1, "endTime"    # Landroid/hardware/display/Time;

    .line 1833
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to set night display custom end time"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1838
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2, p1}, Lcom/android/server/display/color/ColorDisplayService;->access$4400(Lcom/android/server/display/color/ColorDisplayService;Landroid/hardware/display/Time;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1840
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1838
    return v2

    .line 1840
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setNightDisplayCustomStartTime(Landroid/hardware/display/Time;)Z
    .locals 3
    .param p1, "startTime"    # Landroid/hardware/display/Time;

    .line 1810
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to set night display custom start time"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1815
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2, p1}, Lcom/android/server/display/color/ColorDisplayService;->access$4300(Lcom/android/server/display/color/ColorDisplayService;Landroid/hardware/display/Time;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1817
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1815
    return v2

    .line 1817
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setSaturationLevel(I)Z
    .locals 7
    .param p1, "level"    # I

    .line 1666
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1667
    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1669
    .local v0, "hasTransformsPermission":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v3}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1670
    const-string v4, "android.permission.CONTROL_DISPLAY_SATURATION"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 1672
    .local v1, "hasLegacyPermission":Z
    :cond_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    .line 1673
    :cond_2
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Permission required to set display saturation level"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1675
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1677
    .local v3, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v5}, Lcom/android/server/display/color/ColorDisplayService;->access$2600(Lcom/android/server/display/color/ColorDisplayService;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1678
    .local v5, "message":Landroid/os/Message;
    iput p1, v5, Landroid/os/Message;->arg1:I

    .line 1679
    iget-object v6, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v6}, Lcom/android/server/display/color/ColorDisplayService;->access$2600(Lcom/android/server/display/color/ColorDisplayService;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1681
    nop

    .end local v5    # "message":Landroid/os/Message;
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1682
    nop

    .line 1683
    return v2

    .line 1681
    :catchall_0
    move-exception v2

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
