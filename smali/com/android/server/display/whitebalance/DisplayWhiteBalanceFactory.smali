.class public Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;
.super Ljava/lang/Object;
.source "DisplayWhiteBalanceFactory.java"


# static fields
.field private static final BRIGHTNESS_FILTER_TAG:Ljava/lang/String; = "AmbientBrightnessFilter"

.field private static final COLOR_TEMPERATURE_FILTER_TAG:Ljava/lang/String; = "AmbientColorTemperatureFilter"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;
    .locals 28
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .line 61
    move-object/from16 v0, p2

    .line 62
    invoke-static/range {p0 .. p2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->createBrightnessSensor(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    move-result-object v15

    .line 63
    .local v15, "brightnessSensor":Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;
    nop

    .line 64
    const-string v1, "AmbientBrightnessFilter"

    invoke-static {v1, v0}, Lcom/android/server/display/utils/AmbientFilterFactory;->createBrightnessFilter(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v16

    .line 65
    .local v16, "brightnessFilter":Lcom/android/server/display/utils/AmbientFilter;
    nop

    .line 66
    invoke-static/range {p0 .. p2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->createColorTemperatureSensor(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    move-result-object v14

    .line 67
    .local v14, "colorTemperatureSensor":Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;
    nop

    .line 68
    const-string v1, "AmbientColorTemperatureFilter"

    invoke-static {v1, v0}, Lcom/android/server/display/utils/AmbientFilterFactory;->createColorTemperatureFilter(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v17

    .line 69
    .local v17, "colorTemperatureFilter":Lcom/android/server/display/utils/AmbientFilter;
    invoke-static/range {p2 .. p2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->createThrottler(Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    move-result-object v18

    .line 70
    .local v18, "throttler":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;
    const v1, 0x107003e

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v19

    .line 73
    .local v19, "displayWhiteBalanceLowLightAmbientBrightnesses":[F
    const v1, 0x107003d

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v20

    .line 76
    .local v20, "displayWhiteBalanceLowLightAmbientBiases":[F
    const v1, 0x10500a4

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloat(Landroid/content/res/Resources;I)F

    move-result v21

    .line 79
    .local v21, "lowLightAmbientColorTemperature":F
    const v1, 0x107003b

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v22

    .line 82
    .local v22, "displayWhiteBalanceHighLightAmbientBrightnesses":[F
    const v1, 0x107003a

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v23

    .line 85
    .local v23, "displayWhiteBalanceHighLightAmbientBiases":[F
    const v1, 0x10500a3

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloat(Landroid/content/res/Resources;I)F

    move-result v24

    .line 88
    .local v24, "highLightAmbientColorTemperature":F
    const v1, 0x1070034

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v25

    .line 90
    .local v25, "ambientColorTemperatures":[F
    const v1, 0x1070037

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v26

    .line 92
    .local v26, "displayColorTempeartures":[F
    new-instance v27, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    move-object/from16 v1, v27

    move-object v2, v15

    move-object/from16 v3, v16

    move-object v4, v14

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    move/from16 v9, v21

    move-object/from16 v10, v22

    move-object/from16 v11, v23

    move/from16 v12, v24

    move-object/from16 v13, v25

    move-object v0, v14

    .end local v14    # "colorTemperatureSensor":Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;
    .local v0, "colorTemperatureSensor":Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;
    move-object/from16 v14, v26

    invoke-direct/range {v1 .. v14}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;-><init>(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;[F[FF[F[FF[F[F)V

    .line 99
    .local v1, "controller":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;
    invoke-virtual {v15, v1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->setCallbacks(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor$Callbacks;)Z

    .line 100
    invoke-virtual {v0, v1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->setCallbacks(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;)Z

    .line 101
    return-object v1
.end method

.method public static createBrightnessSensor(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;
    .locals 2
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .line 113
    const v0, 0x10e004b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 115
    .local v0, "rate":I
    new-instance v1, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;-><init>(Landroid/os/Handler;Landroid/hardware/SensorManager;I)V

    return-object v1
.end method

.method public static createColorTemperatureSensor(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;
    .locals 3
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .line 124
    const v0, 0x1040217

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "name":Ljava/lang/String;
    const v1, 0x10e0056

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

    .line 134
    const v0, 0x10e0057

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 136
    .local v0, "increaseDebounce":I
    const v1, 0x10e0058

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 138
    .local v7, "decreaseDebounce":I
    const v1, 0x1070035

    invoke-static {p0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v8

    .line 140
    .local v8, "baseThresholds":[F
    const v1, 0x107003c

    invoke-static {p0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v9

    .line 142
    .local v9, "increaseThresholds":[F
    const v1, 0x1070036

    invoke-static {p0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v10

    .line 144
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

    .line 149
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 150
    .local v0, "value":Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 151
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 152
    const/high16 v1, 0x7fc00000    # Float.NaN

    return v1

    .line 154
    :cond_0
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    return v1
.end method

.method private static getFloatArray(Landroid/content/res/Resources;I)[F
    .locals 5
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .line 158
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 160
    .local v0, "array":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 161
    nop

    .line 172
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 161
    return-object v2

    .line 163
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    new-array v1, v1, [F

    .line 164
    .local v1, "values":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 165
    const/high16 v4, 0x7fc00000    # Float.NaN

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    aput v4, v1, v3

    .line 166
    aget v4, v1, v3

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    .line 167
    nop

    .line 172
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 167
    return-object v2

    .line 164
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 170
    .end local v3    # "i":I
    :cond_2
    nop

    .line 172
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 170
    return-object v1

    .line 172
    .end local v1    # "values":[F
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 173
    throw v1
.end method
