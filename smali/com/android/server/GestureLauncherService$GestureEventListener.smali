.class final Lcom/android/server/GestureLauncherService$GestureEventListener;
.super Ljava/lang/Object;
.source "GestureLauncherService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GestureLauncherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GestureLauncherService;


# direct methods
.method private constructor <init>(Lcom/android/server/GestureLauncherService;)V
    .locals 0

    .line 512
    iput-object p1, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/GestureLauncherService;Lcom/android/server/GestureLauncherService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/GestureLauncherService;
    .param p2, "x1"    # Lcom/android/server/GestureLauncherService$1;

    .line 512
    invoke-direct {p0, p1}, Lcom/android/server/GestureLauncherService$GestureEventListener;-><init>(Lcom/android/server/GestureLauncherService;)V

    return-void
.end method

.method private trackCameraLaunchEvent(Landroid/hardware/SensorEvent;)V
    .locals 26
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 540
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 541
    .local v1, "now":J
    iget-object v3, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v3}, Lcom/android/server/GestureLauncherService;->access$1000(Lcom/android/server/GestureLauncherService;)J

    move-result-wide v3

    sub-long v3, v1, v3

    .line 547
    .local v3, "totalDuration":J
    move-object/from16 v5, p1

    iget-object v6, v5, Landroid/hardware/SensorEvent;->values:[F

    .line 549
    .local v6, "values":[F
    long-to-double v7, v3

    const/4 v9, 0x0

    aget v9, v6, v9

    float-to-double v9, v9

    mul-double/2addr v7, v9

    double-to-long v7, v7

    .line 550
    .local v7, "sensor1OnTime":J
    long-to-double v9, v3

    const/4 v11, 0x1

    aget v11, v6, v11

    float-to-double v11, v11

    mul-double/2addr v9, v11

    double-to-long v9, v9

    .line 551
    .local v9, "sensor2OnTime":J
    const/4 v11, 0x2

    aget v11, v6, v11

    float-to-int v11, v11

    .line 554
    .local v11, "extra":I
    iget-object v12, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v12}, Lcom/android/server/GestureLauncherService;->access$1100(Lcom/android/server/GestureLauncherService;)J

    move-result-wide v12

    sub-long v12, v1, v12

    .line 555
    .local v12, "gestureOnTimeDiff":J
    iget-object v14, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v14}, Lcom/android/server/GestureLauncherService;->access$1200(Lcom/android/server/GestureLauncherService;)J

    move-result-wide v14

    sub-long v21, v7, v14

    .line 556
    .local v21, "sensor1OnTimeDiff":J
    iget-object v14, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v14}, Lcom/android/server/GestureLauncherService;->access$1300(Lcom/android/server/GestureLauncherService;)J

    move-result-wide v14

    sub-long v23, v9, v14

    .line 557
    .local v23, "sensor2OnTimeDiff":J
    iget-object v14, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v14}, Lcom/android/server/GestureLauncherService;->access$1400(Lcom/android/server/GestureLauncherService;)I

    move-result v14

    sub-int v25, v11, v14

    .line 561
    .local v25, "extraDiff":I
    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-ltz v16, :cond_1

    cmp-long v16, v21, v14

    if-ltz v16, :cond_1

    cmp-long v14, v23, v14

    if-gez v14, :cond_0

    goto :goto_0

    .line 572
    :cond_0
    move-wide v14, v12

    move-wide/from16 v16, v21

    move-wide/from16 v18, v23

    move/from16 v20, v25

    invoke-static/range {v14 .. v20}, Lcom/android/server/EventLogTags;->writeCameraGestureTriggered(JJJI)V

    .line 578
    iget-object v14, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v14, v1, v2}, Lcom/android/server/GestureLauncherService;->access$1102(Lcom/android/server/GestureLauncherService;J)J

    .line 579
    iget-object v14, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v14, v7, v8}, Lcom/android/server/GestureLauncherService;->access$1202(Lcom/android/server/GestureLauncherService;J)J

    .line 580
    iget-object v14, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v14, v9, v10}, Lcom/android/server/GestureLauncherService;->access$1302(Lcom/android/server/GestureLauncherService;J)J

    .line 581
    iget-object v14, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v14, v11}, Lcom/android/server/GestureLauncherService;->access$1402(Lcom/android/server/GestureLauncherService;I)I

    .line 582
    return-void

    .line 563
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 537
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 515
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->access$700(Lcom/android/server/GestureLauncherService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    return-void

    .line 519
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->access$800(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 525
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/GestureLauncherService;->handleCameraGesture(ZI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->access$900(Lcom/android/server/GestureLauncherService;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 528
    invoke-direct {p0, p1}, Lcom/android/server/GestureLauncherService$GestureEventListener;->trackCameraLaunchEvent(Landroid/hardware/SensorEvent;)V

    .line 530
    :cond_1
    return-void

    .line 532
    :cond_2
    return-void
.end method
