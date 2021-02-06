.class final Lcom/android/server/display/color/ColorDisplayService$BinderService;
.super Landroid/hardware/display/IColorDisplayManager$Stub;
.source "ColorDisplayService.java"


# annotations
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

    .line 2152
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

    .line 2404
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ColorDisplayService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2405
    return-void

    .line 2408
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2410
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2, p2}, Lcom/android/server/display/color/ColorDisplayService;->access$5600(Lcom/android/server/display/color/ColorDisplayService;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2412
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2413
    nop

    .line 2414
    return-void

    .line 2412
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2413
    throw v2
.end method

.method public getColorMode()I
    .locals 3

    .line 2169
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2171
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$1500(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2173
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2171
    return v2

    .line 2173
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2174
    throw v2
.end method

.method public getNightDisplayAutoMode()I
    .locals 3

    .line 2312
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to get night display auto mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2315
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2317
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$900(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2319
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2317
    return v2

    .line 2319
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2320
    throw v2
.end method

.method public getNightDisplayAutoModeRaw()I
    .locals 3

    .line 2325
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2327
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$5200(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2329
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2327
    return v2

    .line 2329
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2330
    throw v2
.end method

.method public getNightDisplayColorTemperature()I
    .locals 3

    .line 2289
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2291
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperature()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2293
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2291
    return v2

    .line 2293
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2294
    throw v2
.end method

.method public getNightDisplayCustomEndTime()Landroid/hardware/display/Time;
    .locals 3

    .line 2371
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2373
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$1300(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2375
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2373
    return-object v2

    .line 2375
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2376
    throw v2
.end method

.method public getNightDisplayCustomStartTime()Landroid/hardware/display/Time;
    .locals 3

    .line 2348
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2350
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$1100(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2352
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2350
    return-object v2

    .line 2352
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2353
    throw v2
.end method

.method public getTransformCapabilities()I
    .locals 3

    .line 2239
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to query transform capabilities"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2242
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2244
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$5000(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2246
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2244
    return v2

    .line 2246
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2247
    throw v2
.end method

.method public isDeviceColorManaged()Z
    .locals 3

    .line 2179
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2181
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$4800(Lcom/android/server/display/color/ColorDisplayService;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2183
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2181
    return v2

    .line 2183
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2184
    throw v2
.end method

.method public isDisplayWhiteBalanceEnabled()Z
    .locals 3

    .line 2394
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2396
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$3800(Lcom/android/server/display/color/ColorDisplayService;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2398
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2396
    return v2

    .line 2398
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2399
    throw v2
.end method

.method public isNightDisplayActivated()Z
    .locals 3

    .line 2266
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2268
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivated()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2270
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2268
    return v2

    .line 2270
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2271
    throw v2
.end method

.method public isSaturationActivated()Z
    .locals 3

    .line 2211
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to get display saturation level"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2216
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$4000(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/TintController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/color/TintController;->isActivatedStateNotSet()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 2217
    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$4000(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/TintController;

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

    .line 2219
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2216
    return v2

    .line 2219
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2220
    throw v2
.end method

.method public setAppSaturationLevel(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "level"    # I

    .line 2225
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to set display saturation level"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2228
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 2229
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 2230
    .local v0, "callingPackageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2232
    .local v1, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v3, v0, p1, p2}, Lcom/android/server/display/color/ColorDisplayService;->access$4900(Lcom/android/server/display/color/ColorDisplayService;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2234
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2232
    return v3

    .line 2234
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2235
    throw v3
.end method

.method public setColorMode(I)V
    .locals 3
    .param p1, "colorMode"    # I

    .line 2156
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to set display color mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2159
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2161
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2, p1}, Lcom/android/server/display/color/ColorDisplayService;->access$4700(Lcom/android/server/display/color/ColorDisplayService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2163
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2164
    nop

    .line 2165
    return-void

    .line 2163
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2164
    throw v2
.end method

.method public setDisplayWhiteBalanceEnabled(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .line 2381
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to set night display activated"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2384
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2386
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2, p1}, Lcom/android/server/display/color/ColorDisplayService;->access$5500(Lcom/android/server/display/color/ColorDisplayService;Z)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2388
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2386
    return v2

    .line 2388
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2389
    throw v2
.end method

.method public setNightDisplayActivated(Z)Z
    .locals 4
    .param p1, "activated"    # Z

    .line 2252
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to set night display activated"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2255
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2257
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

    .line 2258
    const/4 v2, 0x1

    .line 2260
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2258
    return v2

    .line 2260
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2261
    throw v2
.end method

.method public setNightDisplayAutoMode(I)Z
    .locals 3
    .param p1, "autoMode"    # I

    .line 2299
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to set night display auto mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2302
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2304
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2, p1}, Lcom/android/server/display/color/ColorDisplayService;->access$5100(Lcom/android/server/display/color/ColorDisplayService;I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2306
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2304
    return v2

    .line 2306
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2307
    throw v2
.end method

.method public setNightDisplayColorTemperature(I)Z
    .locals 3
    .param p1, "temperature"    # I

    .line 2276
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to set night display temperature"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2279
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2281
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setColorTemperature(I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2283
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2281
    return v2

    .line 2283
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2284
    throw v2
.end method

.method public setNightDisplayCustomEndTime(Landroid/hardware/display/Time;)Z
    .locals 3
    .param p1, "endTime"    # Landroid/hardware/display/Time;

    .line 2358
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to set night display custom end time"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2361
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2363
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2, p1}, Lcom/android/server/display/color/ColorDisplayService;->access$5400(Lcom/android/server/display/color/ColorDisplayService;Landroid/hardware/display/Time;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2365
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2363
    return v2

    .line 2365
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2366
    throw v2
.end method

.method public setNightDisplayCustomStartTime(Landroid/hardware/display/Time;)Z
    .locals 3
    .param p1, "startTime"    # Landroid/hardware/display/Time;

    .line 2335
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to set night display custom start time"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2338
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2340
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2, p1}, Lcom/android/server/display/color/ColorDisplayService;->access$5300(Lcom/android/server/display/color/ColorDisplayService;Landroid/hardware/display/Time;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2342
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2340
    return v2

    .line 2342
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2343
    throw v2
.end method

.method public setSaturationLevel(I)Z
    .locals 7
    .param p1, "level"    # I

    .line 2189
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2190
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

    .line 2192
    .local v0, "hasTransformsPermission":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v3}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 2193
    const-string v4, "android.permission.CONTROL_DISPLAY_SATURATION"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 2195
    .local v1, "hasLegacyPermission":Z
    :cond_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    .line 2196
    :cond_2
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Permission required to set display saturation level"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2198
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2200
    .local v3, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v5}, Lcom/android/server/display/color/ColorDisplayService;->access$2200(Lcom/android/server/display/color/ColorDisplayService;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 2201
    .local v5, "message":Landroid/os/Message;
    iput p1, v5, Landroid/os/Message;->arg1:I

    .line 2202
    iget-object v6, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v6}, Lcom/android/server/display/color/ColorDisplayService;->access$2200(Lcom/android/server/display/color/ColorDisplayService;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2204
    nop

    .end local v5    # "message":Landroid/os/Message;
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2205
    nop

    .line 2206
    return v2

    .line 2204
    :catchall_0
    move-exception v2

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2205
    throw v2
.end method
