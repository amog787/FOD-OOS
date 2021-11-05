.class Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;
.super Ljava/lang/Object;
.source "LocalDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->requestDisplayStateLocked(IF)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

.field final synthetic val$brightnessChanged:Z

.field final synthetic val$brightnessState:F

.field final synthetic val$oldState:I

.field final synthetic val$physicalDisplayId:J

.field final synthetic val$state:I

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;IIZFJLandroid/os/IBinder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 707
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iput p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    iput p3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    iput-boolean p4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessChanged:Z

    iput p5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessState:F

    iput-wide p6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$physicalDisplayId:J

    iput-object p8, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$token:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private displayBrightnessToHalBrightness(F)F
    .locals 2
    .param p1, "brightness"    # F

    .line 849
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->isHalBrightnessRangeSpecified()Z

    move-result v0

    if-nez v0, :cond_0

    .line 850
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 853
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 855
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 858
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$500(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/util/Spline;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    .line 859
    .local v0, "nits":F
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$600(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/util/Spline;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    .line 860
    .local v1, "halBrightness":F
    return v1
.end method

.method private isHalBrightnessRangeSpecified()Z
    .locals 1

    .line 840
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$500(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/util/Spline;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$600(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/util/Spline;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setDisplayBrightness(F)V
    .locals 4
    .param p1, "brightness"    # F

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDisplayBrightness(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$physicalDisplayId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", brightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 822
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->isHalBrightnessRangeSpecified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 825
    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 824
    invoke-static {v0, p1}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToIntRange(Landroid/content/Context;F)F

    move-result v0

    .line 823
    invoke-direct {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->displayBrightnessToHalBrightness(F)F

    move-result v0

    move p1, v0

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$200(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Lcom/android/server/lights/LogicalLight;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 828
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$200(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Lcom/android/server/lights/LogicalLight;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/lights/LogicalLight;->setBrightness(F)V

    .line 830
    :cond_1
    const-string v0, "ScreenBrightness"

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v3, v3, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 833
    invoke-virtual {v3}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 832
    invoke-static {v3, p1}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(Landroid/content/Context;F)I

    move-result v3

    .line 830
    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 835
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 836
    nop

    .line 837
    return-void

    .line 835
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 836
    throw v0
.end method

.method private setDisplayState(I)V
    .locals 7
    .param p1, "state"    # I

    .line 771
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$300(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Z

    move-result v0

    const/4 v1, 0x0

    const-wide/32 v2, 0x20000

    if-eqz v0, :cond_0

    .line 772
    const-string v0, "SidekickInternal#endDisplayControl"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 775
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$400(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/hardware/sidekick/SidekickInternal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/sidekick/SidekickInternal;->endDisplayControl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 777
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 778
    nop

    .line 779
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$302(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Z)Z

    goto :goto_0

    .line 777
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 778
    throw v0

    .line 781
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/server/display/LocalDisplayAdapter;->getPowerModeForState(I)I

    move-result v0

    .line 782
    .local v0, "mode":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDisplayState(id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$physicalDisplayId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 782
    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 788
    const/4 v4, 0x1

    :try_start_1
    new-array v5, v4, [I

    const/16 v6, 0x5b

    aput v6, v5, v1

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 789
    invoke-static {v0}, Lcom/oneplus/android/server/OpMotorInjector;->notifyScreenState(I)V

    .line 792
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$token:Landroid/os/IBinder;

    invoke-static {v1, v0}, Landroid/view/SurfaceControl;->setDisplayPowerMode(Landroid/os/IBinder;I)V

    .line 794
    const-string v1, "DisplayPowerMode"

    invoke-static {v2, v3, v1, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 796
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 797
    nop

    .line 800
    invoke-static {p1}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eq p1, v4, :cond_2

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 801
    invoke-static {v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$400(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/hardware/sidekick/SidekickInternal;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$300(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 802
    const-string v1, "SidekickInternal#startDisplayControl"

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 805
    :try_start_2
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v4}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$400(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/hardware/sidekick/SidekickInternal;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/hardware/sidekick/SidekickInternal;->startDisplayControl(I)Z

    move-result v4

    invoke-static {v1, v4}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$302(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 807
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 808
    goto :goto_1

    .line 807
    :catchall_1
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 808
    throw v1

    .line 810
    :cond_2
    :goto_1
    return-void

    .line 796
    :catchall_2
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 797
    throw v1
.end method

.method private setVrMode(Z)V
    .locals 1
    .param p1, "isVrEnabled"    # Z

    .line 757
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$200(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Lcom/android/server/lights/LogicalLight;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$200(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Lcom/android/server/lights/LogicalLight;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/lights/LogicalLight;->setVrMode(Z)V

    .line 760
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 711
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    .line 712
    .local v0, "currentState":I
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    invoke-static {v1}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    if-nez v1, :cond_6

    .line 714
    :cond_0
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    invoke-static {v1}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 715
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    invoke-direct {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    .line 716
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    goto :goto_2

    .line 717
    :cond_1
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    iget v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    if-ne v3, v2, :cond_2

    goto :goto_1

    .line 721
    :cond_2
    const/4 v2, 0x6

    if-eq v1, v2, :cond_4

    if-ne v3, v2, :cond_3

    goto :goto_0

    .line 726
    :cond_3
    return-void

    .line 723
    :cond_4
    :goto_0
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    .line 724
    const/4 v0, 0x2

    goto :goto_2

    .line 719
    :cond_5
    :goto_1
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    .line 720
    const/4 v0, 0x3

    .line 733
    :cond_6
    :goto_2
    const/4 v1, 0x0

    .line 734
    .local v1, "vrModeChange":Z
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_7

    if-ne v0, v3, :cond_9

    :cond_7
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    if-eq v0, v2, :cond_9

    .line 736
    if-ne v2, v3, :cond_8

    const/4 v2, 0x1

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    :goto_3
    invoke-direct {p0, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setVrMode(Z)V

    .line 737
    const/4 v1, 0x1

    .line 741
    :cond_9
    iget-boolean v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessChanged:Z

    if-nez v2, :cond_a

    if-eqz v1, :cond_b

    .line 742
    :cond_a
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessState:F

    invoke-direct {p0, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayBrightness(F)V

    .line 746
    :cond_b
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    if-eq v2, v0, :cond_c

    .line 747
    invoke-direct {p0, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    .line 749
    :cond_c
    return-void
.end method
