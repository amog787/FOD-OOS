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

.field mBrightnessFilter:Lcom/android/server/display/utils/AmbientFilter;

.field private mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

.field private mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

.field private mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

.field mColorTemperatureFilter:Lcom/android/server/display/utils/AmbientFilter;

.field private mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

.field private mEnabled:Z

.field private mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

.field private final mHighLightAmbientColorTemperature:F

.field private mLastAmbientColorTemperature:F

.field private mLatestAmbientBrightness:F

.field private mLatestAmbientColorTemperature:F

.field private mLatestHighLightBias:F

.field private mLatestLowLightBias:F

.field protected mLoggingEnabled:Z

.field private mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

.field private final mLowLightAmbientColorTemperature:F

.field mPendingAmbientColorTemperature:F

.field private mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;


# direct methods
.method public constructor <init>(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;[F[FF[F[FF[F[F)V
    .locals 16
    .param p1, "brightnessSensor"    # Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;
    .param p2, "brightnessFilter"    # Lcom/android/server/display/utils/AmbientFilter;
    .param p3, "colorTemperatureSensor"    # Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;
    .param p4, "colorTemperatureFilter"    # Lcom/android/server/display/utils/AmbientFilter;
    .param p5, "throttler"    # Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;
    .param p6, "lowLightAmbientBrightnesses"    # [F
    .param p7, "lowLightAmbientBiases"    # [F
    .param p8, "lowLightAmbientColorTemperature"    # F
    .param p9, "highLightAmbientBrightnesses"    # [F
    .param p10, "highLightAmbientBiases"    # [F
    .param p11, "highLightAmbientColorTemperature"    # F
    .param p12, "ambientColorTemperatures"    # [F
    .param p13, "displayColorTemperatures"    # [F

    .line 168
    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p9

    const-string v4, "DisplayWhiteBalanceController"

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 169
    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->validateArguments(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;)V

    .line 171
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    .line 172
    iput-boolean v5, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    .line 173
    const/4 v6, 0x0

    iput-object v6, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    .line 174
    move-object/from16 v7, p1

    iput-object v7, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    .line 175
    move-object/from16 v8, p2

    iput-object v8, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/utils/AmbientFilter;

    .line 176
    move-object/from16 v9, p3

    iput-object v9, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    .line 177
    move-object/from16 v10, p4

    iput-object v10, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/utils/AmbientFilter;

    .line 178
    move-object/from16 v11, p5

    iput-object v11, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    .line 179
    move/from16 v12, p8

    iput v12, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientColorTemperature:F

    .line 180
    move/from16 v13, p11

    iput v13, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientColorTemperature:F

    .line 181
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    .line 182
    iput v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    .line 183
    iput v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLastAmbientColorTemperature:F

    .line 184
    new-instance v14, Lcom/android/server/display/utils/History;

    const/16 v15, 0x32

    invoke-direct {v14, v15}, Lcom/android/server/display/utils/History;-><init>(I)V

    iput-object v14, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureHistory:Lcom/android/server/display/utils/History;

    .line 185
    iput v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    .line 188
    :try_start_0
    new-instance v0, Landroid/util/Spline$LinearSpline;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v14, p7

    :try_start_1
    invoke-direct {v0, v2, v14}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    iput-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    goto :goto_1

    .line 190
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v14, p7

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const-string v15, "failed to create low light ambient brightness to bias spline."

    invoke-static {v4, v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    iput-object v6, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 194
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {v0, v6}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v0

    cmpl-float v0, v0, v6

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 196
    invoke-virtual {v0, v5}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v0

    cmpl-float v0, v0, v15

    if-eqz v0, :cond_1

    .line 198
    :cond_0
    const-string/jumbo v0, "invalid low light ambient brightness to bias spline, bias must begin at 0.0 and end at 1.0."

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v15, 0x0

    iput-object v15, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 205
    :cond_1
    :try_start_2
    new-instance v0, Landroid/util/Spline$LinearSpline;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v15, p10

    :try_start_3
    invoke-direct {v0, v3, v15}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    iput-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 210
    goto :goto_3

    .line 207
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    move-object/from16 v15, p10

    .line 208
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_2
    const-string v5, "failed to create high light ambient brightness to bias spline."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 211
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    iget-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    if-eqz v0, :cond_3

    .line 212
    invoke-virtual {v0, v6}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v0

    cmpl-float v0, v0, v6

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 213
    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-virtual {v0, v5}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v0

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_3

    .line 215
    :cond_2
    const-string/jumbo v0, "invalid high light ambient brightness to bias spline, bias must begin at 0.0 and end at 1.0."

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 221
    :cond_3
    iget-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    if-eqz v0, :cond_4

    .line 223
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    aget v0, v2, v0

    const/4 v5, 0x0

    aget v5, v3, v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_4

    .line 225
    const-string/jumbo v0, "invalid low light and high light ambient brightness to bias spline combination, defined domains must not intersect."

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 228
    iput-object v5, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 233
    :cond_4
    :try_start_4
    new-instance v0, Landroid/util/Spline$LinearSpline;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-object/from16 v5, p12

    move-object/from16 v6, p13

    :try_start_5
    invoke-direct {v0, v5, v6}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    iput-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 238
    goto :goto_5

    .line 235
    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    move-object/from16 v5, p12

    move-object/from16 v6, p13

    .line 236
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_4
    const-string v2, "failed to create ambient to display color temperature spline."

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

    .line 240
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    const-class v0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    iput-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 241
    return-void
.end method

.method private disable()Z
    .locals 3

    .line 505
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 506
    return v1

    .line 508
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-eqz v0, :cond_1

    .line 509
    const-string v0, "DisplayWhiteBalanceController"

    const-string v2, "disabling"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    .line 512
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    invoke-virtual {v0, v1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->setEnabled(Z)Z

    .line 513
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v0}, Lcom/android/server/display/utils/AmbientFilter;->clear()V

    .line 514
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    invoke-virtual {v0, v1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->setEnabled(Z)Z

    .line 515
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v0}, Lcom/android/server/display/utils/AmbientFilter;->clear()V

    .line 516
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    invoke-virtual {v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->clear()V

    .line 517
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    .line 518
    iput v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    .line 519
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->resetDisplayWhiteBalanceColorTemperature()Z

    .line 520
    const/4 v0, 0x1

    return v0
.end method

.method private enable()Z
    .locals 2

    .line 492
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 493
    const/4 v0, 0x0

    return v0

    .line 495
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-eqz v0, :cond_1

    .line 496
    const-string v0, "DisplayWhiteBalanceController"

    const-string v1, "enabling"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    .line 499
    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    invoke-virtual {v1, v0}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->setEnabled(Z)Z

    .line 500
    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    invoke-virtual {v1, v0}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->setEnabled(Z)Z

    .line 501
    return v0
.end method

.method private validateArguments(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;)V
    .locals 1
    .param p1, "brightnessSensor"    # Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;
    .param p2, "brightnessFilter"    # Lcom/android/server/display/utils/AmbientFilter;
    .param p3, "colorTemperatureSensor"    # Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;
    .param p4, "colorTemperatureFilter"    # Lcom/android/server/display/utils/AmbientFilter;
    .param p5, "throttler"    # Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    .line 482
    const-string v0, "brightnessSensor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 483
    const-string v0, "brightnessFilter must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 484
    const-string v0, "colorTemperatureSensor must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 486
    const-string v0, "colorTemperatureFilter must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 488
    const-string/jumbo v0, "throttler cannot be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 489
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 323
    const-string v0, "DisplayWhiteBalanceController"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLoggingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCallbacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->dump(Ljava/io/PrintWriter;)V

    .line 328
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/utils/AmbientFilter;->dump(Ljava/io/PrintWriter;)V

    .line 329
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->dump(Ljava/io/PrintWriter;)V

    .line 330
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/utils/AmbientFilter;->dump(Ljava/io/PrintWriter;)V

    .line 331
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->dump(Ljava/io/PrintWriter;)V

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLowLightAmbientColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHighLightAmbientColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingAmbientColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastAmbientColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLastAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientColorTemperatureHistory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureHistory:Lcom/android/server/display/utils/History;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientColorTemperatureOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientToDisplayColorTemperatureSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLowLightAmbientBrightnessToBiasSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHighLightAmbientBrightnessToBiasSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public onAmbientBrightnessChanged(F)V
    .locals 3
    .param p1, "value"    # F

    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 350
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/server/display/utils/AmbientFilter;->addValue(JF)Z

    .line 351
    invoke-virtual {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->updateAmbientColorTemperature()V

    .line 352
    return-void
.end method

.method public onAmbientColorTemperatureChanged(F)V
    .locals 3
    .param p1, "value"    # F

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 357
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/server/display/utils/AmbientFilter;->addValue(JF)Z

    .line 358
    invoke-virtual {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->updateAmbientColorTemperature()V

    .line 359
    return-void
.end method

.method public setAmbientColorTemperatureOverride(F)Z
    .locals 1
    .param p1, "ambientColorTemperatureOverride"    # F

    .line 309
    iget v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 310
    const/4 v0, 0x0

    return v0

    .line 312
    :cond_0
    iput p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    .line 313
    const/4 v0, 0x1

    return v0
.end method

.method public setCallbacks(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;)Z
    .locals 1
    .param p1, "callbacks"    # Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    .line 268
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    if-ne v0, p1, :cond_0

    .line 269
    const/4 v0, 0x0

    return v0

    .line 271
    :cond_0
    iput-object p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    .line 272
    const/4 v0, 0x1

    return v0
.end method

.method public setEnabled(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .line 252
    if-eqz p1, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->enable()Z

    move-result v0

    return v0

    .line 255
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->disable()Z

    move-result v0

    return v0
.end method

.method public setLoggingEnabled(Z)Z
    .locals 1
    .param p1, "loggingEnabled"    # Z

    .line 284
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_0

    .line 285
    const/4 v0, 0x0

    return v0

    .line 287
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    .line 288
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->setLoggingEnabled(Z)Z

    .line 289
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/utils/AmbientFilter;->setLoggingEnabled(Z)Z

    .line 290
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->setLoggingEnabled(Z)Z

    .line 291
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/utils/AmbientFilter;->setLoggingEnabled(Z)Z

    .line 292
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->setLoggingEnabled(Z)Z

    .line 293
    const/4 v0, 0x1

    return v0
.end method

.method public updateAmbientColorTemperature()V
    .locals 10

    .line 365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 366
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/display/utils/AmbientFilter;->getEstimate(J)F

    move-result v2

    .line 367
    .local v2, "ambientColorTemperature":F
    iput v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestAmbientColorTemperature:F

    .line 369
    iget-object v3, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

    const/high16 v4, -0x40800000    # -1.0f

    if-eqz v3, :cond_0

    cmpl-float v5, v2, v4

    if-eqz v5, :cond_0

    .line 370
    nop

    .line 371
    invoke-virtual {v3, v2}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v2

    .line 374
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/display/utils/AmbientFilter;->getEstimate(J)F

    move-result v3

    .line 375
    .local v3, "ambientBrightness":F
    iput v3, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestAmbientBrightness:F

    .line 377
    cmpl-float v5, v2, v4

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v5, :cond_1

    .line 378
    invoke-static {v3, v4}, Lcom/android/internal/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    if-eqz v5, :cond_1

    .line 380
    invoke-virtual {v5, v3}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v5

    .line 381
    .local v5, "bias":F
    mul-float v7, v5, v2

    sub-float v8, v6, v5

    iget v9, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientColorTemperature:F

    mul-float/2addr v8, v9

    add-float v2, v7, v8

    .line 384
    iput v5, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestLowLightBias:F

    .line 386
    .end local v5    # "bias":F
    :cond_1
    cmpl-float v5, v2, v4

    if-eqz v5, :cond_2

    .line 387
    invoke-static {v3, v4}, Lcom/android/internal/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    if-eqz v5, :cond_2

    .line 389
    invoke-virtual {v5, v3}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v5

    .line 390
    .restart local v5    # "bias":F
    sub-float/2addr v6, v5

    mul-float/2addr v6, v2

    iget v7, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientColorTemperature:F

    mul-float/2addr v7, v5

    add-float v2, v6, v7

    .line 393
    iput v5, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestHighLightBias:F

    .line 396
    .end local v5    # "bias":F
    :cond_2
    iget v5, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    cmpl-float v5, v5, v4

    const-string v6, "DisplayWhiteBalanceController"

    if-eqz v5, :cond_4

    .line 397
    iget-boolean v5, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-eqz v5, :cond_3

    .line 398
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "override ambient color temperature: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " => "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_3
    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    .line 408
    :cond_4
    cmpl-float v4, v2, v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    invoke-virtual {v4, v2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->throttle(F)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    .line 412
    :cond_5
    iget-boolean v4, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-eqz v4, :cond_6

    .line 413
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pending ambient color temperature: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_6
    iput v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    .line 416
    iget-object v4, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    if-eqz v4, :cond_7

    .line 417
    invoke-interface {v4}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;->updateWhiteBalance()V

    .line 419
    :cond_7
    return-void

    .line 409
    :cond_8
    :goto_0
    return-void
.end method

.method public updateDisplayColorTemperature()V
    .locals 5

    .line 425
    const/high16 v0, -0x40800000    # -1.0f

    .line 430
    .local v0, "ambientColorTemperature":F
    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 431
    iget v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLastAmbientColorTemperature:F

    .line 436
    :cond_0
    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1

    .line 438
    iget v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    .line 441
    :cond_1
    cmpl-float v1, v0, v2

    if-nez v1, :cond_2

    .line 442
    return-void

    .line 445
    :cond_2
    iput v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    .line 446
    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    const-string v3, "DisplayWhiteBalanceController"

    if-eqz v1, :cond_3

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ambient color temperature: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_3
    iput v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    .line 450
    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureHistory:Lcom/android/server/display/utils/History;

    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    invoke-virtual {v1, v2}, Lcom/android/server/display/utils/History;->add(F)V

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display cct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " Latest ambient cct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestAmbientColorTemperature:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " Latest ambient lux: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestAmbientBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " Latest low light bias: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestLowLightBias:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " Latest high light bias: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestHighLightBias:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->setDisplayWhiteBalanceColorTemperature(I)Z

    .line 458
    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    iput v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLastAmbientColorTemperature:F

    .line 459
    return-void
.end method
