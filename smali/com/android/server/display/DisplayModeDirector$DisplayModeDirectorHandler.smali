.class final Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;
.super Landroid/os/Handler;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayModeDirectorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayModeDirector;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 489
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/DisplayModeDirector;

    .line 490
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 491
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 495
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 514
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 515
    .local v0, "refreshRateInZone":I
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->access$100(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onDeviceConfigRefreshRateInZoneChanged(I)V

    .line 517
    goto :goto_0

    .line 508
    .end local v0    # "refreshRateInZone":I
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    .line 509
    .local v0, "defaultPeakRefreshRate":Ljava/lang/Float;
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->access$200(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->onDeviceConfigDefaultPeakRefreshRateChanged(Ljava/lang/Float;)V

    .line 511
    goto :goto_0

    .line 497
    .end local v0    # "defaultPeakRefreshRate":Ljava/lang/Float;
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 499
    .local v0, "thresholds":Landroid/util/Pair;, "Landroid/util/Pair<[I[I>;"
    if-eqz v0, :cond_3

    .line 500
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->access$100(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [I

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onDeviceConfigThresholdsChanged([I[I)V

    goto :goto_0

    .line 503
    :cond_3
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->access$100(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onDeviceConfigThresholdsChanged([I[I)V

    .line 505
    goto :goto_0

    .line 520
    .end local v0    # "thresholds":Landroid/util/Pair;, "Landroid/util/Pair<[I[I>;"
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    .line 522
    .local v0, "desiredDisplayModeSpecsListener":Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;
    invoke-interface {v0}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;->onDesiredDisplayModeSpecsChanged()V

    .line 525
    .end local v0    # "desiredDisplayModeSpecsListener":Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;
    :goto_0
    return-void
.end method
