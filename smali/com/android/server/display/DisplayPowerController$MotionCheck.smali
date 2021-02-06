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

    .line 3410
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3399
    const-string p1, "DisplayPowerController.MotionCheck"

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mTag:Ljava/lang/String;

    .line 3405
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mProximityChecking:Z

    .line 3406
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mPickUpPhoneEvent:Z

    .line 3411
    const p1, 0x1fa2654

    iput p1, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mSensorType:I

    .line 3412
    return-void
.end method

.method private check()V
    .locals 8

    .line 3475
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$3300(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mSensorType:I

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 3476
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-nez v0, :cond_0

    .line 3477
    const-string v1, "DisplayPowerController.MotionCheck"

    const-string v2, "No sensor found"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3478
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController$MotionCheck;->finishWithResult(I)V

    .line 3479
    return-void

    .line 3481
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

    .line 3483
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mMaxRange:F

    .line 3484
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$3300(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/SensorManager;

    move-result-object v2

    const/4 v5, 0x3

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 3485
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$2200(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move-result-object v7

    .line 3484
    move-object v3, p0

    move-object v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    .line 3486
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mRegistered:Z

    .line 3487
    return-void
.end method

.method private finishWithResult(I)V
    .locals 3
    .param p1, "result"    # I

    .line 3442
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    .line 3444
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3446
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mPickUpPhoneEvent:Z

    .line 3447
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$2200(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3450
    :cond_1
    iput p1, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mCurrentState:I

    .line 3451
    return-void
.end method

.method private release()V
    .locals 2

    .line 3490
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$3300(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3491
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

    .line 3492
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$3300(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 3493
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mRegistered:Z

    .line 3495
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentState()I
    .locals 1

    .line 3472
    iget v0, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mCurrentState:I

    return v0
.end method

.method public getPickUpPhoneState()Z
    .locals 2

    .line 3468
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

    .line 3469
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mPickUpPhoneEvent:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 3436
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 3415
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

    .line 3416
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mProximityChecking:Z

    if-eqz v0, :cond_0

    .line 3417
    return-void

    .line 3419
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 3420
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Event has no values!"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3421
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayPowerController$MotionCheck;->finishWithResult(I)V

    goto :goto_0

    .line 3422
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    .line 3423
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController$MotionCheck;->finishWithResult(I)V

    goto :goto_0

    .line 3424
    :cond_3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    float-to-double v3, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    cmpl-double v0, v3, v5

    if-nez v0, :cond_4

    .line 3425
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController$MotionCheck;->finishWithResult(I)V

    goto :goto_0

    .line 3426
    :cond_4
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_5

    .line 3427
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController$MotionCheck;->finishWithResult(I)V

    .line 3428
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$2200(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3429
    :cond_5
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_6

    .line 3430
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController$MotionCheck;->finishWithResult(I)V

    .line 3432
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

    .line 3433
    return-void
.end method

.method public run()V
    .locals 1

    .line 3439
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mPickUpPhoneEvent:Z

    .line 3440
    return-void
.end method

.method public startListening()V
    .locals 2

    .line 3453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mPickUpPhoneEvent:Z

    .line 3454
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 3455
    return-void

    .line 3457
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController$MotionCheck;->check()V

    .line 3458
    const-string v0, "DisplayPowerController.MotionCheck"

    const-string/jumbo v1, "startListening"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3459
    return-void
.end method

.method public stopListening()V
    .locals 2

    .line 3461
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$MotionCheck;->mRegistered:Z

    if-nez v0, :cond_0

    .line 3462
    return-void

    .line 3464
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController$MotionCheck;->release()V

    .line 3465
    const-string v0, "DisplayPowerController.MotionCheck"

    const-string/jumbo v1, "stopListening"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3466
    return-void
.end method
