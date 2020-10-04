.class public Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;
.super Ljava/lang/Object;
.source "DisplayWhiteBalanceController.java"

# interfaces
.implements Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor$Callbacks;
.implements Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;
    }
.end annotation


# static fields
.field private static final HISTORY_SIZE:I = 0x32

.field protected static final TAG:Ljava/lang/String; = "DisplayWhiteBalanceController"


# instance fields
.field private mAmbientColorTemperature:F

.field private mAmbientColorTemperatureHistory:Lcom/android/server/display/utils/History;

.field private mAmbientColorTemperatureOverride:F

.field private mAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

.field private mBrightnessFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

.field private mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

.field private mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

.field private mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

.field private mColorTemperatureFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

.field private mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

.field private mEnabled:Z

.field private mLastAmbientColorTemperature:F

.field protected mLoggingEnabled:Z

.field private final mLowLightAmbientBrightnessThreshold:F

.field private final mLowLightAmbientColorTemperature:F

.field private mPendingAmbientColorTemperature:F

.field private mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;


# direct methods
.method public constructor <init>(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;Lcom/android/server/display/whitebalance/AmbientFilter;Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;Lcom/android/server/display/whitebalance/AmbientFilter;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;FF[F[F)V
    .locals 4
    .param p1, "brightnessSensor"    # Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;
    .param p2, "brightnessFilter"    # Lcom/android/server/display/whitebalance/AmbientFilter;
    .param p3, "colorTemperatureSensor"    # Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;
    .param p4, "colorTemperatureFilter"    # Lcom/android/server/display/whitebalance/AmbientFilter;
    .param p5, "throttler"    # Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;
    .param p6, "lowLightAmbientBrightnessThreshold"    # F
    .param p7, "lowLightAmbientColorTemperature"    # F
    .param p8, "ambientColorTemperatures"    # [F
    .param p9, "displayColorTemperatures"    # [F

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->validateArguments(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;Lcom/android/server/display/whitebalance/AmbientFilter;Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;Lcom/android/server/display/whitebalance/AmbientFilter;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;)V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    .line 127
    iput-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    .line 129
    iput-object p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    .line 130
    iput-object p2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    .line 131
    iput-object p3, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    .line 132
    iput-object p4, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    .line 133
    iput-object p5, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    .line 134
    iput p6, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessThreshold:F

    .line 135
    iput p7, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientColorTemperature:F

    .line 136
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    .line 137
    iput v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    .line 138
    iput v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLastAmbientColorTemperature:F

    .line 139
    new-instance v2, Lcom/android/server/display/utils/History;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Lcom/android/server/display/utils/History;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureHistory:Lcom/android/server/display/utils/History;

    .line 140
    iput v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    .line 143
    :try_start_0
    new-instance v1, Landroid/util/Spline$LinearSpline;

    invoke-direct {v1, p8, p9}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    iput-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    goto :goto_0

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/Exception;
    iput-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

    .line 149
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const-class v0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    iput-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 150
    return-void
.end method

.method private disable()Z
    .locals 3

    .line 394
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 395
    return v1

    .line 397
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-eqz v0, :cond_1

    .line 398
    const-string v0, "DisplayWhiteBalanceController"

    const-string v2, "disabling"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    .line 401
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    invoke-virtual {v0, v1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->setEnabled(Z)Z

    .line 402
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    invoke-virtual {v0}, Lcom/android/server/display/whitebalance/AmbientFilter;->clear()V

    .line 403
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    invoke-virtual {v0, v1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->setEnabled(Z)Z

    .line 404
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    invoke-virtual {v0}, Lcom/android/server/display/whitebalance/AmbientFilter;->clear()V

    .line 405
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    invoke-virtual {v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->clear()V

    .line 406
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    .line 407
    iput v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    .line 408
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->resetDisplayWhiteBalanceColorTemperature()Z

    .line 409
    const/4 v0, 0x1

    return v0
.end method

.method private enable()Z
    .locals 2

    .line 381
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 382
    const/4 v0, 0x0

    return v0

    .line 384
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-eqz v0, :cond_1

    .line 385
    const-string v0, "DisplayWhiteBalanceController"

    const-string v1, "enabling"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    .line 388
    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    invoke-virtual {v1, v0}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->setEnabled(Z)Z

    .line 389
    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    invoke-virtual {v1, v0}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->setEnabled(Z)Z

    .line 390
    return v0
.end method

.method private validateArguments(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;Lcom/android/server/display/whitebalance/AmbientFilter;Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;Lcom/android/server/display/whitebalance/AmbientFilter;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;)V
    .locals 1
    .param p1, "brightnessSensor"    # Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;
    .param p2, "brightnessFilter"    # Lcom/android/server/display/whitebalance/AmbientFilter;
    .param p3, "colorTemperatureSensor"    # Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;
    .param p4, "colorTemperatureFilter"    # Lcom/android/server/display/whitebalance/AmbientFilter;
    .param p5, "throttler"    # Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    .line 371
    const-string v0, "brightnessSensor must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string v0, "brightnessFilter must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string v0, "colorTemperatureSensor must not be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string v0, "colorTemperatureFilter must not be null"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string/jumbo v0, "throttler cannot be null"

    invoke-static {p5, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 232
    const-string v0, "DisplayWhiteBalanceController"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLoggingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCallbacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->dump(Ljava/io/PrintWriter;)V

    .line 237
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientFilter;->dump(Ljava/io/PrintWriter;)V

    .line 238
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->dump(Ljava/io/PrintWriter;)V

    .line 239
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientFilter;->dump(Ljava/io/PrintWriter;)V

    .line 240
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->dump(Ljava/io/PrintWriter;)V

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLowLightAmbientBrightnessThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLowLightAmbientColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingAmbientColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastAmbientColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLastAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientColorTemperatureHistory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureHistory:Lcom/android/server/display/utils/History;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientColorTemperatureOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientToDisplayColorTemperatureSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public onAmbientBrightnessChanged(F)V
    .locals 3
    .param p1, "value"    # F

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 256
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/server/display/whitebalance/AmbientFilter;->addValue(JF)Z

    .line 257
    invoke-virtual {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->updateAmbientColorTemperature()V

    .line 258
    return-void
.end method

.method public onAmbientColorTemperatureChanged(F)V
    .locals 3
    .param p1, "value"    # F

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 263
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/server/display/whitebalance/AmbientFilter;->addValue(JF)Z

    .line 264
    invoke-virtual {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->updateAmbientColorTemperature()V

    .line 265
    return-void
.end method

.method public setAmbientColorTemperatureOverride(F)Z
    .locals 1
    .param p1, "ambientColorTemperatureOverride"    # F

    .line 218
    iget v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 219
    const/4 v0, 0x0

    return v0

    .line 221
    :cond_0
    iput p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method public setCallbacks(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;)Z
    .locals 1
    .param p1, "callbacks"    # Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    .line 177
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    if-ne v0, p1, :cond_0

    .line 178
    const/4 v0, 0x0

    return v0

    .line 180
    :cond_0
    iput-object p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method public setEnabled(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .line 161
    if-eqz p1, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->enable()Z

    move-result v0

    return v0

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->disable()Z

    move-result v0

    return v0
.end method

.method public setLoggingEnabled(Z)Z
    .locals 1
    .param p1, "loggingEnabled"    # Z

    .line 193
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_0

    .line 194
    const/4 v0, 0x0

    return v0

    .line 196
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    .line 197
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->setLoggingEnabled(Z)Z

    .line 198
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientFilter;->setLoggingEnabled(Z)Z

    .line 199
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->setLoggingEnabled(Z)Z

    .line 200
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientFilter;->setLoggingEnabled(Z)Z

    .line 201
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->setLoggingEnabled(Z)Z

    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public updateAmbientColorTemperature()V
    .locals 9

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 272
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/display/whitebalance/AmbientFilter;->getEstimate(J)F

    move-result v2

    .line 274
    .local v2, "ambientColorTemperature":F
    iget-object v3, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

    const/high16 v4, -0x40800000    # -1.0f

    if-eqz v3, :cond_0

    cmpl-float v5, v2, v4

    if-eqz v5, :cond_0

    .line 275
    nop

    .line 276
    invoke-virtual {v3, v2}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v2

    .line 279
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/display/whitebalance/AmbientFilter;->getEstimate(J)F

    move-result v3

    .line 280
    .local v3, "ambientBrightness":F
    iget v5, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessThreshold:F

    cmpg-float v5, v3, v5

    const-string v6, " => "

    const-string v7, "DisplayWhiteBalanceController"

    if-gez v5, :cond_2

    .line 281
    iget-boolean v5, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-eqz v5, :cond_1

    .line 282
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "low light ambient brightness: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " < "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessThreshold:F

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", falling back to fixed ambient color temperature: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientColorTemperature:F

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_1
    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientColorTemperature:F

    .line 290
    :cond_2
    iget v5, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_4

    .line 291
    iget-boolean v5, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-eqz v5, :cond_3

    .line 292
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "override ambient color temperature: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_3
    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    .line 302
    :cond_4
    cmpl-float v4, v2, v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    invoke-virtual {v4, v2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->throttle(F)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    .line 306
    :cond_5
    iget-boolean v4, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-eqz v4, :cond_6

    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pending ambient color temperature: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_6
    iput v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    .line 310
    iget-object v4, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    if-eqz v4, :cond_7

    .line 311
    invoke-interface {v4}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;->updateWhiteBalance()V

    .line 313
    :cond_7
    return-void

    .line 303
    :cond_8
    :goto_0
    return-void
.end method

.method public updateDisplayColorTemperature()V
    .locals 4

    .line 319
    const/high16 v0, -0x40800000    # -1.0f

    .line 324
    .local v0, "ambientColorTemperature":F
    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 325
    iget v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLastAmbientColorTemperature:F

    .line 330
    :cond_0
    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1

    .line 332
    iget v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    .line 335
    :cond_1
    cmpl-float v1, v0, v2

    if-nez v1, :cond_2

    .line 336
    return-void

    .line 339
    :cond_2
    iput v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    .line 340
    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-eqz v1, :cond_3

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ambient color temperature: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DisplayWhiteBalanceController"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_3
    iput v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    .line 344
    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureHistory:Lcom/android/server/display/utils/History;

    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    invoke-virtual {v1, v2}, Lcom/android/server/display/utils/History;->add(F)V

    .line 345
    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->setDisplayWhiteBalanceColorTemperature(I)Z

    .line 347
    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    iput v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLastAmbientColorTemperature:F

    .line 348
    return-void
.end method
