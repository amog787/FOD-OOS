.class Lcom/android/server/display/DisplayPowerController$12;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayPowerController;

    .line 3215
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$12;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 3239
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 3218
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$12;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$2700(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3219
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3220
    .local v0, "time":J
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 3221
    .local v2, "distance":F
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$12;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v4}, Lcom/android/server/display/DisplayPowerController;->access$2800(Lcom/android/server/display/DisplayPowerController;)F

    move-result v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v3

    .line 3222
    .local v4, "positive":Z
    :goto_0
    sget-boolean v6, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 3223
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "P-Sensor Changed: distance = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", positive = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DisplayPowerController"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3226
    :cond_1
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController$12;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v6, v0, v1, v4}, Lcom/android/server/display/DisplayPowerController;->access$2900(Lcom/android/server/display/DisplayPowerController;JZ)V

    .line 3230
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController$12;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v6}, Lcom/android/server/display/DisplayPowerController;->access$200(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 3231
    if-eqz v4, :cond_2

    move v3, v5

    .line 3230
    :cond_2
    const-string v5, "display_ctrl_psensor_positive"

    invoke-static {v6, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3234
    .end local v0    # "time":J
    .end local v2    # "distance":F
    .end local v4    # "positive":Z
    :cond_3
    return-void
.end method
