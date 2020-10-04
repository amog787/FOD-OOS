.class Lcom/android/server/display/AutomaticBrightnessController;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;,
        Lcom/android/server/display/AutomaticBrightnessController$Callbacks;,
        Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;,
        Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;
    }
.end annotation


# static fields
.field private static final AMBIENT_LIGHT_LONG_HORIZON_MILLIS:I = 0x1770

.field private static final AMBIENT_LIGHT_PREDICTION_TIME_MILLIS:J = 0x64L

.field private static final AMBIENT_LIGHT_SHORT_HORIZON_MILLIS:I = 0xfa0

.field private static final BRIGHTNESS_ADJUSTMENT_SAMPLE_DEBOUNCE_MILLIS:I = 0x2710

.field static DEBUG:Z = false

.field private static DEBUG_BACKLIGHT:Z = false

.field private static final DEBUG_PRETEND_LIGHT_SENSOR_ABSENT:Z = false

.field private static final MSG_BRIGHTNESS_ADJUSTMENT_SAMPLE:I = 0x2

.field private static final MSG_CLEAR_UPDATE_FAST_FLAG:I = 0xb

.field private static final MSG_INVALIDATE_SHORT_TERM_MODEL:I = 0x3

.field private static final MSG_UPDATE_AMBIENT_LUX:I = 0x1

.field private static final MSG_UPDATE_FOREGROUND_APP:I = 0x4

.field private static final MSG_UPDATE_FOREGROUND_APP_SYNC:I = 0x5

.field private static final TAG:Ljava/lang/String; = "AutomaticBrightnessController"

.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z = true


# instance fields
.field final FAST_BRIGHTEN_DEBOUNCE_TIME:J

.field private final HBM_THRESHOLD:I

.field private SHORT_TERM_MODEL_THRESHOLD_RATIO:F

.field private mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field private mAmbientBrighteningThreshold:F

.field private final mAmbientBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

.field private mAmbientDarkeningThreshold:F

.field private final mAmbientLightHorizon:I

.field private mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

.field public mAmbientLux:F

.field private mAmbientLuxValid:Z

.field private mBrighteningLightDebounceConfig:J

.field private mBrightnessAdjustmentSampleOldBrightness:I

.field private mBrightnessAdjustmentSampleOldLux:F

.field private mBrightnessAdjustmentSamplePending:Z

.field private final mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field private final mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

.field private mCurrentLightSensorRate:I

.field private final mDarkeningLightDebounceConfig:J

.field private mDisplayPolicy:I

.field private mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

.field private final mDozeScaleFactor:F

.field private mForegroundAppCategory:I

.field private mForegroundAppPackageName:Ljava/lang/String;

.field public mHBM_State:Z

.field private mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

.field private final mInitialLightSensorRate:I

.field private mIs18865N19801:Z

.field private mLastObservedLux:F

.field private mLastObservedLuxTime:J

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnableTime:J

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLightSensorWarmUpTimeConfig:I

.field private mLoggingEnabled:Z

.field public mNeedUpdateFast:Z

.field private final mNormalLightSensorRate:I

.field protected mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPendingForegroundAppCategory:I

.field private mPendingForegroundAppPackageName:Ljava/lang/String;

.field private mProximityPositive:Z

.field private final mProximitySensor:Landroid/hardware/Sensor;

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mRecentLightSamples:I

.field private final mResetAmbientLuxAfterWarmUpConfig:Z

.field private mScreenAutoBrightness:I

.field private mScreenBrighteningThreshold:F

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private final mScreenBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

.field private mScreenDarkeningThreshold:F

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mShortTermModelAnchor:F

.field private mShortTermModelTimeout:J

.field private mShortTermModelValid:Z

.field private mTaskStackListener:Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;

.field private mThresholdNSAMax:[I

.field private mThresholdNSAMin:[I

.field private mThresholdSAMax:[I

.field private mThresholdSAMin:[I

.field private mTime:Landroid/text/format/Time;

.field private final mWeightingIntercept:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    .line 77
    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_BACKLIGHT:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/server/display/BrightnessMappingStrategy;IIIFIIJJZLcom/android/server/display/HysteresisLevels;Lcom/android/server/display/HysteresisLevels;JLandroid/content/pm/PackageManager;Lcom/android/server/display/DisplayPowerController;)V
    .locals 18
    .param p1, "callbacks"    # Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p4, "lightSensor"    # Landroid/hardware/Sensor;
    .param p5, "mapper"    # Lcom/android/server/display/BrightnessMappingStrategy;
    .param p6, "lightSensorWarmUpTime"    # I
    .param p7, "brightnessMin"    # I
    .param p8, "brightnessMax"    # I
    .param p9, "dozeScaleFactor"    # F
    .param p10, "lightSensorRate"    # I
    .param p11, "initialLightSensorRate"    # I
    .param p12, "brighteningLightDebounceConfig"    # J
    .param p14, "darkeningLightDebounceConfig"    # J
    .param p16, "resetAmbientLuxAfterWarmUpConfig"    # Z
    .param p17, "ambientBrightnessThresholds"    # Lcom/android/server/display/HysteresisLevels;
    .param p18, "screenBrightnessThresholds"    # Lcom/android/server/display/HysteresisLevels;
    .param p19, "shortTermModelTimeout"    # J
    .param p21, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p22, "displayPowerController"    # Lcom/android/server/display/DisplayPowerController;

    .line 308
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 228
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 232
    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    .line 246
    const v3, 0x3f19999a    # 0.6f

    iput v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->SHORT_TERM_MODEL_THRESHOLD_RATIO:F

    .line 250
    iput-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHBM_State:Z

    .line 251
    iput-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIs18865N19801:Z

    .line 252
    const/4 v3, 0x3

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    iput-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMin:[I

    .line 253
    new-array v4, v3, [I

    fill-array-data v4, :array_1

    iput-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMax:[I

    .line 254
    new-array v4, v3, [I

    fill-array-data v4, :array_2

    iput-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdNSAMin:[I

    .line 255
    new-array v3, v3, [I

    fill-array-data v3, :array_3

    iput-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdNSAMax:[I

    .line 277
    iput-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximityPositive:Z

    .line 288
    iput-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mNeedUpdateFast:Z

    .line 298
    const/16 v3, 0x4e20

    iput v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->HBM_THRESHOLD:I

    .line 1154
    const-wide/16 v3, 0x5dc

    iput-wide v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->FAST_BRIGHTEN_DEBOUNCE_TIME:J

    .line 1478
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController$2;

    invoke-direct {v3, v0}, Lcom/android/server/display/AutomaticBrightnessController$2;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 1505
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController$3;

    invoke-direct {v3, v0}, Lcom/android/server/display/AutomaticBrightnessController$3;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 309
    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    .line 310
    move-object/from16 v4, p3

    iput-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 311
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 312
    move/from16 v6, p7

    iput v6, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    .line 313
    move/from16 v7, p8

    iput v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    .line 314
    move/from16 v8, p6

    iput v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    .line 315
    move/from16 v9, p9

    iput v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    .line 316
    move/from16 v10, p10

    iput v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    .line 317
    move/from16 v11, p11

    iput v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialLightSensorRate:I

    .line 318
    iput v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    .line 319
    move-wide/from16 v12, p12

    iput-wide v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    .line 320
    move-wide/from16 v14, p14

    iput-wide v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    .line 321
    move/from16 v2, p16

    iput-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    .line 322
    const/16 v1, 0x1770

    iput v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    .line 323
    iput v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mWeightingIntercept:I

    .line 324
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    .line 325
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    .line 326
    move-wide/from16 v1, p19

    iput-wide v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelTimeout:J

    .line 327
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    .line 328
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    .line 330
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;-><init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 331
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    int-to-long v3, v1

    iget v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    invoke-direct {v2, v3, v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;-><init>(JI)V

    iput-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 335
    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    .line 340
    sget-object v2, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_COLORDISPLAY_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v2}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/display/IOneplusColorDisplayManager;

    iput-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    .line 344
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 345
    move-object/from16 v2, p21

    iput-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 346
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;

    invoke-direct {v3, v0}, Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mTaskStackListener:Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;

    .line 347
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    .line 348
    iput-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppPackageName:Ljava/lang/String;

    .line 349
    const/4 v4, -0x1

    iput v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppCategory:I

    .line 350
    iput v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppCategory:I

    .line 353
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/16 v17, 0x7e

    const/16 v16, 0x0

    aput v17, v4, v16

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 354
    iget-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    goto :goto_0

    .line 356
    :cond_0
    iput-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 362
    :goto_0
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    iput-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mTime:Landroid/text/format/Time;

    .line 367
    move-object/from16 v3, p22

    iput-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    .line 368
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/AutomaticBrightnessController;->isOnePlus18865N19801()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIs18865N19801:Z

    .line 370
    return-void

    :array_0
    .array-data 4
        0x0
        0x2
        0x4
    .end array-data

    :array_1
    .array-data 4
        0xa
        0x32
        0x6e
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x2
        0x4
    .end array-data

    :array_3
    .array-data 4
        0xa
        0x32
        0x6e
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/app/IActivityTaskManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 71
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 71
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 71
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->updateForegroundAppSync()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 71
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 71
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximityPositive:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/display/AutomaticBrightnessController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Z

    .line 71
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximityPositive:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 71
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/AutomaticBrightnessController;JF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # J
    .param p3, "x2"    # F

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->handleLightSensorEvent(JF)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/display/AutomaticBrightnessController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/server/display/AutomaticBrightnessController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # I

    .line 71
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppCategory:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 71
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 71
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 71
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 71
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->collectBrightnessAdjustmentSample()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 71
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->invalidateShortTermModel()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 71
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->updateForegroundApp()V

    return-void
.end method

.method private adjustLightSensorRate(I)V
    .locals 5
    .param p1, "lightSensorRate"    # I

    .line 667
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    if-eq p1, v0, :cond_1

    .line 668
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjustLightSensorRate: previousRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutomaticBrightnessController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_0
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    .line 674
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 675
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    mul-int/lit16 v3, p1, 0x3e8

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 678
    :cond_1
    return-void
.end method

.method private applyLightSensorMeasurement(JF)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .line 656
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 657
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    int-to-long v1, v1

    sub-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    .line 658
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->push(JF)V

    .line 661
    iput p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    .line 662
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    .line 663
    return-void
.end method

.method private calculateAmbientLux(JJ)F
    .locals 20
    .param p1, "now"    # J
    .param p3, "horizon"    # J

    .line 941
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    iget-boolean v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    const-string v6, ")"

    const-string v7, ", "

    const-string v8, "AutomaticBrightnessController"

    if-eqz v5, :cond_0

    .line 942
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "calculateAmbientLux("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :cond_0
    iget-object v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v5}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v5

    .line 945
    .local v5, "N":I
    if-nez v5, :cond_1

    .line 946
    const-string v6, "calculateAmbientLux: No ambient light readings available"

    invoke-static {v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    const/high16 v6, -0x40800000    # -1.0f

    return v6

    .line 951
    :cond_1
    const/4 v9, 0x0

    .line 952
    .local v9, "endIndex":I
    sub-long v10, v1, v3

    .line 953
    .local v10, "horizonStartTime":J
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    add-int/lit8 v13, v5, -0x1

    if-ge v12, v13, :cond_2

    .line 954
    iget-object v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v13, v14}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v13

    cmp-long v13, v13, v10

    if-gtz v13, :cond_2

    .line 955
    add-int/lit8 v9, v9, 0x1

    .line 953
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 960
    .end local v12    # "i":I
    :cond_2
    iget-boolean v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v12, :cond_3

    .line 961
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "calculateAmbientLux: selected endIndex="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", point=("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 962
    invoke-virtual {v13, v9}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 963
    invoke-virtual {v13, v9}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 961
    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    :cond_3
    const/4 v6, 0x0

    .line 966
    .local v6, "sum":F
    const/4 v12, 0x0

    .line 967
    .local v12, "totalWeight":F
    const-wide/16 v13, 0x64

    .line 968
    .local v13, "endTime":J
    add-int/lit8 v15, v5, -0x1

    .local v15, "i":I
    :goto_1
    if-lt v15, v9, :cond_6

    .line 969
    iget-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v3, v15}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v3

    .line 970
    .local v3, "eventTime":J
    if-ne v15, v9, :cond_4

    cmp-long v16, v3, v10

    if-gez v16, :cond_4

    .line 973
    move-wide v3, v10

    .line 975
    :cond_4
    move-wide/from16 v16, v10

    move v11, v9

    .end local v9    # "endIndex":I
    .end local v10    # "horizonStartTime":J
    .local v11, "endIndex":I
    .local v16, "horizonStartTime":J
    sub-long v9, v3, v1

    .line 976
    .local v9, "startTime":J
    invoke-direct {v0, v9, v10, v13, v14}, Lcom/android/server/display/AutomaticBrightnessController;->calculateWeight(JJ)F

    move-result v1

    .line 977
    .local v1, "weight":F
    iget-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v2, v15}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v2

    .line 978
    .local v2, "lux":F
    move-wide/from16 v18, v3

    .end local v3    # "eventTime":J
    .local v18, "eventTime":J
    iget-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v3, :cond_5

    .line 979
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateAmbientLux: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "]: lux="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", weight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_5
    add-float/2addr v12, v1

    .line 984
    mul-float v3, v2, v1

    add-float/2addr v6, v3

    .line 985
    move-wide v13, v9

    .line 968
    .end local v1    # "weight":F
    .end local v2    # "lux":F
    .end local v9    # "startTime":J
    .end local v18    # "eventTime":J
    add-int/lit8 v15, v15, -0x1

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move v9, v11

    move-wide/from16 v10, v16

    goto :goto_1

    .end local v11    # "endIndex":I
    .end local v16    # "horizonStartTime":J
    .local v9, "endIndex":I
    .restart local v10    # "horizonStartTime":J
    :cond_6
    move-wide/from16 v16, v10

    move v11, v9

    .line 987
    .end local v9    # "endIndex":I
    .end local v10    # "horizonStartTime":J
    .end local v15    # "i":I
    .restart local v11    # "endIndex":I
    .restart local v16    # "horizonStartTime":J
    iget-boolean v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v1, :cond_7

    .line 988
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateAmbientLux: totalWeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", newAmbientLux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-float v2, v6, v12

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_7
    div-float v1, v6, v12

    return v1
.end method

.method private calculateWeight(JJ)F
    .locals 2
    .param p1, "startDelta"    # J
    .param p3, "endDelta"    # J

    .line 996
    invoke-direct {p0, p3, p4}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

    move-result v0

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private cancelBrightnessAdjustmentSample()V
    .locals 2

    .line 1337
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    if-eqz v0, :cond_0

    .line 1338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 1339
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 1341
    :cond_0
    return-void
.end method

.method private clampScreenBrightness(I)I
    .locals 2
    .param p1, "value"    # I

    .line 1319
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private collectBrightnessAdjustmentSample()V
    .locals 4

    .line 1344
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    if-eqz v0, :cond_1

    .line 1345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 1346
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    if-ltz v1, :cond_1

    .line 1347
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v1, :cond_0

    .line 1348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto-brightness adjustment changed by user: lux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ring="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutomaticBrightnessController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    :cond_0
    const v1, 0x88b8

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    .line 1355
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:I

    .line 1356
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 1357
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 1358
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1354
    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1361
    :cond_1
    return-void
.end method

.method private getDcEnable()Z
    .locals 3

    .line 743
    const/4 v0, 0x0

    const-string/jumbo v1, "persist.vendor.dc.enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method private handleLightSensorEvent(JF)V
    .locals 4
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .line 638
    float-to-int v0, p3

    const-wide/32 v1, 0x20000

    const-string v3, "ALS"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 639
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 641
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 643
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->adjustLightSensorRate(I)V

    .line 645
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->applyLightSensorMeasurement(JF)V

    .line 648
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v0}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->getStageEnable()I

    move-result v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p3, v0

    if-gez v0, :cond_1

    .line 649
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v0}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->alsMotionFlush()V

    .line 652
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(J)V

    .line 653
    return-void
.end method

.method private invalidateShortTermModel()V
    .locals 2

    .line 520
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 521
    const-string v0, "AutomaticBrightnessController"

    const-string v1, "ShortTermModel: invalidate user data"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    .line 524
    return-void
.end method

.method private static isInteractivePolicy(I)Z
    .locals 1
    .param p0, "policy"    # I

    .line 485
    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isOnePlus18865N19801()Z
    .locals 2

    .line 1157
    const-string/jumbo v0, "ro.boot.project_name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1158
    .local v0, "projectName":Ljava/lang/String;
    const-string v1, "18865"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1159
    const-string v1, "19801"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1162
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 1160
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private isOnePlus7Projects()Z
    .locals 2

    .line 747
    const-string/jumbo v0, "ro.boot.project_name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "projectName":Ljava/lang/String;
    const-string v1, "18821"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "18825"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 749
    const-string v1, "18827"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "18831"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 750
    const-string v1, "18857"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 753
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 751
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private limitLuxValue(F)F
    .locals 20
    .param p1, "lux"    # F

    .line 878
    const/4 v0, 0x0

    .line 879
    .local v0, "limitLux":F
    const-string/jumbo v1, "ro.boot.project_name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 880
    .local v1, "projectName":Ljava/lang/String;
    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/android/server/display/AutomaticBrightnessController;->mTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->hour:I

    .line 881
    .local v3, "hour":I
    const-string v4, "18831"

    const-string v5, "18827"

    const-string v6, "18825"

    const-string v7, "18821"

    const-string v8, "18863"

    const-string v9, "19853"

    const-string v10, "19851"

    const-string v11, "19850"

    const-string v12, "18865"

    const-string v13, "19861"

    const-string v14, "19833"

    const-string v15, "19831"

    move/from16 v16, v0

    .end local v0    # "limitLux":F
    .local v16, "limitLux":F
    const-string v0, "19830"

    const-string v2, "19801"

    move-object/from16 v17, v4

    const-string v4, "18857"

    move-object/from16 v18, v5

    const/4 v5, 0x6

    if-lt v3, v5, :cond_7

    const/16 v5, 0x14

    if-ge v3, v5, :cond_7

    .line 882
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 883
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 884
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 886
    :cond_0
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 887
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 888
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 890
    :cond_1
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 891
    const v0, 0x3f99999a    # 1.2f

    move/from16 v17, v3

    .end local v16    # "limitLux":F
    .restart local v0    # "limitLux":F
    goto/16 :goto_9

    .line 892
    .end local v0    # "limitLux":F
    .restart local v16    # "limitLux":F
    :cond_2
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 893
    move-object/from16 v5, v18

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 896
    :cond_3
    const v0, 0x3f99999a    # 1.2f

    move/from16 v17, v3

    .end local v16    # "limitLux":F
    .restart local v0    # "limitLux":F
    goto/16 :goto_9

    .line 894
    .end local v0    # "limitLux":F
    .restart local v16    # "limitLux":F
    :cond_4
    :goto_0
    const v0, 0x3f99999a    # 1.2f

    move/from16 v17, v3

    .end local v16    # "limitLux":F
    .restart local v0    # "limitLux":F
    goto/16 :goto_9

    .line 889
    .end local v0    # "limitLux":F
    .restart local v16    # "limitLux":F
    :cond_5
    :goto_1
    const v0, 0x3fb33333    # 1.4f

    move/from16 v17, v3

    .end local v16    # "limitLux":F
    .restart local v0    # "limitLux":F
    goto/16 :goto_9

    .line 885
    .end local v0    # "limitLux":F
    .restart local v16    # "limitLux":F
    :cond_6
    :goto_2
    const v0, 0x3fe66666    # 1.8f

    move/from16 v17, v3

    .end local v16    # "limitLux":F
    .restart local v0    # "limitLux":F
    goto/16 :goto_9

    .line 881
    .end local v0    # "limitLux":F
    .restart local v16    # "limitLux":F
    :cond_7
    move-object/from16 v19, v17

    move-object/from16 v5, v18

    .line 898
    move-object/from16 v18, v5

    const/16 v5, 0x14

    if-lt v3, v5, :cond_10

    const/16 v5, 0x17

    if-gt v3, v5, :cond_10

    .line 899
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 900
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 901
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_5

    .line 903
    :cond_8
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 904
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 905
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    .line 907
    :cond_9
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 908
    const/high16 v0, 0x3f800000    # 1.0f

    move/from16 v17, v3

    .end local v16    # "limitLux":F
    .restart local v0    # "limitLux":F
    goto/16 :goto_9

    .line 909
    .end local v0    # "limitLux":F
    .restart local v16    # "limitLux":F
    :cond_a
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 910
    move-object/from16 v5, v18

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_3

    .line 912
    :cond_b
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 913
    const v0, 0x3ee66666    # 0.45f

    move/from16 v17, v3

    .end local v16    # "limitLux":F
    .restart local v0    # "limitLux":F
    goto/16 :goto_9

    .line 915
    .end local v0    # "limitLux":F
    .restart local v16    # "limitLux":F
    :cond_c
    const/high16 v0, 0x3f800000    # 1.0f

    move/from16 v17, v3

    .end local v16    # "limitLux":F
    .restart local v0    # "limitLux":F
    goto/16 :goto_9

    .line 911
    .end local v0    # "limitLux":F
    .restart local v16    # "limitLux":F
    :cond_d
    :goto_3
    const v0, 0x3f666666    # 0.9f

    move/from16 v17, v3

    .end local v16    # "limitLux":F
    .restart local v0    # "limitLux":F
    goto/16 :goto_9

    .line 906
    .end local v0    # "limitLux":F
    .restart local v16    # "limitLux":F
    :cond_e
    :goto_4
    const/high16 v0, 0x3f800000    # 1.0f

    move/from16 v17, v3

    .end local v16    # "limitLux":F
    .restart local v0    # "limitLux":F
    goto/16 :goto_9

    .line 902
    .end local v0    # "limitLux":F
    .restart local v16    # "limitLux":F
    :cond_f
    :goto_5
    const v0, 0x3f666666    # 0.9f

    move/from16 v17, v3

    .end local v16    # "limitLux":F
    .restart local v0    # "limitLux":F
    goto/16 :goto_9

    .line 898
    .end local v0    # "limitLux":F
    .restart local v16    # "limitLux":F
    :cond_10
    move/from16 v17, v3

    move-object/from16 v5, v18

    move-object/from16 v3, v19

    .line 918
    .end local v3    # "hour":I
    .local v17, "hour":I
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 919
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 920
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_8

    .line 922
    :cond_11
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 923
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 924
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_7

    .line 926
    :cond_12
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 927
    const v0, 0x3f666666    # 0.9f

    .end local v16    # "limitLux":F
    .restart local v0    # "limitLux":F
    goto :goto_9

    .line 928
    .end local v0    # "limitLux":F
    .restart local v16    # "limitLux":F
    :cond_13
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 929
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_6

    .line 932
    :cond_14
    const v0, 0x3f4ccccd    # 0.8f

    .end local v16    # "limitLux":F
    .restart local v0    # "limitLux":F
    goto :goto_9

    .line 930
    .end local v0    # "limitLux":F
    .restart local v16    # "limitLux":F
    :cond_15
    :goto_6
    const v0, 0x3f4ccccd    # 0.8f

    .end local v16    # "limitLux":F
    .restart local v0    # "limitLux":F
    goto :goto_9

    .line 925
    .end local v0    # "limitLux":F
    .restart local v16    # "limitLux":F
    :cond_16
    :goto_7
    const v0, 0x3f4ccccd    # 0.8f

    .end local v16    # "limitLux":F
    .restart local v0    # "limitLux":F
    goto :goto_9

    .line 921
    .end local v0    # "limitLux":F
    .restart local v16    # "limitLux":F
    :cond_17
    :goto_8
    const v0, 0x3f19999a    # 0.6f

    .line 936
    .end local v16    # "limitLux":F
    .restart local v0    # "limitLux":F
    :goto_9
    cmpg-float v2, p1, v0

    if-gez v2, :cond_18

    move v2, v0

    goto :goto_a

    :cond_18
    move/from16 v2, p1

    :goto_a
    return v2
.end method

.method private nextAmbientLightBrighteningTransition(J)J
    .locals 6
    .param p1, "time"    # J

    .line 1006
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 1007
    .local v0, "N":I
    move-wide v1, p1

    .line 1008
    .local v1, "earliestValidTime":J
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 1009
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    .line 1010
    goto :goto_1

    .line 1012
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v1

    .line 1008
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1014
    .end local v3    # "i":I
    :cond_1
    :goto_1
    iget-wide v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    add-long/2addr v3, v1

    return-wide v3
.end method

.method private nextAmbientLightDarkeningTransition(J)J
    .locals 6
    .param p1, "time"    # J

    .line 1018
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 1019
    .local v0, "N":I
    move-wide v1, p1

    .line 1020
    .local v1, "earliestValidTime":J
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 1021
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    .line 1022
    goto :goto_1

    .line 1024
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v1

    .line 1020
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1026
    .end local v3    # "i":I
    :cond_1
    :goto_1
    iget-wide v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    add-long/2addr v3, v1

    return-wide v3
.end method

.method private nextFastBrighteningTransition(J)I
    .locals 18
    .param p1, "time"    # J

    .line 1165
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v3

    .line 1166
    .local v3, "N":I
    move-wide/from16 v4, p1

    .line 1168
    .local v4, "earliestValidTime":J
    iget v6, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    iget v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    sub-float/2addr v6, v7

    .line 1169
    .local v6, "deltaLux":F
    iget v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    sub-float/2addr v8, v7

    .line 1170
    .local v8, "delta":F
    const-wide/16 v9, 0x5dc

    .line 1171
    .local v9, "duration":J
    const/4 v11, 0x0

    cmpg-float v11, v8, v11

    const/4 v12, 0x0

    if-gez v11, :cond_0

    .line 1172
    return v12

    .line 1173
    :cond_0
    const v11, 0x461c4000    # 10000.0f

    cmpl-float v11, v8, v11

    const-string v13, "AutomaticBrightnessController"

    if-lez v11, :cond_1

    const v11, 0x459c4000    # 5000.0f

    cmpg-float v7, v7, v11

    if-ltz v7, :cond_6

    :cond_1
    const v7, 0x45bb8000    # 6000.0f

    cmpl-float v7, v8, v7

    const/high16 v11, 0x447a0000    # 1000.0f

    if-lez v7, :cond_2

    iget v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpg-float v7, v7, v11

    if-ltz v7, :cond_6

    :cond_2
    const/high16 v7, 0x457a0000    # 4000.0f

    cmpl-float v7, v8, v7

    const/high16 v14, 0x43480000    # 200.0f

    if-lez v7, :cond_3

    iget v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpg-float v7, v7, v14

    if-ltz v7, :cond_6

    :cond_3
    const/high16 v7, 0x44fa0000    # 2000.0f

    cmpl-float v7, v8, v7

    if-lez v7, :cond_4

    iget v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const/high16 v15, 0x42c80000    # 100.0f

    cmpg-float v7, v7, v15

    if-ltz v7, :cond_6

    :cond_4
    cmpl-float v7, v8, v11

    const/high16 v15, 0x42480000    # 50.0f

    if-lez v7, :cond_5

    iget v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpg-float v7, v7, v15

    if-ltz v7, :cond_6

    :cond_5
    const/high16 v7, 0x43fa0000    # 500.0f

    cmpl-float v16, v8, v7

    if-lez v16, :cond_7

    iget v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const/high16 v17, 0x41a00000    # 20.0f

    cmpg-float v12, v12, v17

    if-gez v12, :cond_7

    .line 1179
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "great change:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    const/4 v7, 0x3

    return v7

    .line 1183
    :cond_7
    iget-boolean v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIs18865N19801:Z

    const/high16 v17, 0x40400000    # 3.0f

    const/4 v14, 0x1

    if-eqz v12, :cond_b

    iget v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpg-float v12, v12, v17

    if-gez v12, :cond_b

    iget v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    cmpl-float v12, v12, v15

    if-lez v12, :cond_b

    .line 1184
    add-int/lit8 v12, v3, -0x2

    .local v12, "i":I
    :goto_0
    if-lt v12, v14, :cond_a

    .line 1185
    iget-object v15, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v15, v12}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v15

    iget-object v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    add-int/lit8 v11, v12, -0x1

    invoke-virtual {v14, v11}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v11

    cmpg-float v11, v15, v11

    if-ltz v11, :cond_9

    iget-object v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    add-int/lit8 v14, v12, -0x1

    invoke-virtual {v11, v14}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v11

    cmpg-float v11, v11, v17

    if-gez v11, :cond_8

    goto :goto_1

    .line 1184
    :cond_8
    add-int/lit8 v12, v12, -0x1

    const/high16 v11, 0x447a0000    # 1000.0f

    const/4 v14, 0x1

    goto :goto_0

    .line 1186
    :cond_9
    :goto_1
    iget-object v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v11, v12}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v4

    .line 1190
    .end local v12    # "i":I
    :cond_a
    sub-long v11, v1, v4

    const-wide/16 v14, 0x320

    cmp-long v11, v11, v14

    if-lez v11, :cond_b

    const/4 v11, 0x5

    if-le v3, v11, :cond_b

    iget-object v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    add-int/lit8 v12, v3, -0x2

    .line 1191
    invoke-virtual {v11, v12}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v11

    const/high16 v12, 0x42200000    # 40.0f

    cmpl-float v11, v11, v12

    if-lez v11, :cond_b

    iget-object v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    add-int/lit8 v12, v3, -0x3

    .line 1192
    invoke-virtual {v11, v12}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v11

    const/high16 v12, 0x41f00000    # 30.0f

    cmpl-float v11, v11, v12

    if-lez v11, :cond_b

    .line 1193
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "##:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    const/4 v7, 0x2

    return v7

    .line 1198
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/AutomaticBrightnessController;->useScreenShotAlgo()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 1199
    const v11, 0x44bb8000    # 1500.0f

    iget-object v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    iget-object v12, v12, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v12}, Lcom/android/server/display/RampAnimator;->getBrightnessValue()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v11

    const v11, 0x447fc000    # 1023.0f

    div-float v11, v12, v11

    .line 1200
    .local v11, "backlightCompensate":F
    cmpl-float v12, v6, v11

    if-lez v12, :cond_c

    move v12, v6

    goto :goto_2

    :cond_c
    move v12, v11

    :goto_2
    move v6, v12

    .line 1201
    cmpl-float v12, v6, v7

    if-lez v12, :cond_d

    move v12, v6

    goto :goto_3

    :cond_d
    move v12, v7

    :goto_3
    move v6, v12

    .line 1202
    iget v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    add-float/2addr v12, v6

    .line 1203
    .end local v11    # "backlightCompensate":F
    .local v12, "brightenThreshold":F
    goto :goto_5

    .line 1204
    .end local v12    # "brightenThreshold":F
    :cond_e
    const/high16 v11, 0x447a0000    # 1000.0f

    cmpl-float v12, v6, v11

    if-lez v12, :cond_f

    move v11, v6

    goto :goto_4

    :cond_f
    const/high16 v11, 0x447a0000    # 1000.0f

    :goto_4
    move v6, v11

    .line 1205
    iget v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    add-float v12, v11, v6

    .line 1207
    .restart local v12    # "brightenThreshold":F
    :goto_5
    iget v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpg-float v7, v11, v7

    if-gez v7, :cond_10

    iget v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    const/high16 v11, 0x447a0000    # 1000.0f

    cmpl-float v7, v7, v11

    if-lez v7, :cond_10

    .line 1208
    const/high16 v12, 0x447a0000    # 1000.0f

    .line 1209
    :cond_10
    iget v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const/high16 v11, 0x41200000    # 10.0f

    cmpg-float v7, v7, v11

    const/high16 v11, 0x437a0000    # 250.0f

    if-gez v7, :cond_11

    iget v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    cmpl-float v7, v7, v11

    if-lez v7, :cond_11

    .line 1210
    const/high16 v12, 0x437a0000    # 250.0f

    .line 1211
    :cond_11
    iget-boolean v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIs18865N19801:Z

    if-eqz v7, :cond_14

    .line 1212
    iget v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const/high16 v14, 0x3f800000    # 1.0f

    cmpg-float v7, v7, v14

    if-gez v7, :cond_12

    iget v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    const/high16 v14, 0x43160000    # 150.0f

    cmpl-float v7, v7, v14

    if-lez v7, :cond_12

    .line 1213
    const/high16 v12, 0x43160000    # 150.0f

    .line 1214
    const-wide/16 v9, 0x5dc

    .line 1216
    :cond_12
    iget v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpg-float v7, v7, v17

    if-gez v7, :cond_13

    iget v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    const/high16 v14, 0x43480000    # 200.0f

    cmpl-float v7, v7, v14

    if-lez v7, :cond_13

    .line 1217
    const/high16 v7, 0x43480000    # 200.0f

    .line 1218
    .end local v12    # "brightenThreshold":F
    .local v7, "brightenThreshold":F
    const-wide/16 v9, 0x5dc

    move v12, v7

    .line 1220
    .end local v7    # "brightenThreshold":F
    .restart local v12    # "brightenThreshold":F
    :cond_13
    iget v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const/high16 v14, 0x40a00000    # 5.0f

    cmpg-float v7, v7, v14

    if-gez v7, :cond_14

    iget v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    cmpl-float v7, v7, v11

    if-lez v7, :cond_14

    .line 1221
    const/high16 v12, 0x437a0000    # 250.0f

    .line 1222
    const-wide/16 v9, 0x5dc

    .line 1226
    :cond_14
    add-int/lit8 v7, v3, -0x1

    .local v7, "i":I
    :goto_6
    if-ltz v7, :cond_16

    .line 1227
    iget-object v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v11, v7}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v11

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_15

    .line 1228
    goto :goto_7

    .line 1230
    :cond_15
    iget-object v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v11, v7}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v4

    .line 1226
    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    .line 1232
    .end local v7    # "i":I
    :cond_16
    :goto_7
    iget-boolean v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v7, :cond_17

    .line 1233
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "nextFastBrighteningTransition: mAmbientLux = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", brightenThreshold = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", earliestValidTime = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", time = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    :cond_17
    add-long v13, v4, v9

    cmp-long v7, v13, v1

    if-gez v7, :cond_18

    const/16 v16, 0x1

    goto :goto_8

    :cond_18
    const/16 v16, 0x0

    :goto_8
    return v16
.end method

.method private prepareBrightnessAdjustmentSample()V
    .locals 4

    .line 1324
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 1325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 1326
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    .line 1327
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:I

    goto :goto_1

    .line 1329
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 1332
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1334
    return-void
.end method

.method private registerForegroundAppUpdater()V
    .locals 3

    .line 1367
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTaskStackListener:Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 1370
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->updateForegroundApp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1376
    goto :goto_0

    .line 1371
    :catch_0
    move-exception v0

    .line 1372
    .local v0, "e":Landroid/os/RemoteException;
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v1, :cond_0

    .line 1373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to register foreground app updater: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutomaticBrightnessController"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private reviseAmbientLux(F)F
    .locals 2
    .param p1, "lux"    # F

    .line 734
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator;->getBrightnessValue()I

    move-result v0

    const/16 v1, 0x55

    if-le v0, v1, :cond_0

    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Revise lux from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " to 1.9."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutomaticBrightnessController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const p1, 0x3ff33333    # 1.9f

    .line 739
    :cond_0
    return p1
.end method

.method private reviseAmbientThreshold(Z)V
    .locals 8
    .param p1, "brighten"    # Z

    .line 766
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v0}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->getStageEnable()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    .line 767
    const/4 v0, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_5

    .line 768
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->useScreenShotAlgo()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 769
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMin:[I

    aget v5, v4, v0

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMax:[I

    aget v6, v5, v0

    int-to-float v6, v6

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_0

    .line 770
    aget v1, v4, v0

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 771
    aget v0, v5, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    goto/16 :goto_0

    .line 772
    :cond_0
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMin:[I

    aget v4, v3, v1

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMax:[I

    aget v5, v4, v1

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_1

    .line 773
    aget v0, v3, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 774
    aget v0, v4, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    goto/16 :goto_0

    .line 775
    :cond_1
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMin:[I

    aget v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_17

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMax:[I

    aget v4, v3, v2

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_17

    .line 776
    aget v0, v1, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 777
    aget v0, v3, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    goto/16 :goto_0

    .line 780
    :cond_2
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMin:[I

    aget v5, v4, v0

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMax:[I

    aget v6, v5, v0

    int-to-float v6, v6

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_3

    .line 781
    aget v1, v4, v0

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 782
    aget v0, v5, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    goto/16 :goto_0

    .line 783
    :cond_3
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMin:[I

    aget v4, v3, v1

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMax:[I

    aget v5, v4, v1

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_4

    .line 784
    aget v0, v3, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 785
    aget v0, v4, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    goto/16 :goto_0

    .line 786
    :cond_4
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMin:[I

    aget v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_17

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMax:[I

    aget v4, v3, v2

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_17

    .line 787
    aget v0, v1, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 788
    aget v0, v3, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    goto/16 :goto_0

    .line 792
    :cond_5
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->useScreenShotAlgo()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 793
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMin:[I

    aget v5, v4, v2

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMax:[I

    aget v6, v5, v2

    int-to-float v6, v6

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_6

    .line 794
    aget v0, v4, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 795
    aget v0, v5, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    goto/16 :goto_0

    .line 796
    :cond_6
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMin:[I

    aget v4, v3, v1

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMax:[I

    aget v5, v4, v1

    int-to-float v5, v5

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_7

    .line 797
    aget v0, v3, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 798
    aget v0, v4, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    goto/16 :goto_0

    .line 799
    :cond_7
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMin:[I

    aget v3, v2, v0

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_17

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMax:[I

    aget v4, v3, v0

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_17

    .line 800
    aget v1, v2, v0

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 801
    aget v0, v3, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    goto/16 :goto_0

    .line 804
    :cond_8
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMin:[I

    aget v5, v4, v2

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_9

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMax:[I

    aget v6, v5, v2

    int-to-float v6, v6

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_9

    .line 805
    aget v0, v4, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 806
    aget v0, v5, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    goto/16 :goto_0

    .line 807
    :cond_9
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMin:[I

    aget v4, v3, v1

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_a

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMax:[I

    aget v5, v4, v1

    int-to-float v5, v5

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_a

    .line 808
    aget v0, v3, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 809
    aget v0, v4, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    goto/16 :goto_0

    .line 810
    :cond_a
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMin:[I

    aget v3, v2, v0

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_17

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMax:[I

    aget v4, v3, v0

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_17

    .line 811
    aget v1, v2, v0

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 812
    aget v0, v3, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    goto/16 :goto_0

    .line 817
    :cond_b
    const/high16 v0, 0x40a00000    # 5.0f

    const/high16 v1, 0x41f00000    # 30.0f

    const/4 v2, 0x0

    const/high16 v3, 0x42dc0000    # 110.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x41200000    # 10.0f

    if-eqz p1, :cond_11

    .line 818
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->useScreenShotAlgo()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 819
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpg-float v6, v0, v5

    if-gtz v6, :cond_c

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_c

    .line 820
    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 821
    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    goto/16 :goto_0

    .line 822
    :cond_c
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float v2, v0, v4

    if-ltz v2, :cond_d

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_d

    .line 823
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 824
    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    goto/16 :goto_0

    .line 825
    :cond_d
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float v1, v0, v5

    if-ltz v1, :cond_17

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_17

    .line 826
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 827
    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    goto/16 :goto_0

    .line 830
    :cond_e
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpg-float v7, v6, v0

    if-gtz v7, :cond_f

    cmpl-float v6, v6, v2

    if-ltz v6, :cond_f

    .line 831
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 832
    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    goto/16 :goto_0

    .line 833
    :cond_f
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float v2, v0, v4

    if-ltz v2, :cond_10

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_10

    .line 834
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 835
    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    goto/16 :goto_0

    .line 836
    :cond_10
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float v1, v0, v5

    if-ltz v1, :cond_17

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_17

    .line 837
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 838
    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    goto :goto_0

    .line 842
    :cond_11
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->useScreenShotAlgo()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 843
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float v6, v0, v5

    if-ltz v6, :cond_12

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_12

    .line 844
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 845
    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    goto :goto_0

    .line 846
    :cond_12
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float v3, v0, v4

    if-ltz v3, :cond_13

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_13

    .line 847
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 848
    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    goto :goto_0

    .line 849
    :cond_13
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpg-float v1, v0, v5

    if-gtz v1, :cond_17

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_17

    .line 850
    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 851
    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    goto :goto_0

    .line 854
    :cond_14
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float v7, v6, v5

    if-ltz v7, :cond_15

    cmpg-float v6, v6, v3

    if-gtz v6, :cond_15

    .line 855
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 856
    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    goto :goto_0

    .line 857
    :cond_15
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float v5, v3, v4

    if-ltz v5, :cond_16

    cmpg-float v3, v3, v1

    if-gtz v3, :cond_16

    .line 858
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 859
    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    goto :goto_0

    .line 860
    :cond_16
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpg-float v3, v1, v0

    if-gtz v3, :cond_17

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_17

    .line 861
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 862
    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 867
    :cond_17
    :goto_0
    return-void
.end method

.method private setAmbientLux(F)V
    .locals 8
    .param p1, "lux"    # F

    .line 687
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 689
    .local v0, "brighten":Z
    :goto_0
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    const-string v3, "AutomaticBrightnessController"

    if-gez v2, :cond_1

    .line 690
    const-string v2, "Ambient lux was negative, ignoring and setting to 0"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const/4 p1, 0x0

    .line 695
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->reviseAmbientLux(F)F

    move-result v2

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 697
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAmbientLux("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    invoke-virtual {v2, p1}, Lcom/android/server/display/HysteresisLevels;->getBrighteningThreshold(F)F

    move-result v2

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 699
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    invoke-virtual {v2, p1}, Lcom/android/server/display/HysteresisLevels;->getDarkeningThreshold(F)F

    move-result v2

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 703
    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->reviseAmbientThreshold(Z)V

    .line 708
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-direct {p0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->limitLuxValue(F)F

    move-result v2

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 712
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v5, v2, v5

    if-eqz v5, :cond_4

    .line 713
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->SHORT_TERM_MODEL_THRESHOLD_RATIO:F

    mul-float v6, v2, v5

    sub-float v6, v2, v6

    .line 715
    .local v6, "minAmbientLux":F
    mul-float/2addr v5, v2

    add-float/2addr v2, v5

    .line 717
    .local v2, "maxAmbientLux":F
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpg-float v7, v6, v5

    if-gez v7, :cond_3

    cmpg-float v5, v5, v2

    if-gez v5, :cond_3

    .line 718
    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v4, :cond_2

    .line 719
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ShortTermModel: re-validate user data, ambient lux is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    goto :goto_1

    .line 724
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ShortTermModel: reset data, ambient lux is "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 729
    .end local v2    # "maxAmbientLux":F
    .end local v6    # "minAmbientLux":F
    :cond_4
    :goto_1
    return-void
.end method

.method private setAutoBrightnessAdjustment(F)Z
    .locals 1
    .param p1, "adjustment"    # F

    .line 681
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->setAutoBrightnessAdjustment(F)Z

    move-result v0

    return v0
.end method

.method private setDisplayPolicy(I)Z
    .locals 5
    .param p1, "policy"    # I

    .line 460
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    if-ne v0, p1, :cond_0

    .line 461
    const/4 v0, 0x0

    return v0

    .line 463
    :cond_0
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    .line 464
    .local v0, "oldPolicy":I
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    .line 467
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 468
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTime:Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 469
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTime:Landroid/text/format/Time;

    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 472
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v1, :cond_2

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display policy transitioning from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AutomaticBrightnessController"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_2
    invoke-static {p1}, Lcom/android/server/display/AutomaticBrightnessController;->isInteractivePolicy(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->isInteractivePolicy(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 476
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    iget-wide v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelTimeout:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 478
    :cond_3
    invoke-static {p1}, Lcom/android/server/display/AutomaticBrightnessController;->isInteractivePolicy(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->isInteractivePolicy(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 479
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 481
    :cond_4
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private setLightSensorEnabled(Z)Z
    .locals 8
    .param p1, "enable"    # Z

    .line 588
    const/16 v0, 0x7e

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 589
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-nez v3, :cond_2

    .line 592
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNeedUpdateFast:Z

    .line 593
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/16 v4, 0xb

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 595
    sget-boolean v3, Lcom/android/server/display/DisplayPowerController;->DEBUG_ONEPLUS:Z

    sput-boolean v3, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_BACKLIGHT:Z

    .line 596
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 597
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    .line 598
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialLightSensorRate:I

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    .line 599
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->registerForegroundAppUpdater()V

    .line 600
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    mul-int/lit16 v6, v6, 0x3e8

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 604
    new-array v3, v2, [I

    aput v0, v3, v1

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 605
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    mul-int/lit16 v4, v4, 0x3e8

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v1, v3, v0, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 609
    :cond_0
    return v2

    .line 611
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v3, :cond_2

    .line 614
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    invoke-interface {v3}, Lcom/oneplus/display/IOneplusColorDisplayManager;->disablelightSensor()V

    .line 617
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 618
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    xor-int/2addr v3, v2

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 619
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 620
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 621
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->clear()V

    .line 622
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    .line 623
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 624
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->unregisterForegroundAppUpdater()V

    .line 625
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 628
    new-array v2, v2, [I

    aput v0, v2, v1

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    .line 629
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 630
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximityPositive:Z

    .line 634
    :cond_2
    return v1
.end method

.method private setScreenBrightnessByUser(F)Z
    .locals 4
    .param p1, "brightness"    # F

    .line 491
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 494
    return v1

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v0, v2, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->addUserDataPoint(FF)V

    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    .line 498
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    .line 499
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v2, :cond_1

    .line 500
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ShortTermModel: anchor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutomaticBrightnessController"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_1
    new-array v2, v0, [I

    const/16 v3, 0x7b

    aput v3, v2, v1

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHBM_State:Z

    if-ne v2, v0, :cond_2

    .line 506
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHBM_State:Z

    .line 510
    :cond_2
    return v0
.end method

.method private unregisterForegroundAppUpdater()V
    .locals 2

    .line 1381
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTaskStackListener:Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1384
    goto :goto_0

    .line 1382
    :catch_0
    move-exception v0

    .line 1385
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    .line 1386
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppCategory:I

    .line 1387
    return-void
.end method

.method private updateAmbientLux()V
    .locals 5

    .line 1030
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1031
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    int-to-long v3, v3

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    .line 1032
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(J)V

    .line 1033
    return-void
.end method

.method private updateAmbientLux(J)V
    .locals 19
    .param p1, "time"    # J

    .line 1038
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    const-string v4, ", mAmbientLux="

    const-wide/16 v5, 0xfa0

    const-string v7, "AutomaticBrightnessController"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v3, :cond_3

    .line 1039
    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v10, v3

    iget-wide v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    add-long/2addr v10, v12

    .line 1041
    .local v10, "timeWhenSensorWarmedUp":J
    cmp-long v3, v1, v10

    if-gez v3, :cond_1

    .line 1042
    iget-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v3, :cond_0

    .line 1043
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAmbientLux: Sensor not ready yet: time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", timeWhenSensorWarmedUp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :cond_0
    iget-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v3, v9, v10, v11}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 1049
    return-void

    .line 1051
    :cond_1
    invoke-direct {v0, v1, v2, v5, v6}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result v3

    invoke-direct {v0, v3}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 1052
    iput-boolean v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 1053
    iget-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v3, :cond_2

    .line 1054
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateAmbientLux: Initializing: mAmbientLightRingBuffer="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :cond_2
    invoke-direct {v0, v9, v8}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZZ)V

    .line 1061
    .end local v10    # "timeWhenSensorWarmedUp":J
    :cond_3
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v10

    .line 1062
    .local v10, "nextBrightenTransition":J
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v12

    .line 1071
    .local v12, "nextDarkenTransition":J
    const-wide/16 v14, 0x1770

    invoke-direct {v0, v1, v2, v14, v15}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result v3

    .line 1072
    .local v3, "slowAmbientLux":F
    invoke-direct {v0, v1, v2, v5, v6}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result v5

    .line 1075
    .local v5, "fastAmbientLux":F
    invoke-direct {v0, v1, v2, v14, v15}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result v6

    .line 1080
    .local v6, "zeroAmbientLux":F
    iget-object v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    invoke-interface {v14, v5}, Lcom/oneplus/display/IOneplusColorDisplayManager;->updateAutoAssertiveDisplayStatus(F)V

    .line 1082
    const/4 v14, 0x0

    .line 1083
    .local v14, "retFastBrighten":I
    iget-object v15, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v15}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->getStageEnable()I

    move-result v15

    and-int/2addr v15, v9

    if-eqz v15, :cond_4

    .line 1084
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextFastBrighteningTransition(J)I

    move-result v14

    .line 1086
    :cond_4
    iget v15, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    cmpl-float v16, v3, v15

    if-ltz v16, :cond_5

    cmpl-float v15, v5, v15

    if-ltz v15, :cond_5

    cmp-long v15, v10, v1

    if-lez v15, :cond_6

    :cond_5
    iget v15, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    cmpg-float v16, v3, v15

    if-gtz v16, :cond_8

    cmpg-float v15, v5, v15

    if-gtz v15, :cond_8

    cmp-long v15, v12, v1

    if-gtz v15, :cond_8

    .line 1092
    :cond_6
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateAmbientLux: "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    iget v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float v8, v5, v8

    if-lez v8, :cond_7

    const-string v8, "Brightened"

    goto :goto_0

    :cond_7
    const-string v8, "Darkened"

    :goto_0
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": mBrighteningLuxThreshold="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", mDarkeningLuxThreshold="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", mAmbientLightRingBuffer="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1092
    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    invoke-direct {v0, v5}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 1099
    const/4 v4, 0x0

    invoke-direct {v0, v9, v4}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZZ)V

    .line 1100
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v10

    .line 1101
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v12

    goto :goto_2

    .line 1102
    :cond_8
    const/4 v4, 0x0

    cmpl-float v4, v6, v4

    if-nez v4, :cond_9

    .line 1106
    invoke-direct {v0, v6}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 1107
    const/4 v4, 0x0

    invoke-direct {v0, v9, v4}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZZ)V

    .line 1108
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v10

    .line 1109
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v12

    goto :goto_2

    .line 1111
    :cond_9
    iget-boolean v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mNeedUpdateFast:Z

    if-eqz v4, :cond_a

    iget v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    iget v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    cmpl-float v8, v4, v8

    if-ltz v8, :cond_a

    .line 1114
    invoke-direct {v0, v4}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 1115
    const/4 v4, 0x0

    invoke-direct {v0, v9, v4}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZZ)V

    .line 1116
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v10

    .line 1117
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v12

    goto :goto_2

    .line 1119
    :cond_a
    if-lez v14, :cond_d

    .line 1122
    iget v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    .line 1123
    .local v4, "ambientLux":F
    const/4 v8, 0x2

    if-ne v14, v8, :cond_b

    .line 1124
    const/high16 v4, 0x41000000    # 8.0f

    goto :goto_1

    .line 1125
    :cond_b
    const/4 v8, 0x3

    if-ne v14, v8, :cond_c

    .line 1126
    move v4, v5

    .line 1127
    :cond_c
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Fast brighten logic triggered:"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, " retFastBrighten:"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    invoke-direct {v0, v4}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 1130
    const/4 v8, 0x0

    invoke-direct {v0, v9, v8}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZZ)V

    .line 1131
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v10

    .line 1132
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v12

    .line 1135
    .end local v4    # "ambientLux":F
    :cond_d
    :goto_2
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v15

    .line 1143
    .local v15, "nextTransitionTime":J
    cmp-long v4, v15, v1

    if-lez v4, :cond_e

    move-wide/from16 v17, v10

    move-wide v9, v15

    goto :goto_3

    :cond_e
    iget v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    move-wide/from16 v17, v10

    .end local v10    # "nextBrightenTransition":J
    .local v17, "nextBrightenTransition":J
    int-to-long v9, v4

    add-long/2addr v9, v1

    .line 1144
    .end local v15    # "nextTransitionTime":J
    .local v9, "nextTransitionTime":J
    :goto_3
    iget-boolean v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v4, :cond_f

    .line 1145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateAmbientLux: Scheduling ambient lux update for "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1146
    invoke-static {v9, v10}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1145
    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :cond_f
    iget-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v7, 0x1

    invoke-virtual {v4, v7, v9, v10}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 1149
    return-void
.end method

.method private updateAutoBrightness(ZZ)V
    .locals 6
    .param p1, "sendUpdate"    # Z
    .param p2, "isManuallySet"    # Z

    .line 1244
    const/4 v0, 0x0

    .line 1246
    .local v0, "exitHBMMode":Z
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v1, :cond_0

    .line 1247
    return-void

    .line 1252
    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/16 v3, 0x7b

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    const-string v3, "AutomaticBrightnessController"

    if-eqz v2, :cond_3

    .line 1253
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const v5, 0x469c4000    # 20000.0f

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1

    .line 1254
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v4, v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getHBMBrightness(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1255
    .local v2, "hbm_brightness":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hbm_brightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHBM_State:Z

    .line 1260
    sget v3, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenDarkeningThreshold:F

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrighteningThreshold:F

    .line 1262
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v3, v2, v1}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->animateHBMBrightness(IZ)V

    .line 1263
    return-void

    .line 1267
    .end local v2    # "hbm_brightness":I
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHBM_State:Z

    if-ne v2, v1, :cond_2

    .line 1268
    const/4 v0, 0x1

    .line 1270
    :cond_2
    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHBM_State:Z

    .line 1276
    :cond_3
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppCategory:I

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(FLjava/lang/String;I)F

    move-result v1

    .line 1279
    .local v1, "value":F
    sget v2, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 1280
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenBrightness(I)I

    move-result v2

    .line 1285
    .local v2, "newScreenAutoBrightness":I
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    if-nez p2, :cond_5

    int-to-float v4, v2

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenDarkeningThreshold:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    int-to-float v4, v2

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrighteningThreshold:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    .line 1289
    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v4, :cond_4

    .line 1290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ignoring newScreenAutoBrightness: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenDarkeningThreshold:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrighteningThreshold:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    :cond_4
    return-void

    .line 1298
    :cond_5
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    if-ne v4, v2, :cond_6

    if-eqz v0, :cond_8

    .line 1300
    :cond_6
    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v4, :cond_7

    .line 1301
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateAutoBrightness: mScreenAutoBrightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", newScreenAutoBrightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    :cond_7
    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 1307
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    int-to-float v4, v2

    .line 1308
    invoke-virtual {v3, v4}, Lcom/android/server/display/HysteresisLevels;->getBrighteningThreshold(F)F

    move-result v3

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrighteningThreshold:F

    .line 1309
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    int-to-float v4, v2

    .line 1310
    invoke-virtual {v3, v4}, Lcom/android/server/display/HysteresisLevels;->getDarkeningThreshold(F)F

    move-result v3

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenDarkeningThreshold:F

    .line 1312
    if-eqz p1, :cond_8

    .line 1313
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v3}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->updateBrightness()V

    .line 1316
    :cond_8
    return-void
.end method

.method private updateForegroundApp()V
    .locals 2

    .line 1391
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1392
    const-string v0, "AutomaticBrightnessController"

    const-string v1, "Attempting to update foreground app"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    :cond_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/AutomaticBrightnessController$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/AutomaticBrightnessController$1;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1426
    return-void
.end method

.method private updateForegroundAppSync()V
    .locals 2

    .line 1429
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating foreground app: packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutomaticBrightnessController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    .line 1434
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppPackageName:Ljava/lang/String;

    .line 1435
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppCategory:I

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppCategory:I

    .line 1436
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppCategory:I

    .line 1437
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZZ)V

    .line 1438
    return-void
.end method

.method private useScreenShotAlgo()Z
    .locals 1

    .line 758
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->getDcEnable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->isOnePlus7Projects()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private weightIntegral(J)F
    .locals 3
    .param p1, "x"    # J

    .line 1002
    long-to-float v0, p1

    long-to-float v1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mWeightingIntercept:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public adjustBrightenDebounceTime(I)V
    .locals 2
    .param p1, "ms"    # I

    .line 410
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    .line 411
    return-void
.end method

.method public configure(ZLandroid/hardware/display/BrightnessConfiguration;FZFZI)V
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "configuration"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p3, "brightness"    # F
    .param p4, "userChangedBrightness"    # Z
    .param p5, "adjustment"    # F
    .param p6, "userChangedAutoBrightnessAdjustment"    # Z
    .param p7, "displayPolicy"    # I

    .line 422
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p7, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 423
    .local v2, "dozing":Z
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/display/AutomaticBrightnessController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z

    move-result v3

    .line 424
    .local v3, "changed":Z
    invoke-direct {p0, p7}, Lcom/android/server/display/AutomaticBrightnessController;->setDisplayPolicy(I)Z

    move-result v4

    or-int/2addr v3, v4

    .line 425
    if-eqz p6, :cond_1

    .line 426
    invoke-direct {p0, p5}, Lcom/android/server/display/AutomaticBrightnessController;->setAutoBrightnessAdjustment(F)Z

    move-result v4

    or-int/2addr v3, v4

    .line 428
    :cond_1
    if-eqz p4, :cond_2

    if-eqz p1, :cond_2

    .line 431
    invoke-direct {p0, p3}, Lcom/android/server/display/AutomaticBrightnessController;->setScreenBrightnessByUser(F)Z

    move-result v4

    or-int/2addr v3, v4

    .line 433
    :cond_2
    if-nez p4, :cond_4

    if-eqz p6, :cond_3

    goto :goto_1

    :cond_3
    move v1, v0

    .line 435
    .local v1, "userInitiatedChange":Z
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    if-nez v2, :cond_5

    .line 436
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->prepareBrightnessAdjustmentSample()V

    .line 440
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->setLightSensorEnabled(Z)Z

    move-result v4

    or-int/2addr v3, v4

    .line 442
    if-eqz v3, :cond_6

    .line 443
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZZ)V

    .line 445
    :cond_6
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 535
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 536
    const-string v0, "Automatic Brightness Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozeScaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInitialLightSensorRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialLightSensorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNormalLightSensorRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorWarmUpTimeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrighteningLightDebounceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDarkeningLightDebounceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mResetAmbientLuxAfterWarmUpConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLightHorizon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWeightingIntercept="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mWeightingIntercept:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 550
    const-string v0, "Automatic Brightness Controller State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnableTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentLightSensorRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLuxValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientBrighteningThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientDarkeningThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrighteningThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrighteningThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenDarkeningThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenDarkeningThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentLightSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLightRingBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    invoke-static {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShortTermModelTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelTimeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShortTermModelAnchor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShortTermModelValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessAdjustmentSamplePending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessAdjustmentSampleOldLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessAdjustmentSampleOldBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mForegroundAppPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingForegroundAppPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mForegroundAppCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingForegroundAppCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 580
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->dump(Ljava/io/PrintWriter;)V

    .line 582
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 583
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    invoke-virtual {v0, p1}, Lcom/android/server/display/HysteresisLevels;->dump(Ljava/io/PrintWriter;)V

    .line 584
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    invoke-virtual {v0, p1}, Lcom/android/server/display/HysteresisLevels;->dump(Ljava/io/PrintWriter;)V

    .line 585
    return-void
.end method

.method public getAutomaticScreenBrightness()I
    .locals 2

    .line 390
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v0, :cond_0

    .line 391
    const/4 v0, -0x1

    return v0

    .line 393
    :cond_0
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 394
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 396
    :cond_1
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    return v0
.end method

.method public getAutomaticScreenBrightnessAdjustment()F
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getAutoBrightnessAdjustment()F

    move-result v0

    return v0
.end method

.method public getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public hasUserDataPoints()Z
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->hasUserDataPoints()Z

    move-result v0

    return v0
.end method

.method public hasValidAmbientLux()Z
    .locals 1

    .line 400
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    return v0
.end method

.method public isDefaultConfig()Z
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->isDefaultConfig()Z

    move-result v0

    return v0
.end method

.method public resetShortTermModel()V
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->clearUserDataPoints()V

    .line 515
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    .line 516
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    .line 517
    return-void
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
    .locals 1
    .param p1, "configuration"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 527
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 529
    const/4 v0, 0x1

    return v0

    .line 531
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setLoggingEnabled(Z)Z
    .locals 1
    .param p1, "loggingEnabled"    # Z

    .line 381
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_0

    .line 382
    const/4 v0, 0x0

    return v0

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->setLoggingEnabled(Z)Z

    .line 385
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    .line 386
    const/4 v0, 0x1

    return v0
.end method
