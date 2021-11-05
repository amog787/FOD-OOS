.class Lcom/android/server/display/whitebalance/AmbientSensor$1;
.super Ljava/lang/Object;
.source "AmbientSensor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/whitebalance/AmbientSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/whitebalance/AmbientSensor;


# direct methods
.method constructor <init>(Lcom/android/server/display/whitebalance/AmbientSensor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/whitebalance/AmbientSensor;

    .line 205
    iput-object p1, p0, Lcom/android/server/display/whitebalance/AmbientSensor$1;->this$0:Lcom/android/server/display/whitebalance/AmbientSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 216
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 209
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 210
    .local v0, "value":F
    iget-object v1, p0, Lcom/android/server/display/whitebalance/AmbientSensor$1;->this$0:Lcom/android/server/display/whitebalance/AmbientSensor;

    invoke-static {v1, v0}, Lcom/android/server/display/whitebalance/AmbientSensor;->access$000(Lcom/android/server/display/whitebalance/AmbientSensor;F)V

    .line 211
    return-void
.end method
