.class Lcom/android/server/display/DisplayPowerController$MotionCheck;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionCheck"
.end annotation


# static fields
.field protected static final RESULT_RESET:I = 0x4

.field protected static final RESULT_STATIC:I = 0x3

.field protected static final RESULT_TRIGGER:I = 0x1

.field protected static final RESULT_TRIGGER_NO_PROXIMITY:I = 0x2

.field protected static final RESULT_UNKNOWN:I = 0x0

.field private static final TIME_RECOVERY_PICKUP_PHONE_STATE:I = 0x7d0


# instance fields
.field private mCurrentState:I

.field private mMaxRange:F

.field private mPickUpPhoneEvent:Z

.field private mProximityChecking:Z

.field private mRegistered:Z

.field private mSensorType:I

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 3590
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3579
    const-string p1, "DisplayPowerController.MotionCheck"

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mTag:Ljava/lang/String;

    .line 3585
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mProximityChecking:Z

    .line 3586
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mPickUpPhoneEvent:Z

    .line 3591
    const p1, 0x1fa2654

    iput p1, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mSensorType:I

    .line 3592
    return-void
.end method

.method private check()V
    .locals 8

    .line 3655
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$3900(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mSensorType:I

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 3656
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-nez v0, :cond_0

    .line 3657
    const-string v1, "DisplayPowerController.MotionCheck"

    const-string v2, "No sensor found"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3658
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController$MotionCheck;->finishWithResult(I)V

    .line 3659
    return-void

    .line 3661
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sensor registered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayPowerController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3663
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mMaxRange:F

    .line 3664
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$3900(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/SensorManager;

    move-result-object v2

    const/4 v5, 0x3

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 3665
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$2600(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move-result-object v7

    .line 3664
    move-object v3, p0

    move-object v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    .line 3666
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mRegistered:Z

    .line 3667
    return-void
.end method

.method private finishWithResult(I)V
    .locals 3
    .param p1, "result"    # I

    .line 3622
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    .line 3624
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3626
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mPickUpPhoneEvent:Z

    .line 3627
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$2600(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3630
    :cond_1
    iput p1, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mCurrentState:I

    .line 3631
    return-void
.end method

.method private release()V
    .locals 2

    .line 3670
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$3900(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unregister Motion Sensor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayPowerController.MotionCheck"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3672
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$3900(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 3673
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mRegistered:Z

    .line 3675
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentState()I
    .locals 1

    .line 3652
    iget v0, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mCurrentState:I

    return v0
.end method

.method public getPickUpPhoneState()Z
    .locals 2

    .line 3648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPickUpPhoneEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mPickUpPhoneEvent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayPowerController.MotionCheck"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3649
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mPickUpPhoneEvent:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 3616
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 3595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSensorChanged: proximity checking = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mProximityChecking:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayPowerController.MotionCheck"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3596
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mProximityChecking:Z

    if-eqz v0, :cond_0

    .line 3597
    return-void

    .line 3599
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 3600
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Event has no values!"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3601
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayPowerController$MotionCheck;->finishWithResult(I)V

    goto :goto_0

    .line 3602
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    .line 3603
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController$MotionCheck;->finishWithResult(I)V

    goto :goto_0

    .line 3604
    :cond_3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    float-to-double v3, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    cmpl-double v0, v3, v5

    if-nez v0, :cond_4

    .line 3605
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController$MotionCheck;->finishWithResult(I)V

    goto :goto_0

    .line 3606
    :cond_4
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_5

    .line 3607
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController$MotionCheck;->finishWithResult(I)V

    .line 3608
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$2600(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3609
    :cond_5
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_6

    .line 3610
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController$MotionCheck;->finishWithResult(I)V

    .line 3612
    :cond_6
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSensorChanged: value = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3613
    return-void
.end method

.method public run()V
    .locals 1

    .line 3619
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mPickUpPhoneEvent:Z

    .line 3620
    return-void
.end method

.method public startListening()V
    .locals 2

    .line 3633
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mPickUpPhoneEvent:Z

    .line 3634
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 3635
    return-void

    .line 3637
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController$MotionCheck;->check()V

    .line 3638
    const-string v0, "DisplayPowerController.MotionCheck"

    const-string/jumbo v1, "startListening"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3639
    return-void
.end method

.method public stopListening()V
    .locals 2

    .line 3641
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mRegistered:Z

    if-nez v0, :cond_0

    .line 3642
    return-void

    .line 3644
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController$MotionCheck;->release()V

    .line 3645
    const-string v0, "DisplayPowerController.MotionCheck"

    const-string/jumbo v1, "stopListening"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3646
    return-void
.end method
