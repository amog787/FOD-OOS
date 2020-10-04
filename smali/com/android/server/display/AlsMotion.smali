.class public Lcom/android/server/display/AlsMotion;
.super Ljava/lang/Object;
.source "AlsMotion.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/AlsMotion$Listener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ALS_MOTION_SENSOR_ID:I = 0x1fa265f


# instance fields
.field private mListener:Lcom/android/server/display/AlsMotion$Listener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/AlsMotion;->mListener:Lcom/android/server/display/AlsMotion$Listener;

    return-void
.end method

.method private findAlsMotionSensor(Landroid/hardware/SensorManager;)Landroid/hardware/Sensor;
    .locals 4
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;

    .line 36
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 37
    .local v1, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "als_motion"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    return-object v1

    .line 40
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    :cond_0
    goto :goto_0

    .line 41
    :cond_1
    const v0, 0x1fa265f

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public flush(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 63
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->flush(Landroid/hardware/SensorEventListener;)Z

    .line 64
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 21
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 25
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    .line 26
    .local v4, "isWalking":Z
    :goto_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    .line 27
    .local v0, "angleDegree":F
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    .line 28
    .local v1, "maxAngleDegree":F
    iget-object v3, p0, Lcom/android/server/display/AlsMotion;->mListener:Lcom/android/server/display/AlsMotion$Listener;

    if-eqz v3, :cond_1

    .line 29
    iget-wide v7, p1, Landroid/hardware/SensorEvent;->timestamp:J

    move v5, v0

    move v6, v1

    invoke-interface/range {v3 .. v8}, Lcom/android/server/display/AlsMotion$Listener;->callback(ZFFJ)V

    .line 33
    :cond_1
    return-void
.end method

.method public start(Landroid/content/Context;Lcom/android/server/display/AlsMotion$Listener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/display/AlsMotion$Listener;

    .line 45
    iget-object v0, p0, Lcom/android/server/display/AlsMotion;->mListener:Lcom/android/server/display/AlsMotion$Listener;

    if-nez v0, :cond_0

    .line 46
    iput-object p2, p0, Lcom/android/server/display/AlsMotion;->mListener:Lcom/android/server/display/AlsMotion$Listener;

    .line 47
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 48
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    invoke-direct {p0, v0}, Lcom/android/server/display/AlsMotion;->findAlsMotionSensor(Landroid/hardware/SensorManager;)Landroid/hardware/Sensor;

    move-result-object v1

    .line 49
    .local v1, "sensor":Landroid/hardware/Sensor;
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 51
    .end local v0    # "sensorManager":Landroid/hardware/SensorManager;
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    :cond_0
    return-void
.end method

.method public stop(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    iget-object v0, p0, Lcom/android/server/display/AlsMotion;->mListener:Lcom/android/server/display/AlsMotion$Listener;

    if-eqz v0, :cond_0

    .line 55
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 56
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/AlsMotion;->mListener:Lcom/android/server/display/AlsMotion$Listener;

    .line 59
    .end local v0    # "sensorManager":Landroid/hardware/SensorManager;
    :cond_0
    return-void
.end method
