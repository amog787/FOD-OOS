.class final Lcom/android/server/display/DisplayManagerService$LocalService;
.super Landroid/hardware/display/DisplayManagerInternal;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0

    .line 2607
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p2, "x1"    # Lcom/android/server/display/DisplayManagerService$1;

    .line 2607
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$LocalService;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    return-void
.end method


# virtual methods
.method public getDisplayInfo(I)Landroid/view/DisplayInfo;
    .locals 2
    .param p1, "displayId"    # I

    .line 2679
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/android/server/display/DisplayManagerService;->access$1700(Lcom/android/server/display/DisplayManagerService;II)Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayedContentSample(IJJ)Landroid/hardware/display/DisplayedContentSample;
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "maxFrames"    # J
    .param p4, "timestamp"    # J

    .line 2777
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/DisplayManagerService;->getDisplayedContentSampleInternal(IJJ)Landroid/hardware/display/DisplayedContentSample;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayedContentSamplingAttributes(I)Landroid/hardware/display/DisplayedContentSamplingAttributes;
    .locals 1
    .param p1, "displayId"    # I

    .line 2756
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayedContentSamplingAttributesInternal(I)Landroid/hardware/display/DisplayedContentSamplingAttributes;

    move-result-object v0

    return-object v0
.end method

.method public getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "outInfo"    # Landroid/view/DisplayInfo;

    .line 2707
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->access$5100(Lcom/android/server/display/DisplayManagerService;ILandroid/view/DisplayInfo;)V

    .line 2708
    return-void
.end method

.method public initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V
    .locals 9
    .param p1, "callbacks"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "sensorManager"    # Landroid/hardware/SensorManager;

    .line 2611
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 2612
    :try_start_0
    new-instance v6, Lcom/android/server/display/DisplayManagerService$LocalService$1;

    invoke-direct {v6, p0, p1}, Lcom/android/server/display/DisplayManagerService$LocalService$1;-><init>(Lcom/android/server/display/DisplayManagerService$LocalService;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)V

    .line 2627
    .local v6, "blanker":Lcom/android/server/display/DisplayBlanker;
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    new-instance v8, Lcom/android/server/display/DisplayPowerController;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 2628
    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$2200(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    move-object v1, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/DisplayPowerController;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;)V

    .line 2627
    invoke-static {v7, v8}, Lcom/android/server/display/DisplayManagerService;->access$4002(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController;

    .line 2629
    nop

    .end local v6    # "blanker":Lcom/android/server/display/DisplayBlanker;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2631
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$4500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 2635
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$4000(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    .line 2636
    const/4 v1, 0x0

    const-string/jumbo v2, "persist.vendor.brightness.debug"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    move v1, v3

    .line 2635
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController;->setAutoBrightnessLoggingEnabled(Z)V

    .line 2638
    return-void

    .line 2629
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isProximitySensorAvailable()Z
    .locals 2

    .line 2651
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 2652
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$4000(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->isProximitySensorAvailable()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2653
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onOverlayChanged()V
    .locals 3

    .line 2746
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 2747
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$5600(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2748
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$5600(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->onOverlayChangedLocked()V

    .line 2747
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2750
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0

    .line 2751
    return-void

    .line 2750
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public overrideScreenBrightnessRangeMinimum(I)V
    .locals 1
    .param p1, "minimum"    # I

    .line 2763
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$4000(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$4000(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerController;->overrideScreenBrightnessRangeMinimum(I)V

    .line 2764
    :cond_0
    return-void
.end method

.method public performTraversal(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 2712
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayManagerService;->performTraversalInternal(Landroid/view/SurfaceControl$Transaction;)V

    .line 2713
    return-void
.end method

.method public persistBrightnessTrackerState()V
    .locals 2

    .line 2739
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 2740
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$4000(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->persistBrightnessTrackerState()V

    .line 2741
    monitor-exit v0

    .line 2742
    return-void

    .line 2741
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .line 2684
    if-eqz p1, :cond_0

    .line 2688
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$4800(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    .line 2689
    return-void

    .line 2685
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .locals 2
    .param p1, "request"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .param p2, "waitForNegativeProximity"    # Z

    .line 2643
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 2644
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$4000(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/DisplayPowerController;->requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2646
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public screenshot(I)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .locals 1
    .param p1, "displayId"    # I

    .line 2658
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$4600(Lcom/android/server/display/DisplayManagerService;I)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v0

    return-object v0
.end method

.method public screenshot(III)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 2665
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->access$4700(Lcom/android/server/display/DisplayManagerService;III)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayAccessUIDs(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/IntArray;",
            ">;)V"
        }
    .end annotation

    .line 2734
    .local p1, "newDisplayAccessUIDs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/IntArray;>;"
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$5500(Lcom/android/server/display/DisplayManagerService;Landroid/util/SparseArray;)V

    .line 2735
    return-void
.end method

.method public setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "info"    # Landroid/view/DisplayInfo;

    .line 2702
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->access$5000(Lcom/android/server/display/DisplayManagerService;ILandroid/view/DisplayInfo;)V

    .line 2703
    return-void
.end method

.method public setDisplayOffsets(III)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 2724
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->access$5300(Lcom/android/server/display/DisplayManagerService;III)V

    .line 2725
    return-void
.end method

.method public setDisplayProperties(IZFIZ)V
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "hasContent"    # Z
    .param p3, "requestedRefreshRate"    # F
    .param p4, "requestedMode"    # I
    .param p5, "inTraversal"    # Z

    .line 2718
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/display/DisplayManagerService;->access$5200(Lcom/android/server/display/DisplayManagerService;IZFIZ)V

    .line 2720
    return-void
.end method

.method public setDisplayScalingDisabled(IZ)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "disableScaling"    # Z

    .line 2729
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->access$5400(Lcom/android/server/display/DisplayManagerService;IZ)V

    .line 2730
    return-void
.end method

.method public setDisplayedContentSamplingEnabled(IZII)Z
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "enable"    # Z
    .param p3, "componentMask"    # I
    .param p4, "maxFrames"    # I

    .line 2770
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->setDisplayedContentSamplingEnabledInternal(IZII)Z

    move-result v0

    return v0
.end method

.method public setUseProximityForceSuspend(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 2673
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$4000(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerController;->setUseProximityForceSuspend(Z)V

    .line 2674
    return-void
.end method

.method public unregisterDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .line 2693
    if-eqz p1, :cond_0

    .line 2697
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$4900(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    .line 2698
    return-void

    .line 2694
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
