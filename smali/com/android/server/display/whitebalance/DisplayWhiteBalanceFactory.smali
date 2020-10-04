.class public Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;
.super Ljava/lang/Object;
.source "DisplayWhiteBalanceFactory.java"


# static fields
.field private static final BRIGHTNESS_FILTER_TAG:Ljava/lang/String; = "AmbientBrightnessFilter"

.field private static final COLOR_TEMPERATURE_FILTER_TAG:Ljava/lang/String; = "AmbientColorTemperatureFilter"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;
    .locals 21
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .line 59
    move-object/from16 v0, p2

    .line 60
    invoke-static/range {p0 .. p2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->createBrightnessSensor(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    move-result-object v11

    .line 61
    .local v11, "brightnessSensor":Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;
    invoke-static/range {p2 .. p2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->createBrightnessFilter(Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientFilter;

    move-result-object v12

    .line 62
    .local v12, "brightnessFilter":Lcom/android/server/display/whitebalance/AmbientFilter;
    nop

    .line 63
    invoke-static/range {p0 .. p2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->createColorTemperatureSensor(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    move-result-object v13

    .line 64
    .local v13, "colorTemperatureSensor":Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;
    invoke-static/range {p2 .. p2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->createColorTemperatureFilter(Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientFilter;

    move-result-object v14

    .line 65
    .local v14, "colorTemperatureFilter":Lcom/android/server/display/whitebalance/AmbientFilter;
    invoke-static/range {p2 .. p2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->createThrottler(Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    move-result-object v15

    .line 66
    .local v15, "throttler":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;
    const v1, 0x10500a0

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloat(Landroid/content/res/Resources;I)F

    move-result v16

    .line 69
    .local v16, "lowLightAmbientBrightnessThreshold":F
    const v1, 0x10500a1

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloat(Landroid/content/res/Resources;I)F

    move-result v17

    .line 72
    .local v17, "lowLightAmbientColorTemperature":F
    const v1, 0x1070031

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v18

    .line 74
    .local v18, "ambientColorTemperatures":[F
    const v1, 0x1070034

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v19

    .line 76
    .local v19, "displayColorTempeartures":[F
    new-instance v20, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    move-object/from16 v1, v20

    move-object v2, v11

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    invoke-direct/range {v1 .. v10}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;-><init>(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;Lcom/android/server/display/whitebalance/AmbientFilter;Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;Lcom/android/server/display/whitebalance/AmbientFilter;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;FF[F[F)V

    .line 80
    .local v1, "controller":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;
    invoke-virtual {v11, v1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->setCallbacks(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor$Callbacks;)Z

    .line 81
    invoke-virtual {v13, v1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->setCallbacks(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;)Z

    .line 82
    return-object v1
.end method

.method static createBrightnessFilter(Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientFilter;
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 105
    const v0, 0x10e0046

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 107
    .local v0, "horizon":I
    const v1, 0x105009e

    invoke-static {p0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloat(Landroid/content/res/Resources;I)F

    move-result v1

    .line 109
    .local v1, "intercept":F
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    new-instance v2, Lcom/android/server/display/whitebalance/AmbientFilter$WeightedMovingAverageAmbientFilter;

    const-string v3, "AmbientBrightnessFilter"

    invoke-direct {v2, v3, v0, v1}, Lcom/android/server/display/whitebalance/AmbientFilter$WeightedMovingAverageAmbientFilter;-><init>(Ljava/lang/String;IF)V

    return-object v2

    .line 113
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "missing configurations: expected config_displayWhiteBalanceBrightnessFilterIntercept"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static createBrightnessSensor(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;
    .locals 2
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 94
    const v0, 0x10e0047

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 96
    .local v0, "rate":I
    new-instance v1, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;-><init>(Landroid/os/Handler;Landroid/hardware/SensorManager;I)V

    return-object v1
.end method

.method private static createColorTemperatureFilter(Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientFilter;
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 134
    const v0, 0x10e0049

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 137
    .local v0, "horizon":I
    const v1, 0x105009f

    invoke-static {p0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloat(Landroid/content/res/Resources;I)F

    move-result v1

    .line 140
    .local v1, "intercept":F
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_0

    .line 141
    new-instance v2, Lcom/android/server/display/whitebalance/AmbientFilter$WeightedMovingAverageAmbientFilter;

    const-string v3, "AmbientColorTemperatureFilter"

    invoke-direct {v2, v3, v0, v1}, Lcom/android/server/display/whitebalance/AmbientFilter$WeightedMovingAverageAmbientFilter;-><init>(Ljava/lang/String;IF)V

    return-object v2

    .line 144
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "missing configurations: expected config_displayWhiteBalanceColorTemperatureFilterIntercept"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static createColorTemperatureSensor(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;
    .locals 3
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 124
    const v0, 0x1040174

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "name":Ljava/lang/String;
    const v1, 0x10e004c

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 130
    .local v1, "rate":I
    new-instance v2, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;-><init>(Landroid/os/Handler;Landroid/hardware/SensorManager;Ljava/lang/String;I)V

    return-object v2
.end method

.method private static createThrottler(Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;
    .locals 12
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 149
    const v0, 0x10e004d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 151
    .local v0, "increaseDebounce":I
    const v1, 0x10e004e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 153
    .local v7, "decreaseDebounce":I
    const v1, 0x1070032

    invoke-static {p0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v8

    .line 155
    .local v8, "baseThresholds":[F
    const v1, 0x1070037

    invoke-static {p0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v9

    .line 157
    .local v9, "increaseThresholds":[F
    const v1, 0x1070033

    invoke-static {p0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v10

    .line 159
    .local v10, "decreaseThresholds":[F
    new-instance v11, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    move-object v1, v11

    move v2, v0

    move v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;-><init>(II[F[F[F)V

    return-object v11
.end method

.method private static getFloat(Landroid/content/res/Resources;I)F
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .line 164
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 165
    .local v0, "value":Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 166
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 167
    const/high16 v1, 0x7fc00000    # Float.NaN

    return v1

    .line 169
    :cond_0
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    return v1
.end method

.method private static getFloatArray(Landroid/content/res/Resources;I)[F
    .locals 5
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .line 173
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 175
    .local v0, "array":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 176
    nop

    .line 187
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 176
    return-object v2

    .line 178
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    new-array v1, v1, [F

    .line 179
    .local v1, "values":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 180
    const/high16 v4, 0x7fc00000    # Float.NaN

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    aput v4, v1, v3

    .line 181
    aget v4, v1, v3

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    .line 182
    nop

    .line 187
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    return-object v2

    .line 179
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 185
    .end local v3    # "i":I
    :cond_2
    nop

    .line 187
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 185
    return-object v1

    .line 187
    .end local v1    # "values":[F
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method
