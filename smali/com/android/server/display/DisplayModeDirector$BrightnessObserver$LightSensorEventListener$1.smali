.class Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    .line 1473
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1476
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1478
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-static {v2, v0, v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->access$1600(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;J)V

    .line 1481
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->access$1700(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)F

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    iget-object v4, v4, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1200(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)F

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->access$1800(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1482
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    iget-object v2, v2, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    iget-object v2, v2, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector;->access$1100(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->access$1900(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1484
    :cond_0
    return-void
.end method
