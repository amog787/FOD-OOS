.class Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;
.super Lcom/android/server/display/whitebalance/AmbientSensor;
.source "AmbientSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/whitebalance/AmbientSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AmbientColorTemperatureSensor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AmbientColorTemperatureSensor"


# instance fields
.field private mCallbacks:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/hardware/SensorManager;Ljava/lang/String;I)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rate"    # I

    .line 330
    const-string v0, "AmbientColorTemperatureSensor"

    invoke-direct {p0, v0, p1, p2, p4}, Lcom/android/server/display/whitebalance/AmbientSensor;-><init>(Ljava/lang/String;Landroid/os/Handler;Landroid/hardware/SensorManager;I)V

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->mSensor:Landroid/hardware/Sensor;

    .line 332
    iget-object v1, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 333
    .local v2, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 334
    iput-object v2, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->mSensor:Landroid/hardware/Sensor;

    .line 335
    goto :goto_1

    .line 337
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    :cond_0
    goto :goto_0

    .line 338
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_2

    .line 341
    iput-object v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->mCallbacks:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;

    .line 342
    return-void

    .line 339
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot find sensor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 365
    invoke-super {p0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor;->dump(Ljava/io/PrintWriter;)V

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mCallbacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->mCallbacks:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public setCallbacks(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;)Z
    .locals 1
    .param p1, "callbacks"    # Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;

    .line 353
    iget-object v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->mCallbacks:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;

    if-ne v0, p1, :cond_0

    .line 354
    const/4 v0, 0x0

    return v0

    .line 356
    :cond_0
    iput-object p1, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->mCallbacks:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;

    .line 357
    const/4 v0, 0x1

    return v0
.end method

.method protected update(F)V
    .locals 1
    .param p1, "value"    # F

    .line 375
    iget-object v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->mCallbacks:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;

    if-eqz v0, :cond_0

    .line 376
    invoke-interface {v0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;->onAmbientColorTemperatureChanged(F)V

    .line 378
    :cond_0
    return-void
.end method
