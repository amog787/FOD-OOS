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

    .line 3083
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$12;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 3120
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 3086
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$12;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$2700(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3087
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3088
    .local v0, "time":J
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 3089
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

    .line 3092
    .local v4, "positive":Z
    :goto_0
    invoke-static {}, Lcom/android/server/display/DisplayPowerController;->access$2900()Z

    move-result v6

    const-string v7, ", positive = "

    const-string v8, "P-Sensor Changed: distance = "

    const-string v9, "DisplayPowerController"

    if-eqz v6, :cond_3

    .line 3093
    invoke-static {v4}, Lcom/android/server/display/DisplayPowerController;->access$3002(Z)Z

    .line 3094
    invoke-static {}, Lcom/android/server/display/DisplayPowerController;->access$3100()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3095
    const/4 v4, 0x0

    .line 3098
    :cond_1
    sget-boolean v3, Lcom/android/server/display/DisplayPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_2

    .line 3099
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3101
    :cond_2
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$12;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v3, v0, v1, v4}, Lcom/android/server/display/DisplayPowerController;->access$3200(Lcom/android/server/display/DisplayPowerController;JZ)V

    goto :goto_1

    .line 3103
    :cond_3
    sget-boolean v6, Lcom/android/server/display/DisplayPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_4

    .line 3104
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3106
    :cond_4
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController$12;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v6, v0, v1, v4}, Lcom/android/server/display/DisplayPowerController;->access$3300(Lcom/android/server/display/DisplayPowerController;JZ)V

    .line 3110
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController$12;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v6}, Lcom/android/server/display/DisplayPowerController;->access$200(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    if-eqz v4, :cond_5

    move v3, v5

    :cond_5
    const-string v5, "display_ctrl_psensor_positive"

    invoke-static {v6, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3115
    .end local v0    # "time":J
    .end local v2    # "distance":F
    .end local v4    # "positive":Z
    :cond_6
    :goto_1
    return-void
.end method
