.class Lcom/android/server/power/WirelessChargerDetector$1;
.super Ljava/lang/Object;
.source "WirelessChargerDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/WirelessChargerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/WirelessChargerDetector;


# direct methods
.method constructor <init>(Lcom/android/server/power/WirelessChargerDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/WirelessChargerDetector;

    .line 369
    iput-object p1, p0, Lcom/android/server/power/WirelessChargerDetector$1;->this$0:Lcom/android/server/power/WirelessChargerDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 379
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 372
    iget-object v0, p0, Lcom/android/server/power/WirelessChargerDetector$1;->this$0:Lcom/android/server/power/WirelessChargerDetector;

    invoke-static {v0}, Lcom/android/server/power/WirelessChargerDetector;->access$000(Lcom/android/server/power/WirelessChargerDetector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 373
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/WirelessChargerDetector$1;->this$0:Lcom/android/server/power/WirelessChargerDetector;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/power/WirelessChargerDetector;->access$100(Lcom/android/server/power/WirelessChargerDetector;FFF)V

    .line 374
    monitor-exit v0

    .line 375
    return-void

    .line 374
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
