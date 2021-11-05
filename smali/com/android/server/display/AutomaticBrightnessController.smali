.class Lcom/android/server/display/AutomaticBrightnessController;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Lcom/android/server/display/OpLightSensorController$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/AutomaticBrightnessController$Injector;,
        Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;,
        Lcom/android/server/display/AutomaticBrightnessController$Callbacks;,
        Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;,
        Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;
    }
.end annotation


# static fields
.field private static final ADFR_ENABLED:Z

.field private static final AMBIENT_LIGHT_LONG_HORIZON_MILLIS:I = 0x1770

.field private static final AMBIENT_LIGHT_LONG_HORIZON_MILLIS_FOR_ADLTM:I = 0x1388

.field private static final AMBIENT_LIGHT_PREDICTION_TIME_MILLIS:J = 0x64L

.field private static final AMBIENT_LIGHT_SHORT_HORIZON_MILLIS:I = 0x3e8

.field private static final AMBIENT_LIGHT_SHORT_HORIZON_MILLIS_FOR_ADLTM:I = 0x7d0

.field private static final BRIGHTNESS_ADJUSTMENT_SAMPLE_DEBOUNCE_MILLIS:I = 0x2710

.field static DEBUG:Z = false

.field private static DEBUG_BACKLIGHT:Z = false

.field private static final DEBUG_PRETEND_LIGHT_SENSOR_ABSENT:Z = false

.field public static HBM_VALUE_MAX:F = 0.0f

.field private static final MSG_BRIGHTNESS_ADJUSTMENT_SAMPLE:I = 0x2

.field private static final MSG_CLEAR_UPDATE_FAST_FLAG:I = 0xb

.field private static final MSG_INVALIDATE_SHORT_TERM_MODEL:I = 0x3

.field private static final MSG_UPDATE_AMBIENT_LUX:I = 0x1

.field private static final MSG_UPDATE_FOREGROUND_APP:I = 0x4

.field private static final MSG_UPDATE_FOREGROUND_APP_SYNC:I = 0x5

.field private static final SUN_LUX:F = 20000.0f

.field private static final TAG:Ljava/lang/String; = "AutomaticBrightnessController"

.field public static mScreenjustOn:Z


# instance fields
.field private mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field private mAdLtmStatus:Z

.field private mAmbientBrighteningThreshold:F

.field private mAmbientBrighteningThresholdForAdLtm:F

.field private final mAmbientBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

.field private mAmbientDarkeningThreshold:F

.field private mAmbientDarkeningThresholdForAdLtm:F

.field private final mAmbientLightHorizon:I

.field private mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

.field private mAmbientLux:F

.field private mAmbientLuxValid:Z

.field private mBlockLightSensorInGameMode:Z

.field private final mBrighteningLightDebounceConfig:J

.field private mBrightnessAdjustmentSampleOldBrightness:F

.field private mBrightnessAdjustmentSampleOldLux:F

.field private mBrightnessAdjustmentSamplePending:Z

.field private final mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field private final mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

.field private mContext:Landroid/content/Context;

.field private mCurrentLightSensorRate:I

.field private final mDarkeningLightDebounceConfig:J

.field private mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mDisplayPolicy:I

.field private final mDozeScaleFactor:F

.field public mDualLightSensorSupport:Z

.field private mForegroundAppCategory:I

.field private mForegroundAppPackageName:Ljava/lang/String;

.field private mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

.field private final mInitialLightSensorRate:I

.field private final mInjector:Lcom/android/server/display/AutomaticBrightnessController$Injector;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastObservedLux:F

.field private mLastObservedLuxTime:J

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnableTime:J

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLightSensorWarmUpTimeConfig:I

.field mLimitMinLuxConfig:[F

.field private mLoggingEnabled:Z

.field public mNeedUpdateFast:Z

.field private final mNormalLightSensorRate:I

.field protected mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

.field private mOpAmbientLuxDetecter:Lcom/android/server/display/OpAmbientLuxDetecter;

.field private mOpLightSensorController:Lcom/android/server/display/OpLightSensorController;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPendingForegroundAppCategory:I

.field private mPendingForegroundAppPackageName:Ljava/lang/String;

.field private mRecentLightSamples:I

.field private final mResetAmbientLuxAfterWarmUpConfig:Z

.field private mScreenAutoBrightness:F

.field private mScreenBrighteningThreshold:F

.field private final mScreenBrightnessRangeMaximum:F

.field private final mScreenBrightnessRangeMinimum:F

.field private final mScreenBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

.field private mScreenDarkeningThreshold:F

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mShortTermModelAnchor:F

.field private mShortTermModelValid:Z

.field private mSunVote:Z

.field private mTaskStackListener:Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;

.field private mThresholdNSAMax:[I

.field private mThresholdNSAMin:[I

.field private mThresholdSAMax:[I

.field private mThresholdSAMin:[I

.field private mTime:Landroid/text/format/Time;

.field mTimeSlotsConfig:[I

.field private final mWeightingIntercept:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    .line 80
    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_BACKLIGHT:Z

    .line 277
    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenjustOn:Z

    .line 295
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x147

    aput v2, v1, v0

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->ADFR_ENABLED:Z

    .line 1201
    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Lcom/android/server/display/AutomaticBrightnessController;->HBM_VALUE_MAX:F

    return-void
.end method

.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/server/display/BrightnessMappingStrategy;IFFFIIJJZLcom/android/server/display/HysteresisLevels;Lcom/android/server/display/HysteresisLevels;Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;ZLjava/lang/String;Ljava/lang/String;F[F[I)V
    .locals 29
    .param p1, "callbacks"    # Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p4, "lightSensor"    # Landroid/hardware/Sensor;
    .param p5, "mapper"    # Lcom/android/server/display/BrightnessMappingStrategy;
    .param p6, "lightSensorWarmUpTime"    # I
    .param p7, "brightnessMin"    # F
    .param p8, "brightnessMax"    # F
    .param p9, "dozeScaleFactor"    # F
    .param p10, "lightSensorRate"    # I
    .param p11, "initialLightSensorRate"    # I
    .param p12, "brighteningLightDebounceConfig"    # J
    .param p14, "darkeningLightDebounceConfig"    # J
    .param p16, "resetAmbientLuxAfterWarmUpConfig"    # Z
    .param p17, "ambientBrightnessThresholds"    # Lcom/android/server/display/HysteresisLevels;
    .param p18, "screenBrightnessThresholds"    # Lcom/android/server/display/HysteresisLevels;
    .param p19, "context"    # Landroid/content/Context;
    .param p20, "displayDeviceConfig"    # Lcom/android/server/display/DisplayDeviceConfig;
    .param p21, "dualLightSensorSupport"    # Z
    .param p22, "mainLightSensor"    # Ljava/lang/String;
    .param p23, "auxLightSensor"    # Ljava/lang/String;
    .param p24, "auxLightSensorLuxLimit"    # F
    .param p25, "limitMinLux"    # [F
    .param p26, "timeSlotsForMinLux"    # [I

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v13, p12

    move-wide/from16 v15, p14

    move/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    .line 311
    new-instance v28, Lcom/android/server/display/AutomaticBrightnessController$Injector;

    move-object/from16 v1, v28

    invoke-direct/range {v28 .. v28}, Lcom/android/server/display/AutomaticBrightnessController$Injector;-><init>()V

    invoke-direct/range {v0 .. v27}, Lcom/android/server/display/AutomaticBrightnessController;-><init>(Lcom/android/server/display/AutomaticBrightnessController$Injector;Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/server/display/BrightnessMappingStrategy;IFFFIIJJZLcom/android/server/display/HysteresisLevels;Lcom/android/server/display/HysteresisLevels;Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;ZLjava/lang/String;Ljava/lang/String;F[F[I)V

    .line 318
    return-void
.end method

.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController$Injector;Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/server/display/BrightnessMappingStrategy;IFFFIIJJZLcom/android/server/display/HysteresisLevels;Lcom/android/server/display/HysteresisLevels;Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;ZLjava/lang/String;Ljava/lang/String;F[F[I)V
    .locals 16
    .param p1, "injector"    # Lcom/android/server/display/AutomaticBrightnessController$Injector;
    .param p2, "callbacks"    # Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p5, "lightSensor"    # Landroid/hardware/Sensor;
    .param p6, "mapper"    # Lcom/android/server/display/BrightnessMappingStrategy;
    .param p7, "lightSensorWarmUpTime"    # I
    .param p8, "brightnessMin"    # F
    .param p9, "brightnessMax"    # F
    .param p10, "dozeScaleFactor"    # F
    .param p11, "lightSensorRate"    # I
    .param p12, "initialLightSensorRate"    # I
    .param p13, "brighteningLightDebounceConfig"    # J
    .param p15, "darkeningLightDebounceConfig"    # J
    .param p17, "resetAmbientLuxAfterWarmUpConfig"    # Z
    .param p18, "ambientBrightnessThresholds"    # Lcom/android/server/display/HysteresisLevels;
    .param p19, "screenBrightnessThresholds"    # Lcom/android/server/display/HysteresisLevels;
    .param p20, "context"    # Landroid/content/Context;
    .param p21, "displayDeviceConfig"    # Lcom/android/server/display/DisplayDeviceConfig;
    .param p22, "dualLightSensorSupport"    # Z
    .param p23, "mainLightSensor"    # Ljava/lang/String;
    .param p24, "auxLightSensor"    # Ljava/lang/String;
    .param p25, "auxLightSensorLuxLimit"    # F
    .param p26, "limitMinLux"    # [F
    .param p27, "timeSlotsForMinLux"    # [I

    .line 330
    move-object/from16 v8, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 205
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, v8, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMin:[I

    .line 206
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    iput-object v1, v8, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMax:[I

    .line 207
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    iput-object v1, v8, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdNSAMin:[I

    .line 208
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    iput-object v0, v8, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdNSAMax:[I

    .line 223
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, v8, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    .line 227
    const/4 v9, 0x0

    iput v9, v8, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    .line 245
    const v0, 0x46ea6000    # 30000.0f

    iput v0, v8, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThresholdForAdLtm:F

    .line 248
    iput-boolean v9, v8, Lcom/android/server/display/AutomaticBrightnessController;->mAdLtmStatus:Z

    .line 249
    iput v0, v8, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThresholdForAdLtm:F

    .line 272
    iput-boolean v9, v8, Lcom/android/server/display/AutomaticBrightnessController;->mBlockLightSensorInGameMode:Z

    .line 278
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/server/display/AutomaticBrightnessController;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 284
    iput-object v0, v8, Lcom/android/server/display/AutomaticBrightnessController;->mLimitMinLuxConfig:[F

    .line 286
    iput-boolean v9, v8, Lcom/android/server/display/AutomaticBrightnessController;->mNeedUpdateFast:Z

    .line 287
    iput-object v0, v8, Lcom/android/server/display/AutomaticBrightnessController;->mTimeSlotsConfig:[I

    .line 290
    iput-boolean v9, v8, Lcom/android/server/display/AutomaticBrightnessController;->mDualLightSensorSupport:Z

    .line 1383
    new-instance v1, Lcom/android/server/display/AutomaticBrightnessController$2;

    invoke-direct {v1, v8}, Lcom/android/server/display/AutomaticBrightnessController$2;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v1, v8, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 331
    move-object/from16 v10, p1

    iput-object v10, v8, Lcom/android/server/display/AutomaticBrightnessController;->mInjector:Lcom/android/server/display/AutomaticBrightnessController$Injector;

    .line 332
    move-object/from16 v11, p20

    iput-object v11, v8, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    .line 333
    move-object/from16 v12, p2

    iput-object v12, v8, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    .line 334
    move-object/from16 v13, p4

    iput-object v13, v8, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 335
    move-object/from16 v14, p6

    iput-object v14, v8, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 336
    move/from16 v15, p8

    iput v15, v8, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:F

    .line 337
    move/from16 v7, p9

    iput v7, v8, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:F

    .line 338
    move/from16 v6, p7

    iput v6, v8, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    .line 339
    move/from16 v5, p10

    iput v5, v8, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    .line 340
    move/from16 v4, p11

    iput v4, v8, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    .line 341
    move/from16 v3, p12

    iput v3, v8, Lcom/android/server/display/AutomaticBrightnessController;->mInitialLightSensorRate:I

    .line 342
    const/4 v1, -0x1

    iput v1, v8, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    .line 343
    move-wide/from16 v9, p13

    iput-wide v9, v8, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    .line 344
    move-wide/from16 v1, p15

    iput-wide v1, v8, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    .line 345
    move/from16 v9, p17

    iput-boolean v9, v8, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    .line 346
    const/16 v10, 0x1770

    iput v10, v8, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    .line 347
    iput v10, v8, Lcom/android/server/display/AutomaticBrightnessController;->mWeightingIntercept:I

    .line 348
    move-object/from16 v10, p18

    iput-object v10, v8, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    .line 349
    move-object/from16 v9, p19

    iput-object v9, v8, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    .line 351
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, v8, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    .line 352
    move-object/from16 v9, p21

    iput-object v9, v8, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 353
    new-instance v0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    move-object/from16 v9, p3

    invoke-direct {v0, v8, v9}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;-><init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/Looper;)V

    iput-object v0, v8, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 354
    new-instance v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v1, v8, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    int-to-long v1, v1

    iget v3, v8, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;-><init>(JI)V

    iput-object v0, v8, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 358
    move-object/from16 v3, p5

    iput-object v3, v8, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    .line 363
    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_COLORDISPLAY_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/display/IOneplusColorDisplayManager;

    iput-object v0, v8, Lcom/android/server/display/AutomaticBrightnessController;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    .line 367
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/display/AutomaticBrightnessController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 368
    iget-object v0, v8, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/display/AutomaticBrightnessController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 369
    new-instance v0, Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;

    invoke-direct {v0, v8}, Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v0, v8, Lcom/android/server/display/AutomaticBrightnessController;->mTaskStackListener:Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;

    .line 370
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    .line 371
    iput-object v0, v8, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppPackageName:Ljava/lang/String;

    .line 372
    const/4 v0, -0x1

    iput v0, v8, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppCategory:I

    .line 373
    iput v0, v8, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppCategory:I

    .line 377
    iget-object v0, v8, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, v8, Lcom/android/server/display/AutomaticBrightnessController;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 383
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, v8, Lcom/android/server/display/AutomaticBrightnessController;->mTime:Landroid/text/format/Time;

    .line 384
    move-object/from16 v2, p27

    iput-object v2, v8, Lcom/android/server/display/AutomaticBrightnessController;->mTimeSlotsConfig:[I

    .line 385
    move-object/from16 v1, p26

    iput-object v1, v8, Lcom/android/server/display/AutomaticBrightnessController;->mLimitMinLuxConfig:[F

    .line 389
    new-instance v0, Lcom/android/server/display/OpAmbientLuxDetecter;

    invoke-direct {v0}, Lcom/android/server/display/OpAmbientLuxDetecter;-><init>()V

    iput-object v0, v8, Lcom/android/server/display/AutomaticBrightnessController;->mOpAmbientLuxDetecter:Lcom/android/server/display/OpAmbientLuxDetecter;

    .line 393
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->ADFR_ENABLED:Z

    if-eqz v0, :cond_0

    .line 394
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, v8, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 397
    :cond_0
    move/from16 v9, p22

    iput-boolean v9, v8, Lcom/android/server/display/AutomaticBrightnessController;->mDualLightSensorSupport:Z

    .line 399
    :try_start_0
    new-instance v0, Lcom/android/server/display/OpLightSensorController;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    move-object/from16 v5, p23

    move-object/from16 v6, p24

    move/from16 v7, p25

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/OpLightSensorController;-><init>(Lcom/android/server/display/OpLightSensorController$Listener;Landroid/hardware/SensorManager;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;F)V

    iput-object v0, v8, Lcom/android/server/display/AutomaticBrightnessController;->mOpLightSensorController:Lcom/android/server/display/OpLightSensorController;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AutomaticBrightnessController"

    const-string v2, "Don\'t support dual light sensor."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v1, 0x0

    iput-boolean v1, v8, Lcom/android/server/display/AutomaticBrightnessController;->mDualLightSensorSupport:Z

    .line 406
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
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

    .line 74
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 74
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 74
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->updateForegroundAppSync()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 74
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/AutomaticBrightnessController;JF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # J
    .param p3, "x2"    # F

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->handleLightSensorEvent(JF)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/display/AutomaticBrightnessController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/server/display/AutomaticBrightnessController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # I

    .line 74
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppCategory:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 74
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 74
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 74
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 74
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->collectBrightnessAdjustmentSample()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 74
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->invalidateShortTermModel()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 74
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->updateForegroundApp()V

    return-void
.end method

.method private adjustLightSensorRate(I)V
    .locals 5
    .param p1, "lightSensorRate"    # I

    .line 716
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    if-eq p1, v0, :cond_1

    .line 717
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 718
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

    .line 722
    :cond_0
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    .line 726
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDualLightSensorSupport:Z

    if-nez v0, :cond_1

    .line 727
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 728
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    mul-int/lit16 v3, p1, 0x3e8

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 732
    :cond_1
    return-void
.end method

.method private applyLightSensorMeasurement(JF)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .line 705
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 706
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    int-to-long v1, v1

    sub-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    .line 707
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->push(JF)V

    .line 710
    iput p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    .line 711
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    .line 712
    return-void
.end method

.method private calculateAmbientLux(JJ)F
    .locals 20
    .param p1, "now"    # J
    .param p3, "horizon"    # J

    .line 928
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    iget-boolean v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    const-string v6, ")"

    const-string v7, ", "

    const-string v8, "AutomaticBrightnessController"

    if-eqz v5, :cond_0

    .line 929
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

    .line 931
    :cond_0
    iget-object v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v5}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v5

    .line 932
    .local v5, "N":I
    if-nez v5, :cond_1

    .line 933
    const-string v6, "calculateAmbientLux: No ambient light readings available"

    invoke-static {v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const/high16 v6, -0x40800000    # -1.0f

    return v6

    .line 938
    :cond_1
    const/4 v9, 0x0

    .line 939
    .local v9, "endIndex":I
    sub-long v10, v1, v3

    .line 940
    .local v10, "horizonStartTime":J
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    add-int/lit8 v13, v5, -0x1

    if-ge v12, v13, :cond_2

    .line 941
    iget-object v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v13, v14}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v13

    cmp-long v13, v13, v10

    if-gtz v13, :cond_2

    .line 942
    add-int/lit8 v9, v9, 0x1

    .line 940
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 947
    .end local v12    # "i":I
    :cond_2
    iget-boolean v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v12, :cond_3

    .line 948
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "calculateAmbientLux: selected endIndex="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", point=("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 949
    invoke-virtual {v13, v9}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 950
    invoke-virtual {v13, v9}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 948
    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_3
    const/4 v6, 0x0

    .line 953
    .local v6, "sum":F
    const/4 v12, 0x0

    .line 954
    .local v12, "totalWeight":F
    const-wide/16 v13, 0x64

    .line 955
    .local v13, "endTime":J
    add-int/lit8 v15, v5, -0x1

    .local v15, "i":I
    :goto_1
    if-lt v15, v9, :cond_6

    .line 956
    iget-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v3, v15}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v3

    .line 957
    .local v3, "eventTime":J
    if-ne v15, v9, :cond_4

    cmp-long v16, v3, v10

    if-gez v16, :cond_4

    .line 960
    move-wide v3, v10

    .line 962
    :cond_4
    move-wide/from16 v16, v10

    move v11, v9

    .end local v9    # "endIndex":I
    .end local v10    # "horizonStartTime":J
    .local v11, "endIndex":I
    .local v16, "horizonStartTime":J
    sub-long v9, v3, v1

    .line 963
    .local v9, "startTime":J
    invoke-direct {v0, v9, v10, v13, v14}, Lcom/android/server/display/AutomaticBrightnessController;->calculateWeight(JJ)F

    move-result v1

    .line 964
    .local v1, "weight":F
    iget-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v2, v15}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v2

    .line 965
    .local v2, "lux":F
    move-wide/from16 v18, v3

    .end local v3    # "eventTime":J
    .local v18, "eventTime":J
    iget-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v3, :cond_5

    add-int/lit8 v3, v5, -0x1

    if-ne v15, v3, :cond_5

    .line 966
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

    .line 970
    :cond_5
    add-float/2addr v12, v1

    .line 971
    mul-float v3, v2, v1

    add-float/2addr v6, v3

    .line 972
    move-wide v13, v9

    .line 955
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

    .line 974
    .end local v9    # "endIndex":I
    .end local v10    # "horizonStartTime":J
    .end local v15    # "i":I
    .restart local v11    # "endIndex":I
    .restart local v16    # "horizonStartTime":J
    iget-boolean v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v1, :cond_7

    .line 975
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

    .line 979
    :cond_7
    div-float v1, v6, v12

    return v1
.end method

.method private calculateWeight(JJ)F
    .locals 2
    .param p1, "startDelta"    # J
    .param p3, "endDelta"    # J

    .line 983
    invoke-direct {p0, p3, p4}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

    move-result v0

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private cancelBrightnessAdjustmentSample()V
    .locals 2

    .line 1227
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    if-eqz v0, :cond_0

    .line 1228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 1229
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 1231
    :cond_0
    return-void
.end method

.method private clampScreenBrightness(F)F
    .locals 2
    .param p1, "value"    # F

    .line 1203
    sget-boolean v0, Lcom/android/server/display/BrightnessMappingStrategy;->mHBMSupport:Z

    if-eqz v0, :cond_0

    .line 1204
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:F

    sget v1, Lcom/android/server/display/AutomaticBrightnessController;->HBM_VALUE_MAX:F

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0

    .line 1208
    :cond_0
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:F

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:F

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private collectBrightnessAdjustmentSample()V
    .locals 4

    .line 1234
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    if-eqz v0, :cond_2

    .line 1235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 1236
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-gez v2, :cond_0

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 1238
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v1, :cond_1

    .line 1239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto-brightness adjustment changed by user: lux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", ring="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutomaticBrightnessController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    :cond_1
    const v1, 0x88b8

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    .line 1246
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:F

    .line 1247
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 1248
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    .line 1249
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1245
    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1252
    :cond_2
    return-void
.end method

.method private getDcEnable()Z
    .locals 3

    .line 780
    const-string/jumbo v0, "persist.vendor.dc.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private handleLightSensorEvent(JF)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .line 682
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->needToBlockLightSensor()Z

    move-result v0

    const-string v1, "AutomaticBrightnessController"

    if-eqz v0, :cond_1

    .line 683
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 684
    const-string v0, "Block light sensor data."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_0
    return-void

    .line 688
    :cond_1
    const-wide/32 v2, 0x20000

    float-to-int v0, p3

    const-string v4, "ALS"

    invoke-static {v2, v3, v4, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 689
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 692
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNeedUpdateFast:Z

    if-eqz v0, :cond_2

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLightSensorEvent:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 698
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->adjustLightSensorRate(I)V

    .line 700
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->applyLightSensorMeasurement(JF)V

    .line 701
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(J)V

    .line 702
    return-void
.end method

.method private invalidateShortTermModel()V
    .locals 2

    .line 545
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 546
    const-string v0, "AutomaticBrightnessController"

    const-string v1, "ShortTermModel: invalidate user data"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    .line 549
    return-void
.end method

.method private static isInteractivePolicy(I)Z
    .locals 1
    .param p0, "policy"    # I

    .line 518
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

.method private isOnePlus7Projects()Z
    .locals 2

    .line 784
    const-string/jumbo v0, "ro.boot.project_name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 785
    .local v0, "projectName":Ljava/lang/String;
    const-string v1, "18821"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "18825"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 786
    const-string v1, "18827"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "18831"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 787
    const-string v1, "18857"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 790
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 788
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private limitLuxValue(F)F
    .locals 6
    .param p1, "lux"    # F

    .line 909
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLimitMinLuxConfig:[F

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTimeSlotsConfig:[I

    if-eqz v1, :cond_4

    array-length v0, v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_4

    array-length v0, v1

    if-ge v0, v2, :cond_0

    goto :goto_2

    .line 913
    :cond_0
    const/4 v0, 0x0

    .line 914
    .local v0, "limitLux":F
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->hour:I

    .line 915
    .local v1, "hour":I
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTimeSlotsConfig:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    if-lt v1, v4, :cond_1

    aget v2, v2, v5

    if-ge v1, v2, :cond_1

    .line 916
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLimitMinLuxConfig:[F

    aget v0, v2, v3

    goto :goto_0

    .line 917
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTimeSlotsConfig:[I

    aget v3, v2, v5

    const/4 v4, 0x2

    if-lt v1, v3, :cond_2

    aget v2, v2, v4

    if-ge v1, v2, :cond_2

    .line 918
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLimitMinLuxConfig:[F

    aget v0, v2, v5

    goto :goto_0

    .line 920
    :cond_2
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLimitMinLuxConfig:[F

    aget v0, v2, v4

    .line 923
    :goto_0
    cmpg-float v2, p1, v0

    if-gez v2, :cond_3

    move v2, v0

    goto :goto_1

    :cond_3
    move v2, p1

    :goto_1
    return v2

    .line 911
    .end local v0    # "limitLux":F
    .end local v1    # "hour":I
    :cond_4
    :goto_2
    return p1
.end method

.method private needToBlockLightSensor()Z
    .locals 3

    .line 1561
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenjustOn:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1562
    sput-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->mScreenjustOn:Z

    goto :goto_0

    .line 1564
    :cond_0
    sput-boolean v2, Lcom/android/server/display/AutomaticBrightnessController;->mScreenjustOn:Z

    .line 1566
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v0, :cond_1

    .line 1567
    return v2

    .line 1568
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBlockLightSensorInGameMode:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenjustOn:Z

    if-nez v0, :cond_2

    .line 1569
    return v1

    .line 1571
    :cond_2
    return v2
.end method

.method private nextAmbientLightBrighteningTransition(J)J
    .locals 6
    .param p1, "time"    # J

    .line 993
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 994
    .local v0, "N":I
    move-wide v1, p1

    .line 995
    .local v1, "earliestValidTime":J
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 996
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    .line 997
    goto :goto_1

    .line 999
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v1

    .line 995
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1001
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

    .line 1005
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 1006
    .local v0, "N":I
    move-wide v1, p1

    .line 1007
    .local v1, "earliestValidTime":J
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 1008
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    .line 1009
    goto :goto_1

    .line 1011
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v1

    .line 1007
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1013
    .end local v3    # "i":I
    :cond_1
    :goto_1
    iget-wide v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    add-long/2addr v3, v1

    return-wide v3
.end method

.method private nextAmbientLightDarkeningTransitionForAdLtm(J)J
    .locals 6
    .param p1, "time"    # J

    .line 1019
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 1020
    .local v0, "N":I
    move-wide v1, p1

    .line 1021
    .local v1, "earliestValidTime":J
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 1022
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThresholdForAdLtm:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    .line 1023
    goto :goto_1

    .line 1025
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v1

    .line 1021
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1027
    .end local v3    # "i":I
    :cond_1
    :goto_1
    const-wide/16 v3, 0xbb8

    add-long/2addr v3, v1

    return-wide v3
.end method

.method private prepareBrightnessAdjustmentSample()V
    .locals 4

    .line 1214
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 1215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 1216
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    .line 1217
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:F

    goto :goto_1

    .line 1219
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 1222
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1224
    return-void
.end method

.method private registerForegroundAppUpdater()V
    .locals 3

    .line 1258
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTaskStackListener:Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 1261
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->updateForegroundApp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1267
    goto :goto_0

    .line 1262
    :catch_0
    move-exception v0

    .line 1263
    .local v0, "e":Landroid/os/RemoteException;
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v1, :cond_0

    .line 1264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to register foreground app updater: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutomaticBrightnessController"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private reviseAmbientThreshold(Z)V
    .locals 8
    .param p1, "brighten"    # Z

    .line 800
    const-string/jumbo v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "msmnile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 801
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_5

    .line 802
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->useScreenShotAlgo()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 803
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMin:[I

    aget v5, v4, v1

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMax:[I

    aget v6, v5, v1

    int-to-float v6, v6

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_0

    .line 804
    aget v0, v4, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 805
    aget v0, v5, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    goto/16 :goto_0

    .line 806
    :cond_0
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMin:[I

    aget v4, v3, v0

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMax:[I

    aget v5, v4, v0

    int-to-float v5, v5

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_1

    .line 807
    aget v1, v3, v0

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 808
    aget v0, v4, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    goto/16 :goto_0

    .line 809
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

    .line 810
    aget v0, v1, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 811
    aget v0, v3, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    goto/16 :goto_0

    .line 814
    :cond_2
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMin:[I

    aget v5, v4, v1

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMax:[I

    aget v6, v5, v1

    int-to-float v6, v6

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_3

    .line 815
    aget v0, v4, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 816
    aget v0, v5, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    goto/16 :goto_0

    .line 817
    :cond_3
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMin:[I

    aget v4, v3, v0

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMax:[I

    aget v5, v4, v0

    int-to-float v5, v5

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_4

    .line 818
    aget v1, v3, v0

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 819
    aget v0, v4, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    goto/16 :goto_0

    .line 820
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

    .line 821
    aget v0, v1, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 822
    aget v0, v3, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    goto/16 :goto_0

    .line 826
    :cond_5
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->useScreenShotAlgo()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 827
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

    .line 828
    aget v0, v4, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 829
    aget v0, v5, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    goto/16 :goto_0

    .line 830
    :cond_6
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMin:[I

    aget v4, v3, v0

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMax:[I

    aget v5, v4, v0

    int-to-float v5, v5

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_7

    .line 831
    aget v1, v3, v0

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 832
    aget v0, v4, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    goto/16 :goto_0

    .line 833
    :cond_7
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMin:[I

    aget v3, v2, v1

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_17

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMax:[I

    aget v4, v3, v1

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_17

    .line 834
    aget v0, v2, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 835
    aget v0, v3, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    goto/16 :goto_0

    .line 838
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

    .line 839
    aget v0, v4, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 840
    aget v0, v5, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    goto/16 :goto_0

    .line 841
    :cond_9
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMin:[I

    aget v4, v3, v0

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_a

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMax:[I

    aget v5, v4, v0

    int-to-float v5, v5

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_a

    .line 842
    aget v1, v3, v0

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 843
    aget v0, v4, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    goto/16 :goto_0

    .line 844
    :cond_a
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMin:[I

    aget v3, v2, v1

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_17

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mThresholdSAMax:[I

    aget v4, v3, v1

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_17

    .line 845
    aget v0, v2, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 846
    aget v0, v3, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    goto/16 :goto_0

    .line 851
    :cond_b
    const/high16 v0, 0x40a00000    # 5.0f

    const/high16 v1, 0x41f00000    # 30.0f

    const/4 v2, 0x0

    const/high16 v3, 0x42dc0000    # 110.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x41200000    # 10.0f

    if-eqz p1, :cond_11

    .line 852
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->useScreenShotAlgo()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 853
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpg-float v6, v0, v5

    if-gtz v6, :cond_c

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_c

    .line 854
    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 855
    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    goto/16 :goto_0

    .line 856
    :cond_c
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float v2, v0, v4

    if-ltz v2, :cond_d

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_d

    .line 857
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 858
    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    goto/16 :goto_0

    .line 859
    :cond_d
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float v1, v0, v5

    if-ltz v1, :cond_17

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_17

    .line 860
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 861
    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    goto/16 :goto_0

    .line 864
    :cond_e
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpg-float v7, v6, v0

    if-gtz v7, :cond_f

    cmpl-float v6, v6, v2

    if-ltz v6, :cond_f

    .line 865
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 866
    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    goto/16 :goto_0

    .line 867
    :cond_f
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float v2, v0, v4

    if-ltz v2, :cond_10

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_10

    .line 868
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 869
    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    goto/16 :goto_0

    .line 870
    :cond_10
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float v1, v0, v5

    if-ltz v1, :cond_17

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_17

    .line 871
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 872
    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    goto :goto_0

    .line 876
    :cond_11
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->useScreenShotAlgo()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 877
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float v6, v0, v5

    if-ltz v6, :cond_12

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_12

    .line 878
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 879
    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    goto :goto_0

    .line 880
    :cond_12
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float v3, v0, v4

    if-ltz v3, :cond_13

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_13

    .line 881
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 882
    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    goto :goto_0

    .line 883
    :cond_13
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpg-float v1, v0, v5

    if-gtz v1, :cond_17

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_17

    .line 884
    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 885
    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    goto :goto_0

    .line 888
    :cond_14
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float v7, v6, v5

    if-ltz v7, :cond_15

    cmpg-float v6, v6, v3

    if-gtz v6, :cond_15

    .line 889
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 890
    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    goto :goto_0

    .line 891
    :cond_15
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float v5, v3, v4

    if-ltz v5, :cond_16

    cmpg-float v3, v3, v1

    if-gtz v3, :cond_16

    .line 892
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 893
    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    goto :goto_0

    .line 894
    :cond_16
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpg-float v3, v1, v0

    if-gtz v3, :cond_17

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_17

    .line 895
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 896
    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 901
    :cond_17
    :goto_0
    return-void
.end method

.method private setAmbientLux(F)V
    .locals 5
    .param p1, "lux"    # F

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAmbientLux("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutomaticBrightnessController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float v0, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 741
    .local v0, "brighten":Z
    :goto_0
    const/4 v4, 0x0

    cmpg-float v4, p1, v4

    if-gez v4, :cond_1

    .line 742
    const-string v4, "Ambient lux was negative, ignoring and setting to 0"

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const/4 p1, 0x0

    .line 747
    :cond_1
    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->ADFR_ENABLED:Z

    if-eqz v1, :cond_3

    .line 748
    const v1, 0x469c4000    # 20000.0f

    cmpl-float v4, p1, v1

    if-lez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSunVote:Z

    if-nez v4, :cond_2

    .line 749
    invoke-direct {p0, v3}, Lcom/android/server/display/AutomaticBrightnessController;->voteForRefreshRate(Z)V

    .line 750
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSunVote:Z

    .line 753
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSunVote:Z

    if-eqz v4, :cond_3

    cmpg-float v1, p1, v1

    if-gez v1, :cond_3

    .line 754
    invoke-direct {p0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->voteForRefreshRate(Z)V

    .line 755
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSunVote:Z

    .line 759
    :cond_3
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 760
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    invoke-virtual {v1, p1}, Lcom/android/server/display/HysteresisLevels;->getBrighteningThreshold(F)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 761
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    invoke-virtual {v1, p1}, Lcom/android/server/display/HysteresisLevels;->getDarkeningThreshold(F)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 763
    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->reviseAmbientThreshold(Z)V

    .line 766
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->limitLuxValue(F)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 770
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    if-nez v2, :cond_5

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_5

    .line 771
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v4, v1, v2}, Lcom/android/server/display/BrightnessMappingStrategy;->shouldResetShortTermModel(FF)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 772
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    goto :goto_1

    .line 774
    :cond_4
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    .line 777
    :cond_5
    :goto_1
    return-void
.end method

.method private setAutoBrightnessAdjustment(F)Z
    .locals 1
    .param p1, "adjustment"    # F

    .line 735
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->setAutoBrightnessAdjustment(F)Z

    move-result v0

    return v0
.end method

.method private setDisplayPolicy(I)Z
    .locals 5
    .param p1, "policy"    # I

    .line 493
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    if-ne v0, p1, :cond_0

    .line 494
    const/4 v0, 0x0

    return v0

    .line 496
    :cond_0
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    .line 497
    .local v0, "oldPolicy":I
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    .line 500
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 501
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTime:Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 502
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 505
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v2, :cond_2

    .line 506
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display policy transitioning from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutomaticBrightnessController"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_2
    invoke-static {p1}, Lcom/android/server/display/AutomaticBrightnessController;->isInteractivePolicy(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->isInteractivePolicy(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 509
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 510
    invoke-virtual {v3}, Lcom/android/server/display/BrightnessMappingStrategy;->getShortTermModelTimeout()J

    move-result-wide v3

    .line 509
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 511
    :cond_3
    invoke-static {p1}, Lcom/android/server/display/AutomaticBrightnessController;->isInteractivePolicy(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->isInteractivePolicy(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 512
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 514
    :cond_4
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private setLightSensorEnabled(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    .line 629
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 630
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-nez v2, :cond_4

    .line 633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLightSensorEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutomaticBrightnessController"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNeedUpdateFast:Z

    .line 635
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/16 v2, 0xb

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 639
    sget-boolean v1, Lcom/android/server/display/DisplayPowerController;->DEBUG_ONEPLUS:Z

    sput-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_BACKLIGHT:Z

    .line 641
    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 642
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    .line 643
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialLightSensorRate:I

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    .line 644
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->registerForegroundAppUpdater()V

    .line 645
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDualLightSensorSupport:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mOpLightSensorController:Lcom/android/server/display/OpLightSensorController;

    if-eqz v1, :cond_0

    .line 646
    invoke-virtual {v1, p1}, Lcom/android/server/display/OpLightSensorController;->setLightSensorEnabled(Z)Z

    goto :goto_0

    .line 648
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    mul-int/lit16 v4, v4, 0x3e8

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 651
    :goto_0
    return v0

    .line 653
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v2, :cond_4

    .line 656
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAdLtmStatus:Z

    if-eqz v2, :cond_2

    .line 657
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    invoke-interface {v2, v1}, Lcom/oneplus/display/IOneplusColorDisplayManager;->updateAutoAssertiveDisplayStatus(Z)V

    .line 658
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAdLtmStatus:Z

    .line 662
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 663
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    xor-int/2addr v2, v0

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 664
    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    .line 665
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 666
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->clear()V

    .line 667
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    .line 668
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 669
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->unregisterForegroundAppUpdater()V

    .line 670
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDualLightSensorSupport:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mOpLightSensorController:Lcom/android/server/display/OpLightSensorController;

    if-eqz v0, :cond_3

    .line 671
    invoke-virtual {v0, p1}, Lcom/android/server/display/OpLightSensorController;->setLightSensorEnabled(Z)Z

    goto :goto_1

    .line 673
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 676
    :cond_4
    :goto_1
    return v1
.end method

.method private setScreenBrightnessByUser(F)Z
    .locals 3
    .param p1, "brightness"    # F

    .line 524
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v0, :cond_0

    .line 527
    const/4 v0, 0x0

    return v0

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v0, v1, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->addUserDataPoint(FF)V

    .line 530
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    .line 531
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    .line 532
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v1, :cond_1

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShortTermModel: anchor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutomaticBrightnessController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_1
    return v0
.end method

.method private unregisterForegroundAppUpdater()V
    .locals 2

    .line 1272
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTaskStackListener:Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1275
    goto :goto_0

    .line 1273
    :catch_0
    move-exception v0

    .line 1276
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    .line 1277
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppCategory:I

    .line 1278
    return-void
.end method

.method private updateAmbientLux()V
    .locals 5

    .line 1032
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1033
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    int-to-long v3, v3

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    .line 1034
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(J)V

    .line 1035
    return-void
.end method

.method private updateAmbientLux(J)V
    .locals 25
    .param p1, "time"    # J

    .line 1040
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    const-string v4, ", mAmbientLux="

    const-wide/16 v5, 0x3e8

    const-string v7, "AutomaticBrightnessController"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v3, :cond_3

    .line 1041
    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v10, v3

    iget-wide v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    add-long/2addr v10, v12

    .line 1043
    .local v10, "timeWhenSensorWarmedUp":J
    cmp-long v3, v1, v10

    if-gez v3, :cond_1

    .line 1044
    iget-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v3, :cond_0

    .line 1045
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

    .line 1049
    :cond_0
    iget-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v3, v9, v10, v11}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 1051
    return-void

    .line 1053
    :cond_1
    invoke-direct {v0, v1, v2, v5, v6}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result v3

    invoke-direct {v0, v3}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 1054
    iput-boolean v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 1055
    iget-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v3, :cond_2

    .line 1056
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

    .line 1060
    :cond_2
    invoke-direct {v0, v9, v8}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZZ)V

    .line 1063
    .end local v10    # "timeWhenSensorWarmedUp":J
    :cond_3
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v10

    .line 1064
    .local v10, "nextBrightenTransition":J
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v12

    .line 1073
    .local v12, "nextDarkenTransition":J
    const-wide/16 v14, 0x1770

    invoke-direct {v0, v1, v2, v14, v15}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result v3

    .line 1074
    .local v3, "slowAmbientLux":F
    invoke-direct {v0, v1, v2, v5, v6}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result v5

    .line 1078
    .local v5, "fastAmbientLux":F
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransitionForAdLtm(J)J

    move-result-wide v21

    .line 1079
    .local v21, "nextDarkenTransitionForAdLtm":J
    const-wide/16 v14, 0x1388

    invoke-direct {v0, v1, v2, v14, v15}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result v6

    .line 1080
    .local v6, "slowAmbientLuxforAdLtm":F
    const-wide/16 v14, 0x7d0

    invoke-direct {v0, v1, v2, v14, v15}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result v23

    .line 1081
    .local v23, "fastAmbientLuxforAdLtm":F
    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThresholdForAdLtm:F

    cmpl-float v15, v6, v14

    if-ltz v15, :cond_4

    cmpl-float v14, v23, v14

    if-ltz v14, :cond_4

    iget-boolean v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAdLtmStatus:Z

    if-nez v14, :cond_4

    .line 1082
    iget-object v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    invoke-interface {v14, v9}, Lcom/oneplus/display/IOneplusColorDisplayManager;->updateAutoAssertiveDisplayStatus(Z)V

    .line 1083
    iput-boolean v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAdLtmStatus:Z

    goto :goto_0

    .line 1084
    :cond_4
    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThresholdForAdLtm:F

    cmpg-float v15, v6, v14

    if-gtz v15, :cond_5

    cmpg-float v14, v23, v14

    if-gtz v14, :cond_5

    cmp-long v14, v21, v1

    if-gtz v14, :cond_5

    iget-boolean v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAdLtmStatus:Z

    if-eqz v14, :cond_5

    .line 1085
    iget-object v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    invoke-interface {v14, v8}, Lcom/oneplus/display/IOneplusColorDisplayManager;->updateAutoAssertiveDisplayStatus(Z)V

    .line 1086
    iput-boolean v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAdLtmStatus:Z

    .line 1092
    :cond_5
    :goto_0
    iget-object v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mOpAmbientLuxDetecter:Lcom/android/server/display/OpAmbientLuxDetecter;

    iget-object v15, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    move/from16 v24, v6

    .end local v6    # "slowAmbientLuxforAdLtm":F
    .local v24, "slowAmbientLuxforAdLtm":F
    iget-object v6, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    .line 1093
    invoke-interface {v6}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->getBrightnessValue()F

    move-result v19

    iget v6, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 1092
    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v5

    move/from16 v20, v6

    invoke-virtual/range {v14 .. v20}, Lcom/android/server/display/OpAmbientLuxDetecter;->setCurrentInfo(Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;FFFFF)V

    .line 1094
    iget-object v6, v0, Lcom/android/server/display/AutomaticBrightnessController;->mOpAmbientLuxDetecter:Lcom/android/server/display/OpAmbientLuxDetecter;

    invoke-virtual {v6, v1, v2}, Lcom/android/server/display/OpAmbientLuxDetecter;->nextFastBrighteningTransition(J)F

    move-result v6

    .line 1095
    .local v6, "retFastBrighten":F
    iget-object v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mOpAmbientLuxDetecter:Lcom/android/server/display/OpAmbientLuxDetecter;

    invoke-virtual {v8, v1, v2}, Lcom/android/server/display/OpAmbientLuxDetecter;->nextFastDarkeningTransition(J)F

    move-result v8

    .line 1098
    .local v8, "retFastDarken":F
    iget v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    cmpl-float v14, v3, v9

    if-ltz v14, :cond_6

    cmpl-float v9, v5, v9

    if-ltz v9, :cond_6

    cmp-long v9, v10, v1

    if-lez v9, :cond_7

    :cond_6
    iget v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    cmpg-float v14, v3, v9

    if-gtz v14, :cond_a

    cmpg-float v9, v5, v9

    if-gtz v9, :cond_a

    cmp-long v9, v12, v1

    if-gtz v9, :cond_a

    .line 1104
    :cond_7
    invoke-direct {v0, v5}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 1105
    iget-boolean v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v9, :cond_9

    .line 1106
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateAmbientLux: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float v14, v5, v14

    if-lez v14, :cond_8

    const-string v14, "Brightened"

    goto :goto_1

    :cond_8
    const-string v14, "Darkened"

    :goto_1
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ": mBrighteningLuxThreshold="

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, ", mAmbientLightRingBuffer="

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1106
    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_9
    const/4 v4, 0x0

    const/4 v9, 0x1

    invoke-direct {v0, v9, v4}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZZ)V

    .line 1113
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v10

    .line 1114
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v12

    goto :goto_2

    .line 1115
    :cond_a
    iget-boolean v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mNeedUpdateFast:Z

    if-eqz v4, :cond_b

    iget v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    iget v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    cmpl-float v9, v4, v9

    if-ltz v9, :cond_b

    .line 1118
    invoke-direct {v0, v4}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 1119
    const/4 v4, 0x0

    const/4 v9, 0x1

    invoke-direct {v0, v9, v4}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZZ)V

    .line 1120
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v10

    .line 1121
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v12

    goto :goto_2

    .line 1123
    :cond_b
    const/4 v4, 0x0

    cmpl-float v9, v6, v4

    if-lez v9, :cond_c

    .line 1126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fast brighten logic triggered, the lux of retFastBrighten:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    invoke-direct {v0, v6}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 1128
    const/4 v4, 0x0

    const/4 v9, 0x1

    invoke-direct {v0, v9, v4}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZZ)V

    .line 1129
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v10

    .line 1130
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v12

    goto :goto_2

    .line 1132
    :cond_c
    cmpl-float v4, v8, v4

    if-lez v4, :cond_d

    .line 1134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fast darken logic triggered, the lux of retFastDarken:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    invoke-direct {v0, v8}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 1136
    const/4 v4, 0x0

    const/4 v9, 0x1

    invoke-direct {v0, v9, v4}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZZ)V

    .line 1137
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v10

    .line 1138
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v12

    .line 1141
    :cond_d
    :goto_2
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 1149
    .local v14, "nextTransitionTime":J
    cmp-long v4, v14, v1

    if-lez v4, :cond_e

    move v9, v3

    move-wide v3, v14

    goto :goto_3

    :cond_e
    iget v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    move v9, v3

    .end local v3    # "slowAmbientLux":F
    .local v9, "slowAmbientLux":F
    int-to-long v3, v4

    add-long/2addr v3, v1

    .line 1150
    .end local v14    # "nextTransitionTime":J
    .local v3, "nextTransitionTime":J
    :goto_3
    iget-boolean v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v14, :cond_f

    .line 1151
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "updateAmbientLux: Scheduling ambient lux update for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1152
    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1151
    invoke-static {v7, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    :cond_f
    iget-object v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v14, 0x1

    invoke-virtual {v7, v14, v3, v4}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 1155
    return-void
.end method

.method private updateAutoBrightness(ZZ)V
    .locals 5
    .param p1, "sendUpdate"    # Z
    .param p2, "isManuallySet"    # Z

    .line 1158
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v0, :cond_0

    .line 1159
    return-void

    .line 1162
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppCategory:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(FLjava/lang/String;I)F

    move-result v0

    .line 1164
    .local v0, "value":F
    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenBrightness(F)F

    move-result v1

    .line 1168
    .local v1, "newScreenAutoBrightness":F
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    const-string v3, "AutomaticBrightnessController"

    if-nez v2, :cond_2

    if-nez p2, :cond_2

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenDarkeningThreshold:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrighteningThreshold:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    .line 1172
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v2, :cond_1

    .line 1173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignoring newScreenAutoBrightness: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenDarkeningThreshold:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " < "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrighteningThreshold:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    :cond_1
    return-void

    .line 1179
    :cond_2
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    invoke-static {v2, v1}, Lcom/android/internal/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1181
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNeedUpdateFast:Z

    if-eqz v2, :cond_4

    .line 1182
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAutoBrightness: mScreenAutoBrightness="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", newScreenAutoBrightness="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    :cond_4
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    .line 1187
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    .line 1188
    invoke-virtual {v2, v1}, Lcom/android/server/display/HysteresisLevels;->getBrighteningThreshold(F)F

    move-result v2

    .line 1187
    invoke-direct {p0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenBrightness(F)F

    move-result v2

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrighteningThreshold:F

    .line 1189
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    .line 1190
    invoke-virtual {v2, v1}, Lcom/android/server/display/HysteresisLevels;->getDarkeningThreshold(F)F

    move-result v2

    .line 1189
    invoke-direct {p0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenBrightness(F)F

    move-result v2

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenDarkeningThreshold:F

    .line 1192
    if-eqz p1, :cond_5

    .line 1193
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v2}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->updateBrightness()V

    .line 1196
    :cond_5
    return-void
.end method

.method private updateForegroundApp()V
    .locals 2

    .line 1282
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1283
    const-string v0, "AutomaticBrightnessController"

    const-string v1, "Attempting to update foreground app"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInjector:Lcom/android/server/display/AutomaticBrightnessController$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController$Injector;->getBackgroundThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/AutomaticBrightnessController$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/AutomaticBrightnessController$1;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1331
    return-void
.end method

.method private updateForegroundAppSync()V
    .locals 2

    .line 1334
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1335
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

    .line 1338
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    .line 1339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppPackageName:Ljava/lang/String;

    .line 1340
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppCategory:I

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppCategory:I

    .line 1341
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppCategory:I

    .line 1342
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZZ)V

    .line 1343
    return-void
.end method

.method private useScreenShotAlgo()Z
    .locals 1

    .line 795
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

.method private voteForRefreshRate(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 1606
    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;

    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;-><init>()V

    .line 1607
    .local v0, "mDisplayRefreshRateRequest":Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;
    const/4 v1, 0x0

    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->displayId:I

    .line 1608
    const/4 v1, 0x4

    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->policy:I

    .line 1609
    const/high16 v1, 0x42700000    # 60.0f

    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->requestRefreshRate:F

    .line 1610
    iput-boolean p1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->statusOn:Z

    .line 1612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "voteForRefreshRate(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutomaticBrightnessController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManagerInternal;->requestRefreshRate(Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;)V

    .line 1615
    return-void
.end method

.method private weightIntegral(J)F
    .locals 3
    .param p1, "x"    # J

    .line 989
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
.method public blockLightSensorForGameMode(Z)V
    .locals 2
    .param p1, "block"    # Z

    .line 1576
    const-string v0, "AutomaticBrightnessController"

    if-eqz p1, :cond_0

    .line 1577
    const-string v1, "Block light sensor data in game mode."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1579
    :cond_0
    const-string v1, "Unblock light sensor data in game mode."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBlockLightSensorInGameMode:Z

    .line 1582
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

    .line 457
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p7, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 458
    .local v2, "dozing":Z
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/display/AutomaticBrightnessController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z

    move-result v3

    .line 459
    .local v3, "changed":Z
    invoke-direct {p0, p7}, Lcom/android/server/display/AutomaticBrightnessController;->setDisplayPolicy(I)Z

    move-result v4

    or-int/2addr v3, v4

    .line 460
    if-eqz p6, :cond_1

    .line 461
    invoke-direct {p0, p5}, Lcom/android/server/display/AutomaticBrightnessController;->setAutoBrightnessAdjustment(F)Z

    move-result v4

    or-int/2addr v3, v4

    .line 463
    :cond_1
    if-eqz p4, :cond_2

    if-eqz p1, :cond_2

    .line 466
    invoke-direct {p0, p3}, Lcom/android/server/display/AutomaticBrightnessController;->setScreenBrightnessByUser(F)Z

    move-result v4

    or-int/2addr v3, v4

    .line 468
    :cond_2
    if-nez p4, :cond_4

    if-eqz p6, :cond_3

    goto :goto_1

    :cond_3
    move v1, v0

    .line 470
    .local v1, "userInitiatedChange":Z
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    if-nez v2, :cond_5

    .line 471
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->prepareBrightnessAdjustmentSample()V

    .line 473
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->setLightSensorEnabled(Z)Z

    move-result v4

    or-int/2addr v3, v4

    .line 475
    if-eqz v3, :cond_6

    .line 476
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZZ)V

    .line 478
    :cond_6
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 560
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 561
    const-string v0, "Automatic Brightness Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozeScaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInitialLightSensorRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialLightSensorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNormalLightSensorRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorWarmUpTimeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrighteningLightDebounceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDarkeningLightDebounceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mResetAmbientLuxAfterWarmUpConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLightHorizon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWeightingIntercept="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mWeightingIntercept:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 575
    const-string v0, "Automatic Brightness Controller State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
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

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentLightSensorRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLuxValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientBrighteningThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientDarkeningThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrighteningThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrighteningThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenDarkeningThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenDarkeningThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 587
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

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentLightSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLightRingBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 591
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

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShortTermModelTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getShortTermModelTimeout()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShortTermModelAnchor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShortTermModelValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessAdjustmentSamplePending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessAdjustmentSampleOldLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessAdjustmentSampleOldBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mForegroundAppPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingForegroundAppPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mForegroundAppCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingForegroundAppCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBlockLightSensorInGameMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBlockLightSensorInGameMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDualLightSensorSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDualLightSensorSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLimitMinLuxConfig:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTimeSlotsConfig:[I

    if-eqz v0, :cond_0

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLimitMinLuxConfig = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLimitMinLuxConfig:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTimeSlotsConfig = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTimeSlotsConfig:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 617
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->dump(Ljava/io/PrintWriter;)V

    .line 619
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 620
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    invoke-virtual {v0, p1}, Lcom/android/server/display/HysteresisLevels;->dump(Ljava/io/PrintWriter;)V

    .line 621
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    invoke-virtual {v0, p1}, Lcom/android/server/display/HysteresisLevels;->dump(Ljava/io/PrintWriter;)V

    .line 623
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mOpLightSensorController:Lcom/android/server/display/OpLightSensorController;

    if-eqz v0, :cond_1

    .line 624
    invoke-virtual {v0, p1}, Lcom/android/server/display/OpLightSensorController;->dump(Ljava/io/PrintWriter;)V

    .line 626
    :cond_1
    return-void
.end method

.method public getAutomaticScreenBrightness()F
    .locals 2

    .line 432
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v0, :cond_0

    .line 433
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 435
    :cond_0
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 436
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    mul-float/2addr v0, v1

    return v0

    .line 438
    :cond_1
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    return v0
.end method

.method public getAutomaticScreenBrightnessAdjustment()F
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getAutoBrightnessAdjustment()F

    move-result v0

    return v0
.end method

.method public getCurrentAmbientLux()F
    .locals 1

    .line 1599
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    return v0
.end method

.method public getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public hasUserDataPoints()Z
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->hasUserDataPoints()Z

    move-result v0

    return v0
.end method

.method public hasValidAmbientLux()Z
    .locals 1

    .line 442
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    return v0
.end method

.method public isDefaultConfig()Z
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->isDefaultConfig()Z

    move-result v0

    return v0
.end method

.method public onSensorChanged(JF)V
    .locals 0
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .line 1587
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->handleLightSensorEvent(JF)V

    .line 1588
    return-void
.end method

.method public resetShortTermModel()V
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->clearUserDataPoints()V

    .line 540
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    .line 541
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    .line 542
    return-void
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
    .locals 1
    .param p1, "configuration"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 552
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 554
    const/4 v0, 0x1

    return v0

    .line 556
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setLoggingEnabled(Z)Z
    .locals 1
    .param p1, "loggingEnabled"    # Z

    .line 417
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_0

    .line 418
    const/4 v0, 0x0

    return v0

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->setLoggingEnabled(Z)Z

    .line 421
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mOpAmbientLuxDetecter:Lcom/android/server/display/OpAmbientLuxDetecter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/OpAmbientLuxDetecter;->setLoggingEnabled(Z)Z

    .line 422
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    .line 424
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mOpLightSensorController:Lcom/android/server/display/OpLightSensorController;

    if-eqz v0, :cond_1

    .line 425
    invoke-virtual {v0, p1}, Lcom/android/server/display/OpLightSensorController;->setLoggingEnabled(Z)Z

    .line 428
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public setTorchModeEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1591
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDualLightSensorSupport:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mOpLightSensorController:Lcom/android/server/display/OpLightSensorController;

    if-eqz v0, :cond_0

    .line 1592
    invoke-virtual {v0, p1}, Lcom/android/server/display/OpLightSensorController;->setTorchModeEnabled(Z)V

    .line 1594
    :cond_0
    return-void
.end method
