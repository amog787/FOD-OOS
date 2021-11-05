.class final Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LightSensorEventListener"
.end annotation


# static fields
.field private static final INJECT_EVENTS_INTERVAL_MS:I = 0xfa


# instance fields
.field private mInjectSensorEventRunnable:Ljava/lang/Runnable;

.field private mLastSensorData:F

.field final synthetic this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V
    .locals 0

    .line 1529
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1597
    new-instance p1, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;

    invoke-direct {p1, p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;-><init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)V

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;Lcom/android/server/display/DisplayModeDirector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
    .param p2, "x1"    # Lcom/android/server/display/DisplayModeDirector$1;

    .line 1529
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;-><init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;
    .param p1, "x1"    # J

    .line 1529
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->processSensorData(J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    .line 1529
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;FF)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 1529
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->isDifferentZone(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    .line 1529
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private isDifferentZone(FF)Z
    .locals 3
    .param p1, "lux1"    # F
    .param p2, "lux2"    # F

    .line 1583
    const/4 v0, 0x0

    .local v0, "z":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1500(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 1584
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1500(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)[I

    move-result-object v1

    aget v1, v1, v0

    int-to-float v1, v1

    .line 1588
    .local v1, "boundary":F
    cmpg-float v2, p1, v1

    if-gtz v2, :cond_0

    cmpl-float v2, p2, v1

    if-gtz v2, :cond_1

    :cond_0
    cmpl-float v2, p1, v1

    if-lez v2, :cond_2

    cmpg-float v2, p2, v1

    if-gtz v2, :cond_2

    .line 1590
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 1583
    .end local v1    # "boundary":F
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1594
    .end local v0    # "z":I
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private processSensorData(J)V
    .locals 2
    .param p1, "now"    # J

    .line 1575
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1300(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/utils/AmbientFilter;->getEstimate(J)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1202(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;F)F

    .line 1577
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    iget-object v0, v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$400(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1578
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1400(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V

    .line 1579
    monitor-exit v0

    .line 1580
    return-void

    .line 1579
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLastSensorData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1535
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 1568
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 1539
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    .line 1541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "On sensor changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayModeDirector"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1200(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->isDifferentZone(FF)Z

    move-result v0

    .line 1545
    .local v0, "zoneChanged":Z
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1200(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 1548
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1300(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/utils/AmbientFilter;->clear()V

    .line 1551
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1552
    .local v1, "now":J
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1300(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    invoke-virtual {v3, v1, v2, v4}, Lcom/android/server/display/utils/AmbientFilter;->addValue(JF)Z

    .line 1554
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    iget-object v3, v3, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector;->access$1100(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1555
    invoke-direct {p0, v1, v2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->processSensorData(J)V

    .line 1557
    if-eqz v0, :cond_1

    iget v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1200(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 1561
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    iget-object v3, v3, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector;->access$1100(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0xfa

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1563
    :cond_1
    return-void
.end method

.method public removeCallbacks()V
    .locals 2

    .line 1571
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    iget-object v0, v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$1100(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1572
    return-void
.end method
