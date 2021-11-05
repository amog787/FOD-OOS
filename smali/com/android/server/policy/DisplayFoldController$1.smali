.class Lcom/android/server/policy/DisplayFoldController$1;
.super Ljava/lang/Object;
.source "DisplayFoldController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/DisplayFoldController;->createWithProxSensor(Landroid/content/Context;I)Lcom/android/server/policy/DisplayFoldController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$result:Lcom/android/server/policy/DisplayFoldController;


# direct methods
.method constructor <init>(Lcom/android/server/policy/DisplayFoldController;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/android/server/policy/DisplayFoldController$1;->val$result:Lcom/android/server/policy/DisplayFoldController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 178
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 172
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController$1;->val$result:Lcom/android/server/policy/DisplayFoldController;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/server/policy/DisplayFoldController;->requestDeviceFolded(Z)V

    .line 173
    return-void
.end method
